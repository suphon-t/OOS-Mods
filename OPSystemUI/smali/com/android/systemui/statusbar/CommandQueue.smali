.class public Lcom/android/systemui/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;,
        Lcom/android/systemui/statusbar/CommandQueue$H;,
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/CommandQueue$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDisable1:I

.field private mDisable2:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 219
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 220
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable1:I

    iget v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable2:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIZ)V

    .line 225
    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1b0000

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 535
    monitor-exit v0

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateCollapsePanels()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateCollapsePanels(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateExpandNotificationsPanelWithVelocity(I)V
    .locals 5
    .param p1, "velocity"    # I

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x650000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 292
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 3
    .param p1, "subPanel"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 321
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public appTransitionCancelled()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x140000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 488
    monitor-exit v0

    .line 489
    return-void

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public appTransitionFinished()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1f0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 506
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public appTransitionPending()V
    .locals 1

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(Z)V

    .line 477
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 4
    .param p1, "forced"    # Z

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x130000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 482
    monitor-exit v0

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public appTransitionStarting(JJ)V
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .line 492
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    .line 493
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x150000

    const/4 v3, 0x0

    .line 498
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 497
    invoke-virtual {v1, v2, p5, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 499
    monitor-exit v0

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelPreloadRecentApps()V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 434
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clickQsTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1d0000

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 549
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable(II)V
    .locals 1
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIZ)V

    .line 270
    return-void
.end method

.method public disable(IIZ)V
    .locals 4
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable1:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable2:I

    if-eq v1, p2, :cond_1

    .line 250
    :cond_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "CommandQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable1:I

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable2:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable1:I

    .line 255
    iput p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable2:I

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 258
    .local v1, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 261
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 265
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 442
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleSystemKey(I)V
    .locals 4
    .param p1, "key"    # I

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x210000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideFingerprintDialog()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x2b0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 673
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideRecentApps(ZZ)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xe0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 370
    const/4 v3, 0x0

    .line 369
    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyNavBarColorChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x640000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 682
    monitor-exit v0

    .line 683
    return-void

    .line 682
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAuthenticatedFailed()V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x690000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 644
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 4
    .param p1, "source"    # I

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x180000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 528
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFingerprintAcquired(II)V
    .locals 3
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x670000

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 630
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFingerprintAuthenticated()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x280000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 652
    monitor-exit v0

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFingerprintEnrollResult()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x680000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 637
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x2a0000

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 666
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x290000

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 659
    monitor-exit v0

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProposedRotationChanged(IZ)V
    .locals 4
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x260000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 611
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preloadRecentApps()V
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 427
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recomputeDisableFlags(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable1:I

    iget v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable2:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIZ)V

    .line 276
    monitor-exit v0

    .line 278
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1c0000

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 542
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x10000

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 243
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendGestureMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onGestureMotionEvent(Landroid/view/MotionEvent;)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x10000

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 353
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "showImeSwitcherKey"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 355
    .end local v1    # "m":Landroid/os/Message;
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 330
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 331
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 332
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 333
    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 334
    iput-object p5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 335
    iput-object p6, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 336
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x60000

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 337
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    monitor-exit v0

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 3
    .param p1, "hidesStatusBar"    # Z

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x250000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 587
    return-void
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 465
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showAssistDisclosure()V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x160000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 513
    monitor-exit v0

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 618
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 619
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 620
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x270000

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 622
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    monitor-exit v0

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showGlobalActionsMenu()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x220000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 579
    monitor-exit v0

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showPictureInPictureMenu()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1a0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 4
    .param p1, "entering"    # Z

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x2d0000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 563
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showPinningEscapeToast()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x2e0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 570
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xd0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showScreenPinningRequest(I)V
    .locals 5
    .param p1, "taskId"    # I

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x120000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isReboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x240000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 595
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 3
    .param p1, "batteryLevel"    # I

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2c0000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 603
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x170000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 520
    monitor-exit v0

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x190000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public togglePanel()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x230000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 314
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toggleRecentApps()V
    .locals 5

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 386
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 387
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 388
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toggleRecentAppsWithGesture(IIFF)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "alpha"    # F

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x660000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 398
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 399
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 400
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 401
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 403
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 404
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 405
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 406
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toggleSplitScreen()V
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1e0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 379
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public topAppWindowChanged(Z)V
    .locals 5
    .param p1, "menuVisible"    # Z

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x70000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 345
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
