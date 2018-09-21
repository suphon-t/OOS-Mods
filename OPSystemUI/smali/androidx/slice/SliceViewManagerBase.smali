.class public abstract Landroidx/slice/SliceViewManagerBase;
.super Landroidx/slice/SliceViewManager;
.source "SliceViewManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mListenerLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Landroidx/slice/SliceViewManager$SliceCallback;",
            ">;",
            "Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Landroidx/slice/SliceViewManager;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    .line 45
    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private getListener(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroidx/slice/SliceViewManager$SliceCallback;
    .param p3, "listener"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 76
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;>;"
    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v2, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-virtual {v2}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->stopListening()V

    .line 81
    :cond_0
    iget-object v2, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v1

    .line 83
    return-object p3

    .line 82
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroidx/slice/SliceViewManager$SliceCallback;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroidx/slice/SliceViewManagerBase$1;

    invoke-direct {v1, p0, v0}, Landroidx/slice/SliceViewManagerBase$1;-><init>(Landroidx/slice/SliceViewManagerBase;Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v1, p2}, Landroidx/slice/SliceViewManagerBase;->registerSliceCallback(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 57
    return-void
.end method

.method public registerSliceCallback(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/slice/SliceViewManager$SliceCallback;

    .line 62
    new-instance v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;-><init>(Landroidx/slice/SliceViewManagerBase;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroidx/slice/SliceViewManager$SliceCallback;)V

    invoke-direct {p0, p1, p3, v0}, Landroidx/slice/SliceViewManagerBase;->getListener(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->startListening()V

    .line 63
    return-void
.end method

.method public unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroidx/slice/SliceViewManager$SliceCallback;

    .line 67
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 69
    .local v1, "impl":Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->stopListening()V

    .line 70
    .end local v1    # "impl":Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
    :cond_0
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
