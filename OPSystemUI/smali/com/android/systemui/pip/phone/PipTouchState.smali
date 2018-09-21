.class public Lcom/android/systemui/pip/phone/PipTouchState;
.super Ljava/lang/Object;
.source "PipTouchState.java"


# static fields
.field static final DOUBLE_TAP_TIMEOUT:J = 0xc8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActivePointerId:I

.field private mAllowDraggingOffscreen:Z

.field private mAllowTouches:Z

.field private final mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

.field private final mDownDelta:Landroid/graphics/PointF;

.field private final mDownTouch:Landroid/graphics/PointF;

.field private mDownTouchTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsDoubleTap:Z

.field private mIsDragging:Z

.field private mIsUserInteracting:Z

.field private mIsWaitingForDoubleTap:Z

.field private final mLastDelta:Landroid/graphics/PointF;

.field private mLastDownTouchTime:J

.field private final mLastTouch:Landroid/graphics/PointF;

.field private mPreviouslyDragging:Z

.field private mStartedDragging:Z

.field private mUpTouchTime:J

.field private final mVelocity:Landroid/graphics/PointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "viewConfig"    # Landroid/view/ViewConfiguration;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "doubleTapTimeoutCallback"    # Ljava/lang/Runnable;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    .line 47
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 69
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 70
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 326
    :goto_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public allowDraggingOffscreen()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PipTouchHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mAllowTouches="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mActivePointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDownTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDownDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLastTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLastDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mVelocity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mIsUserInteracting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mIsDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mStartedDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mAllowDraggingOffscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method getDoubleTapTimeoutCallbackDelay()J
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    if-eqz v0, :cond_0

    .line 315
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xc8

    iget-wide v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    iget-wide v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 317
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDownTouchPosition()Landroid/graphics/PointF;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getLastTouchDelta()Landroid/graphics/PointF;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getLastTouchPosition()Landroid/graphics/PointF;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getVelocity()Landroid/graphics/PointF;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    return-object v0
.end method

.method public isDoubleTap()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    return v0
.end method

.method public isUserInteracting()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    return v0
.end method

.method public isWaitingForDoubleTap()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    const-wide/16 v4, 0xc8

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 117
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_0

    .line 118
    goto/16 :goto_3

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 123
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 124
    .local v0, "pointerIndex":I
    if-ne v0, v1, :cond_1

    .line 125
    const-string v1, "PipTouchHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid active pointer id on MOVE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto/16 :goto_3

    .line 129
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 130
    .local v1, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 131
    .local v4, "y":F
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v1, v6

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 132
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v1, v6

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 134
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v5}, Landroid/graphics/PointF;->length()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    .line 135
    .local v5, "hasMovedBeyondTap":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    if-nez v6, :cond_3

    .line 136
    if-eqz v5, :cond_4

    .line 137
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 138
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    goto :goto_1

    .line 141
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 143
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v2, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 144
    goto/16 :goto_3

    .line 171
    .end local v0    # "pointerIndex":I
    .end local v1    # "x":F
    .end local v4    # "y":F
    .end local v5    # "hasMovedBeyondTap":Z
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_5

    .line 172
    goto/16 :goto_3

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 178
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    .line 177
    invoke-virtual {v0, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 181
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 182
    .restart local v0    # "pointerIndex":I
    if-ne v0, v1, :cond_6

    .line 183
    const-string v1, "PipTouchHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid active pointer id on UP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    goto/16 :goto_3

    .line 187
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    .line 188
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 189
    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    .line 190
    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    if-nez v1, :cond_7

    iget-wide v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    iget-wide v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-gez v1, :cond_7

    move v2, v3

    nop

    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 196
    .end local v0    # "pointerIndex":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->recycleVelocityTracker()V

    goto/16 :goto_3

    .line 90
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    if-nez v0, :cond_8

    .line 91
    return-void

    .line 95
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->initOrResetVelocityTracker()V

    .line 97
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 103
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 104
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    if-nez v0, :cond_9

    iget-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    iget-wide v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    sub-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_9

    goto :goto_2

    :cond_9
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 109
    iget-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    .line 110
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 111
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 148
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_b

    .line 149
    goto :goto_3

    .line 153
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 156
    .restart local v0    # "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 157
    .local v1, "pointerId":I
    iget v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    if-ne v1, v4, :cond_d

    .line 159
    if-nez v0, :cond_c

    move v2, v3

    nop

    .line 160
    .local v2, "newPointerIndex":I
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 165
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 166
    .end local v2    # "newPointerIndex":I
    nop

    .line 200
    .end local v0    # "pointerIndex":I
    .end local v1    # "pointerId":I
    :cond_d
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 82
    return-void
.end method

.method public scheduleDoubleTapTimeoutCallback()V
    .locals 4

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->getDoubleTapTimeoutCallbackDelay()J

    move-result-wide v0

    .line 308
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method public setAllowTouches(Z)V
    .locals 1
    .param p1, "allowTouches"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    .line 271
    :cond_0
    return-void
.end method

.method public startedDragging()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    return v0
.end method
