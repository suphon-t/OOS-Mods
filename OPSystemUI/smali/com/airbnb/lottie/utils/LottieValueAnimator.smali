.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private frame:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field protected running:Z

.field private speed:F

.field private speedReversedForRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 21
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 23
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 24
    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 25
    const/high16 v1, 0x4f000000

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 27
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 30
    return-void
.end method

.method private getFrameDurationNs()F
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 120
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 122
    :cond_0
    const v0, 0x4e6e6b28    # 1.0E9f

    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private isReversed()Z
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private verifyFrame()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 280
    return-void

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Frame must be [%f,%f]. It is %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyCancel()V

    .line 232
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 233
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 127
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 128
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 129
    return-void
.end method

.method public doFrame(J)V
    .locals 10
    .param p1, "frameTimeNanos"    # J

    .line 80
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 85
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 86
    .local v0, "now":J
    iget-wide v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    sub-long v2, v0, v2

    .line 87
    .local v2, "timeSinceFrame":J
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrameDurationNs()F

    move-result v4

    .line 88
    .local v4, "frameDuration":F
    long-to-float v5, v2

    div-float/2addr v5, v4

    .line 90
    .local v5, "dFrames":F
    iget v6, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v7

    if-eqz v7, :cond_1

    neg-float v7, v5

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    add-float/2addr v6, v7

    iput v6, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 91
    iget v6, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->contains(FFF)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 92
    .local v6, "ended":Z
    iget v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v8

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v7

    iput v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 94
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 96
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 97
    if-eqz v6, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v7

    iput v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 100
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 101
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyEnd(Z)V

    goto :goto_3

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyRepeat()V

    .line 104
    iget v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 105
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 106
    iget-boolean v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    xor-int/lit8 v7, v7, 0x1

    iput-boolean v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 107
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    goto :goto_2

    .line 109
    :cond_3
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v7

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v7

    :goto_1
    iput v7, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 111
    :goto_2
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 115
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->verifyFrame()V

    .line 116
    return-void

    .line 82
    .end local v0    # "now":J
    .end local v2    # "timeSinceFrame":J
    .end local v4    # "frameDuration":F
    .end local v5    # "dFrames":F
    .end local v6    # "ended":Z
    :cond_6
    :goto_4
    return-void
.end method

.method public endAnimation()V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 209
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyEnd(Z)V

    .line 210
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 63
    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getFrame()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    return v0
.end method

.method public getMaxFrame()F
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    :goto_0
    return v0
.end method

.method public getMinFrame()F
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    :goto_0
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 185
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    return v0
.end method

.method public pauseAnimation()V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 215
    return-void
.end method

.method public playAnimation()V
    .locals 2

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 199
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyStart(Z)V

    .line 200
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(I)V

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 203
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 204
    return-void
.end method

.method protected postFrameCallback()V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 256
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 258
    :cond_0
    return-void
.end method

.method protected removeFrameCallback()V
    .locals 1

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 263
    return-void
.end method

.method protected removeFrameCallback(Z)V
    .locals 1
    .param p1, "stopRunning"    # Z

    .line 267
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 268
    if-eqz p1, :cond_0

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 271
    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 220
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 222
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 227
    :cond_1
    :goto_0
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 175
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "keepMinAndMaxFrames":Z
    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 136
    if-eqz v0, :cond_1

    .line 137
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 138
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 139
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    .line 137
    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(II)V

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(II)V

    .line 144
    :goto_1
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(I)V

    .line 145
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 146
    return-void
.end method

.method public setFrame(I)V
    .locals 3
    .param p1, "frame"    # I

    .line 149
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 153
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 154
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 155
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1
    .param p1, "maxFrame"    # I

    .line 162
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    float-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(II)V

    .line 163
    return-void
.end method

.method public setMinAndMaxFrames(II)V
    .locals 5
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .line 166
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    .line 167
    .local v0, "compositionMinFrame":F
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    .line 168
    .local v1, "compositionMaxFrame":F
    :goto_1
    int-to-float v2, p1

    invoke-static {v2, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 169
    int-to-float v2, p2

    invoke-static {v2, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 170
    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(I)V

    .line 171
    return-void
.end method

.method public setMinFrame(I)V
    .locals 1
    .param p1, "minFrame"    # I

    .line 158
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(II)V

    .line 159
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "value"    # I

    .line 189
    invoke-super {p0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->setRepeatMode(I)V

    .line 190
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 192
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 194
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 178
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 179
    return-void
.end method
