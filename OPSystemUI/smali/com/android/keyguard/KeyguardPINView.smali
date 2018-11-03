.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;
.source "KeyguardPINView.java"


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mFingerprintIcon:Landroid/view/View;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;

.field private mViews:[[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 58
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    .line 60
    const v8, 0x10c000f

    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v3, 0x7d

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3ee66666    # 0.45f

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 62
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v3, 0xbb

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 67
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    .line 69
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPINView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPINView;
    .param p1, "x1"    # Z

    .line 33
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFirstUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110341

    goto :goto_0

    :cond_0
    const v0, 0x7f11034f

    .line 151
    .local v0, "stringId":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->getMessageWithCount(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->setClipChildren(Z)V

    .line 231
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/KeyguardPINView;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 135
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .line 83
    const v0, 0x7f0a030d

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 164
    .local v0, "failedAttempts":I
    rem-int/lit8 v1, v0, 0x5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 165
    const v1, 0x7f11036d

    return v1

    .line 166
    :cond_0
    rem-int/lit8 v1, v0, 0x5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 167
    const v1, 0x7f11036e

    return v1

    .line 170
    :cond_1
    const v1, 0x7f11036c

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .line 88
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onFinishInflate()V

    .line 90
    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    .line 91
    const v0, 0x7f0a0370

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    .line 92
    const v0, 0x7f0a0371

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    .line 93
    const v0, 0x7f0a0372

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    .line 94
    const v0, 0x7f0a0373

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [[Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 102
    const v5, 0x7f0a01e4

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v7, v2, v4

    aput-object v3, v2, v6

    aput-object v3, v2, v5

    aput-object v2, v0, v6

    new-array v2, v1, [Landroid/view/View;

    .line 110
    const v7, 0x7f0a01cb

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a01cc

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    .line 111
    const v7, 0x7f0a01cd

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Landroid/view/View;

    .line 114
    const v7, 0x7f0a01ce

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a01cf

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    .line 115
    const v7, 0x7f0a01d0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Landroid/view/View;

    .line 118
    const v7, 0x7f0a01d1

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a01d2

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    .line 119
    const v7, 0x7f0a01d3

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v5

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v2, v1, [Landroid/view/View;

    .line 124
    const v7, 0x7f0a00ff

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a01ca

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    const v7, 0x7f0a01d4

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v1, v1, [Landroid/view/View;

    aput-object v3, v1, v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mEcaView:Landroid/view/View;

    aput-object v2, v1, v6

    aput-object v3, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 131
    const v0, 0x7f0a00af

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "cancelBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardPINView$32q9EwjCzWlJ6lNiw9pw0PSsPxs;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardPINView$32q9EwjCzWlJ6lNiw9pw0PSsPxs;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_0
    const v1, 0x7f0a015c

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mFingerprintIcon:Landroid/view/View;

    .line 143
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPINView;->displayDefaultSecurityMessage()V

    .line 145
    return-void
.end method

.method protected resetState()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->resetState()V

    .line 77
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPINView;->displayDefaultSecurityMessage()V

    .line 79
    return-void
.end method

.method public startAppearAnimation()V
    .locals 8

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    .line 176
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setAlpha(F)V

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 179
    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 178
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPINView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPINView$1;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 12
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    .line 194
    iget v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 196
    invoke-virtual {v0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 194
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 201
    .local v0, "disappearAnimationUtils":Lcom/android/settingslib/animation/DisappearAnimationUtils;
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPINView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPINView$2;-><init>(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mFingerprintIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPINView;->mFingerprintIcon:Landroid/view/View;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 215
    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getStartTranslation()F

    move-result v1

    neg-float v1, v1

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v1

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 217
    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    const/4 v11, 0x0

    .line 213
    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 221
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
