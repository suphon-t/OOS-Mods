.class public Lcom/android/systemui/statusbar/phone/SettingsButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "SettingsButton.java"


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mLongPressCallback:Ljava/lang/Runnable;

.field private mSlop:F

.field private mUpToSpeed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    new-instance v0, Lcom/android/systemui/statusbar/phone/SettingsButton$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton$3;-><init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mLongPressCallback:Ljava/lang/Runnable;

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SettingsButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelLongClick()V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 100
    :cond_0
    return-void
.end method

.method private cancelLongClick()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelAnimation()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method private startExitAnimation()V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mContext:Landroid/content/Context;

    .line 107
    const v2, 0x10c0002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/SettingsButton$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton$1;-><init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelLongClick()V

    .line 75
    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 78
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 79
    .local v1, "y":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    add-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    add-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelLongClick()V

    .end local v0    # "x":F
    .end local v1    # "y":F
    goto :goto_0

    .line 67
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->startExitAnimation()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelLongClick()V

    .line 72
    goto :goto_0

    .line 65
    :pswitch_3
    nop

    .line 85
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected startAccelSpin()V
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelAnimation()V

    .line 134
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10c0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SettingsButton$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton$2;-><init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 157
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method protected startContinuousSpin()V
    .locals 3

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelAnimation()V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->performHapticFeedback(I)Z

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    .line 163
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 168
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
