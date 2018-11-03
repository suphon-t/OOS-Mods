.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFontConfig:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const-string v0, "SystemUIService"

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->getServices()[Lcom/android/systemui/SystemUI;

    move-result-object v0

    .line 93
    .local v0, "services":[Lcom/android/systemui/SystemUI;
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    array-length v2, p3

    if-nez v2, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    aget-object v2, p3, v1

    .line 104
    .local v2, "svc":Ljava/lang/String;
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 105
    .local v4, "ui":Lcom/android/systemui/SystemUI;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 104
    .end local v4    # "ui":Lcom/android/systemui/SystemUI;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "svc":Ljava/lang/String;
    :cond_2
    :goto_1
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 95
    .local v3, "ui":Lcom/android/systemui/SystemUI;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumping service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 94
    .end local v3    # "ui":Lcom/android/systemui/SystemUI;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_3
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_4

    .line 99
    const-string v1, "dumping plugins:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-class v1, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/plugins/PluginManagerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 111
    :cond_4
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 116
    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iget v1, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    if-eq v0, v1, :cond_0

    .line 117
    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    invoke-static {v0}, Landroid/graphics/Typeface;->changeFont(I)V

    .line 118
    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iput v0, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    .line 120
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 51
    const/4 v0, 0x1

    move v1, v0

    .line 53
    .local v1, "fontId":I
    :try_start_0
    const-string v2, "persist.sys.font"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SystemUIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Font]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget v2, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    if-eq v2, v1, :cond_0

    .line 59
    invoke-static {v1}, Landroid/graphics/Typeface;->changeFont(I)V

    .line 60
    iput v1, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    .line 65
    :cond_0
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "debug.crash_sysui"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69
    :cond_2
    :goto_1
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_3

    .line 71
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    .line 72
    const/16 v0, 0x3e8

    const/16 v2, 0x384

    invoke-static {v0, v2}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(II)V

    .line 73
    new-instance v0, Lcom/android/systemui/SystemUIService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIService$1;-><init>(Lcom/android/systemui/SystemUIService;)V

    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 81
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 73
    invoke-static {v0, v2}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    .line 83
    :cond_3
    return-void
.end method
