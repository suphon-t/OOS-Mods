.class public Lcom/airbnb/lottie/LottieTask;
.super Ljava/lang/Object;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public EXECUTOR:Ljava/util/concurrent/Executor;

.field private final failureListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private volatile result:Lcom/airbnb/lottie/LottieResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final successListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final task:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private taskObserver:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<TT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .param p2, "runNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    nop

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->handler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 57
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->task:Ljava/util/concurrent/FutureTask;

    .line 59
    if-eqz p2, :cond_0

    .line 61
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask;->task:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->startTaskObserverIfNeeded()V

    .line 69
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieTask;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieTask;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->task:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/LottieTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 26
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieTask;->notifySuccessListeners(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/lottie/LottieTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieTask;->notifyFailureListeners(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;
    .param p1, "x1"    # Lcom/airbnb/lottie/LottieResult;

    .line 26
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieTask;->setResult(Lcom/airbnb/lottie/LottieResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/lottie/LottieTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieTask;

    .line 26
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->stopTaskObserverIfNeeded()V

    return-void
.end method

.method private notifyFailureListeners(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 160
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "LOTTIE"

    const-string v2, "Lottie encountered an error but no failure listener was added."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    return-void

    .line 166
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieListener;

    .line 167
    .local v2, "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 168
    .end local v2    # "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method private notifyListeners()V
    .locals 2

    .line 132
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/lottie/LottieTask$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieTask$1;-><init>(Lcom/airbnb/lottie/LottieTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method private notifySuccessListeners(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/LottieListener<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieListener;

    .line 153
    .local v2, "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 154
    .end local v2    # "l":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method private setResult(Lcom/airbnb/lottie/LottieResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-nez v0, :cond_0

    .line 75
    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 76
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->notifyListeners()V

    .line 77
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A task may only be set once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized startTaskObserverIfNeeded()V
    .locals 2

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    monitor-enter p0

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->taskObserverAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/LottieTask$2;

    const-string v1, "LottieTaskObserver"

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/LottieTask$2;-><init>(Lcom/airbnb/lottie/LottieTask;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->taskObserver:Ljava/lang/Thread;

    .line 199
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->taskObserver:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 200
    const-string v0, "Starting TaskObserver thread"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 177
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw v0
.end method

.method private declared-synchronized stopTaskObserverIfNeeded()V
    .locals 1

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    monitor-enter p0

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->taskObserverAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 208
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v0, :cond_2

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->taskObserver:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask;->taskObserver:Ljava/lang/Thread;

    .line 213
    const-string v0, "Stopping TaskObserver thread"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_2
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw v0
.end method

.method private taskObserverAlive()Z
    .locals 1

    .line 218
    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->taskObserver:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->taskObserver:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->startTaskObserverIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-object p0

    .line 109
    .end local p1    # "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw p1
.end method

.method public declared-synchronized addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "TT;>;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->startTaskObserverIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-object p0

    .line 83
    .end local p1    # "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw p1
.end method

.method public declared-synchronized removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "TT;>;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->stopTaskObserverIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-object p0

    .line 124
    .end local p1    # "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "TT;>;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    .local p1, "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieTask;->stopTaskObserverIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-object p0

    .line 98
    .end local p1    # "listener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<TT;>;"
    throw p1
.end method
