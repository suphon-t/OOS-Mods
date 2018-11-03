.class public interface abstract Lcom/android/systemui/util/wakelock/WakeLock;
.super Ljava/lang/Object;
.source "WakeLock.java"


# direct methods
.method public static createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .line 36
    invoke-static {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartialInner(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    return-object v0
.end method

.method public static createPartialInner(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .line 41
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public static synthetic lambda$wrapImpl$0(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "w"    # Lcom/android/systemui/util/wakelock/WakeLock;

    .line 49
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-interface {p1}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    .line 52
    nop

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    throw v0
.end method

.method public static wrap(Landroid/os/PowerManager$WakeLock;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1
    .param p0, "inner"    # Landroid/os/PowerManager$WakeLock;

    .line 57
    new-instance v0, Lcom/android/systemui/util/wakelock/WakeLock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/wakelock/WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-object v0
.end method

.method public static wrapImpl(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "w"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 46
    invoke-interface {p0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    .line 47
    new-instance v0, Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-object v0
.end method


# virtual methods
.method public abstract acquire()V
.end method

.method public abstract release()V
.end method

.method public abstract wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method
