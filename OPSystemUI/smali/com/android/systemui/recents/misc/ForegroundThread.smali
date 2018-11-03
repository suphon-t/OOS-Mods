.class public final Lcom/android/systemui/recents/misc/ForegroundThread;
.super Landroid/os/HandlerThread;
.source "ForegroundThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    const-string v0, "recents.fg"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .line 35
    sget-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/systemui/recents/misc/ForegroundThread;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ForegroundThread;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 37
    sget-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ForegroundThread;->start()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ForegroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sHandler:Landroid/os/Handler;

    .line 40
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/systemui/recents/misc/ForegroundThread;
    .locals 2

    .line 43
    const-class v0, Lcom/android/systemui/recents/misc/ForegroundThread;

    monitor-enter v0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->ensureThreadLocked()V

    .line 45
    sget-object v1, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 50
    const-class v0, Lcom/android/systemui/recents/misc/ForegroundThread;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->ensureThreadLocked()V

    .line 52
    sget-object v1, Lcom/android/systemui/recents/misc/ForegroundThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
