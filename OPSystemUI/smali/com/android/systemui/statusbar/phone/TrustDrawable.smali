.class public Lcom/android/systemui/statusbar/phone/TrustDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimating:Z

.field private mCurAlpha:I

.field private mCurAnimator:Landroid/animation/Animator;

.field private mCurInnerRadius:F

.field private final mInnerRadiusEnter:F

.field private final mInnerRadiusExit:F

.field private final mInnerRadiusVisibleMax:F

.field private final mInnerRadiusVisibleMin:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mState:I

.field private final mThickness:F

.field private mTrustManaged:Z

.field private final mVisibleAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    .line 252
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 261
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;-><init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f07066c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMin:F

    .line 75
    const v1, 0x7f07066b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMax:F

    .line 76
    const v1, 0x7f07066a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusExit:F

    .line 77
    const v1, 0x7f070669

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusEnter:F

    .line 78
    const v1, 0x7f07066d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mThickness:F

    .line 80
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusEnter:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeVisibleAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f040456

    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/TrustDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/TrustDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/TrustDrawable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->updateState(Z)V

    return-void
.end method

.method private configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "duration"    # J
    .param p4, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "repeating"    # Z

    .line 242
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    if-eqz p6, :cond_0

    .line 246
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 247
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 249
    :cond_0
    return-object p1
.end method

.method private makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;
    .locals 13
    .param p1, "startRadius"    # F
    .param p2, "endRadius"    # F
    .param p3, "startAlpha"    # I
    .param p4, "endAlpha"    # I
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "repeating"    # Z
    .param p9, "stateUpdateListener"    # Z

    move-object v7, p0

    .line 224
    const/4 v8, 0x2

    new-array v0, v8, [I

    const/4 v9, 0x0

    aput p3, v0, v9

    const/4 v10, 0x1

    aput p4, v0, v10

    .line 225
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 224
    move-object v0, v7

    move-wide/from16 v2, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 227
    .local v11, "alphaAnimator":Landroid/animation/ValueAnimator;
    new-array v0, v8, [F

    aput p1, v0, v9

    aput p2, v0, v10

    .line 228
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 227
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 231
    .local v0, "sizeAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 232
    .local v1, "set":Landroid/animation/AnimatorSet;
    new-array v2, v8, [Landroid/animation/Animator;

    aput-object v11, v2, v9

    aput-object v0, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 233
    if-eqz p9, :cond_0

    .line 234
    new-instance v3, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4}, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;Lcom/android/systemui/statusbar/phone/TrustDrawable$1;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 236
    :cond_0
    return-object v1
.end method

.method private makeEnterAnimator(FI)Landroid/animation/Animator;
    .locals 10
    .param p1, "radius"    # F
    .param p2, "alpha"    # I

    .line 210
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMax:F

    sget-object v7, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v4, 0x4c

    const-wide/16 v5, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private makeExitAnimator(FI)Landroid/animation/Animator;
    .locals 10
    .param p1, "radius"    # F
    .param p2, "alpha"    # I

    .line 216
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusExit:F

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private makeVisibleAnimator()Landroid/animation/Animator;
    .locals 10

    .line 203
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMax:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMin:F

    sget-object v7, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    const/16 v3, 0x4c

    const/16 v4, 0x26

    const-wide/16 v5, 0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private updateState(Z)V
    .locals 6
    .param p1, "allowTransientState"    # Z

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 155
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    .line 156
    .local v0, "nextState":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1

    .line 157
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    move v0, v1

    goto :goto_0

    .line 158
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-nez v1, :cond_2

    .line 159
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v1, v5, :cond_3

    .line 161
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-nez v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 162
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v1, v2, :cond_4

    .line 163
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-nez v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 164
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v1, v4, :cond_5

    .line 165
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 167
    :cond_5
    :goto_0
    if-nez p1, :cond_7

    .line 168
    if-ne v0, v5, :cond_6

    const/4 v0, 0x2

    .line 169
    :cond_6
    if-ne v0, v4, :cond_7

    const/4 v0, 0x0

    .line 172
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-eq v0, v1, :cond_e

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_8

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 178
    :cond_8
    if-nez v0, :cond_9

    .line 179
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    .line 180
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusEnter:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    goto :goto_1

    .line 181
    :cond_9
    if-ne v0, v5, :cond_a

    .line 182
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeEnterAnimator(FI)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 183
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    if-ne v1, v3, :cond_c

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_1

    .line 186
    :cond_a
    if-ne v0, v2, :cond_b

    .line 187
    const/16 v1, 0x4c

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    .line 188
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusVisibleMax:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    goto :goto_1

    .line 190
    :cond_b
    if-ne v0, v4, :cond_c

    .line 191
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->makeExitAnimator(FI)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 194
    :cond_c
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_d

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 198
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    .line 200
    :cond_e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 93
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlpha:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    .line 94
    .local v0, "newAlpha":I
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 98
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 119
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 104
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAlpha:I

    .line 105
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTrustManaged(Z)V
    .locals 2
    .param p1, "trustManaged"    # Z

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 146
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mTrustManaged:Z

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->updateState(Z)V

    .line 148
    return-void
.end method

.method public start()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    .line 125
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->updateState(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    .line 128
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mAnimating:Z

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    .line 137
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mState:I

    .line 138
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurAlpha:I

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mInnerRadiusEnter:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    .line 142
    :cond_1
    return-void
.end method
