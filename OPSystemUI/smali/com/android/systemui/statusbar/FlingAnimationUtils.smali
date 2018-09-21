.class public Lcom/android/systemui/statusbar/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    }
.end annotation


# instance fields
.field private mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

.field private mCachedStartGradient:F

.field private mCachedVelocityFactor:F

.field private mHighVelocityPxPerSecond:F

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mLinearOutSlowInX2:F

.field private mMaxLengthSeconds:F

.field private mMinVelocityPxPerSecond:F

.field private final mSpeedUpFactor:F

.field private final mY2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "maxLengthSeconds"    # F

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "maxLengthSeconds"    # F
    .param p3, "speedUpFactor"    # F

    .line 66
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFF)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "maxLengthSeconds"    # F
    .param p3, "speedUpFactor"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;-><init>(Lcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    .line 52
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    .line 53
    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 80
    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    .line 81
    iput p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    .line 82
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 83
    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f2e147b    # 0.68f

    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    goto :goto_0

    .line 87
    :cond_0
    iput p4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    .line 89
    :goto_0
    iput p5, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    .line 91
    const/high16 v0, 0x437a0000    # 250.0f

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 93
    const v0, 0x453b8000    # 3000.0f

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    .line 95
    return-void
.end method

.method private calculateLinearOutFasterInY2(F)F
    .locals 4
    .param p1, "velocity"    # F

    .line 289
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 291
    .local v0, "t":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 292
    sub-float/2addr v1, v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .locals 10
    .param p1, "currValue"    # F
    .param p2, "endValue"    # F
    .param p3, "velocity"    # F
    .param p4, "maxDistance"    # F

    .line 250
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v0, v0

    sub-float v2, p2, p1

    .line 251
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, p4

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 252
    .local v0, "maxLengthSeconds":F
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 253
    .local v1, "diff":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 254
    .local v2, "velAbs":F
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->calculateLinearOutFasterInY2(F)F

    move-result v3

    .line 256
    .local v3, "y2":F
    const/high16 v4, 0x3f000000    # 0.5f

    div-float v5, v3, v4

    .line 257
    .local v5, "startGradient":F
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v4, v6

    .line 258
    .local v4, "mLinearOutFasterIn":Landroid/view/animation/Interpolator;
    mul-float v6, v5, v1

    div-float/2addr v6, v2

    .line 259
    .local v6, "durationSeconds":F
    cmpg-float v7, v6, v0

    if-gtz v7, :cond_0

    .line 260
    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v4, v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 261
    :cond_0
    iget v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_1

    .line 265
    move v6, v0

    .line 266
    new-instance v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v2, v1, v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    .line 268
    .local v7, "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    new-instance v8, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    sget-object v9, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v8, v7, v4, v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 270
    .local v8, "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    iget-object v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v8, v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 271
    .end local v7    # "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    .end local v8    # "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    goto :goto_0

    .line 274
    :cond_1
    move v6, v0

    .line 275
    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v8, v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 277
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v6

    float-to-long v8, v8

    iput-wide v8, v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 278
    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    return-object v7
.end method

.method private getInterpolator(FF)Landroid/view/animation/Interpolator;
    .locals 5
    .param p1, "startGradient"    # F
    .param p2, "velocityFactor"    # F

    .line 196
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    .line 199
    .local v0, "speedup":F
    new-instance v1, Landroid/view/animation/PathInterpolator;

    mul-float v2, v0, p1

    iget v3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    iget v4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 202
    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    .line 203
    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 205
    .end local v0    # "speedup":F
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method private getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .locals 10
    .param p1, "currValue"    # F
    .param p2, "endValue"    # F
    .param p3, "velocity"    # F
    .param p4, "maxDistance"    # F

    .line 164
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v0, v0

    sub-float v2, p2, p1

    .line 165
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, p4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 166
    .local v0, "maxLengthSeconds":F
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 167
    .local v1, "diff":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 168
    .local v2, "velAbs":F
    iget v3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    .line 169
    goto :goto_0

    :cond_0
    const v3, 0x453b8000    # 3000.0f

    div-float v3, v2, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_0
    move v3, v4

    .line 170
    .local v3, "velocityFactor":F
    const/high16 v4, 0x3f400000    # 0.75f

    iget v5, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    iget v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    div-float/2addr v5, v6

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v4

    .line 172
    .local v4, "startGradient":F
    mul-float v5, v4, v1

    div-float/2addr v5, v2

    .line 173
    .local v5, "durationSeconds":F
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getInterpolator(FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 174
    .local v6, "slowInInterpolator":Landroid/view/animation/Interpolator;
    cmpg-float v7, v5, v0

    if-gtz v7, :cond_1

    .line 175
    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v6, v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 176
    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_2

    .line 179
    move v5, v0

    .line 180
    new-instance v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v2, v1, v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    .line 182
    .local v7, "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    new-instance v8, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    sget-object v9, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v8, v7, v6, v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 184
    .local v8, "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    iget-object v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v8, v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 185
    .end local v7    # "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    .end local v8    # "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    goto :goto_1

    .line 188
    :cond_2
    move v5, v0

    .line 189
    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v8, v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 191
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v5

    float-to-long v8, v8

    iput-wide v8, v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 192
    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    return-object v7
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;FFF)V
    .locals 7
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F

    .line 107
    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 108
    return-void
.end method

.method public apply(Landroid/animation/Animator;FFFF)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .line 137
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 139
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 140
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    return-void
.end method

.method public apply(Landroid/view/ViewPropertyAnimator;FFF)V
    .locals 7
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F

    .line 121
    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFFF)V

    .line 122
    return-void
.end method

.method public apply(Landroid/view/ViewPropertyAnimator;FFFF)V
    .locals 3
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .line 156
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 158
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 159
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 160
    return-void
.end method

.method public applyDismissing(Landroid/animation/Animator;FFFF)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .line 222
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 224
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 225
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    return-void
.end method

.method public getMinVelocityPxPerSecond()F
    .locals 1

    .line 299
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    return v0
.end method
