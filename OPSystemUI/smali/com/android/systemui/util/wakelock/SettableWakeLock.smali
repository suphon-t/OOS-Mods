.class public Lcom/android/systemui/util/wakelock/SettableWakeLock;
.super Ljava/lang/Object;
.source "SettableWakeLock.java"


# instance fields
.field private mAcquired:Z

.field private final mInner:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1
    .param p1, "inner"    # Lcom/android/systemui/util/wakelock/WakeLock;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "inner wakelock required"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized setAcquired(Z)V
    .locals 1
    .param p1, "acquired"    # Z

    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mAcquired:Z

    if-eq v0, p1, :cond_1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    .line 47
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    monitor-exit p0

    return-void

    .line 40
    .end local p1    # "acquired":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/util/wakelock/SettableWakeLock;
    throw p1
.end method
