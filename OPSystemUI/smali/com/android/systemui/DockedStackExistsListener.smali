.class public Lcom/android/systemui/DockedStackExistsListener;
.super Ljava/lang/Object;
.source "DockedStackExistsListener.java"


# static fields
.field private static mLastExists:Z

.field private static sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    .line 40
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/DockedStackExistsListener$1;

    invoke-direct {v1}, Lcom/android/systemui/DockedStackExistsListener$1;-><init>()V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DockedStackExistsListener"

    const-string v2, "Failed registering docked stack exists listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .line 31
    invoke-static {p0}, Lcom/android/systemui/DockedStackExistsListener;->onDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onDockedStackExistsChanged$0(ZLjava/lang/ref/WeakReference;)Z
    .locals 2
    .param p0, "exists"    # Z
    .param p1, "wf"    # Ljava/lang/ref/WeakReference;

    .line 80
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    .line 81
    .local v0, "l":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 82
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static onDockedStackExistsChanged(Z)V
    .locals 3
    .param p0, "exists"    # Z

    .line 77
    sput-boolean p0, Lcom/android/systemui/DockedStackExistsListener;->mLastExists:Z

    .line 78
    sget-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/-$$Lambda$DockedStackExistsListener$fsI9l50cYy8em3Xlw9NfoEH95Z8;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$DockedStackExistsListener$fsI9l50cYy8em3Xlw9NfoEH95Z8;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static register(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p0, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    sget-boolean v0, Lcom/android/systemui/DockedStackExistsListener;->mLastExists:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
