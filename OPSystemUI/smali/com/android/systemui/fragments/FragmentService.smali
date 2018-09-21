.class public Lcom/android/systemui/fragments/FragmentService;
.super Ljava/lang/Object;
.source "FragmentService.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHosts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/systemui/fragments/FragmentService$FragmentHostState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fragments/FragmentService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fragments/FragmentService;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fragments/FragmentService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fragments/FragmentService;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public destroyAll()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 61
    .local v1, "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->access$000(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->destroy()V

    .line 62
    .end local v1    # "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 74
    const-string v0, "Dumping fragments:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 76
    .local v1, "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->access$000(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 77
    .end local v1    # "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "root":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 52
    .local v1, "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    if-nez v1, :cond_0

    .line 53
    new-instance v2, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;-><init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V

    move-object v1, v2

    .line 54
    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 68
    .local v1, "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    invoke-virtual {v1, p1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->sendConfigurationChange(Landroid/content/res/Configuration;)V

    .line 69
    .end local v1    # "state":Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
