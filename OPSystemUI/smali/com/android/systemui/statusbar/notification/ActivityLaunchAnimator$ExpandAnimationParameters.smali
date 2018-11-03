.class public Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandAnimationParameters"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field linearProgress:F

.field parentStartClipTopAmount:I

.field right:I

.field startClipTopAmount:I

.field startPosition:[I

.field startTranslationZ:F

.field top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .line 286
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->bottom:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParentStartClipTopAmount()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->parentStartClipTopAmount:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 300
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->linearProgress:F

    return v0
.end method

.method public getProgress(JJ)F
    .locals 3
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .line 304
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->linearProgress:F

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v0, v1

    long-to-float v1, p1

    sub-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public getStartClipTopAmount()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startClipTopAmount:I

    return v0
.end method

.method public getStartTranslationZ()F
    .locals 1

    .line 317
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startTranslationZ:F

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->top:I

    return v0
.end method

.method public getTopChange()I
    .locals 5

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "clipTopAmountCompensation":I
    iget v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startClipTopAmount:I

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 293
    iget v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startClipTopAmount:I

    int-to-float v1, v1

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->linearProgress:F

    .line 294
    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 293
    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v0, v1

    .line 296
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->top:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startPosition:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getWidth()I
    .locals 2

    .line 282
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->right:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
