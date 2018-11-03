.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;
.implements Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/dreams/DreamService;",
        "Lcom/android/systemui/doze/DozeMachine$Service;",
        "Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/DozeServicePlugin;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

.field private mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "DozeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 43
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDebug(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0, p2}, Lcom/android/systemui/doze/DozeMachine;->dump(Ljava/io/PrintWriter;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 48
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setWindowless(Z)V

    .line 52
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 54
    return-void

    .line 56
    :cond_0
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/DozeServicePlugin;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 58
    new-instance v0, Lcom/android/systemui/doze/DozeFactory;

    invoke-direct {v0}, Lcom/android/systemui/doze/DozeFactory;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeFactory;->assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 63
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 67
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 69
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startDozing()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStarted()V

    .line 93
    :cond_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStopped()V

    .line 102
    :cond_0
    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/DozeServicePlugin;Landroid/content/Context;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/DozeServicePlugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DozeServicePlugin;->setDozeRequester(Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;)V

    .line 75
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/doze/DozeService;->onPluginConnected(Lcom/android/systemui/plugins/DozeServicePlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/DozeServicePlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/DozeServicePlugin;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStopped()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    .line 83
    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeService;->onPluginDisconnected(Lcom/android/systemui/plugins/DozeServicePlugin;)V

    return-void
.end method

.method public onRequestHideDoze()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onRequestShowDoze()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 123
    :cond_0
    return-void
.end method

.method public requestWakeUp()V
    .locals 4

    .line 114
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 115
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "com.android.systemui:NODOZE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 116
    return-void
.end method
