.class public Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.super Ljava/lang/Object;
.source "ButtonDispatcher.java"


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAlpha:Ljava/lang/Float;

.field private final mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentView:Landroid/view/View;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mDelayTouchFeedback:Ljava/lang/Boolean;

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mId:I

.field private mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickable:Ljava/lang/Boolean;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mVertical:Z

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 50
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ButtonDispatcher$YQ5xchhAskLzgLUT3UrgvCxrRAQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ButtonDispatcher$YQ5xchhAskLzgLUT3UrgvCxrRAQ;-><init>(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;-><init>(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    .line 69
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    .line 70
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 59
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 151
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->abortCurrentGesture()V

    .line 151
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method addView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 94
    :cond_3
    instance-of v0, p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v0, :cond_7

    .line 95
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    .line 96
    .local v0, "button":Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setDarkIntensity(F)V

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_5

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setDelayTouchFeedback(Z)V

    .line 105
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setVertical(Z)V

    .line 107
    .end local v0    # "button":Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;
    :cond_7
    return-void
.end method

.method clear()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    return v0
.end method

.method public getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    return-object v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 3
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZ)V

    .line 160
    return-void
.end method

.method public setAlpha(FZ)V
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 163
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 167
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v2

    aput v2, v1, v0

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_1

    const-wide/16 v2, 0x96

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x64

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    goto :goto_3

    .line 175
    :cond_3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 177
    .local v1, "N":I
    nop

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_4
    :goto_3
    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .locals 1
    .param p1, "currentView"    # Landroid/view/View;

    .line 268
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 269
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .line 184
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 186
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setDarkIntensity(F)V

    .line 186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 3
    .param p1, "delay"    # Z

    .line 194
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 196
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setDelayTouchFeedback(Z)V

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 4
    .param p1, "drawable"    # Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 4
    .param p1, "isLongClickable"    # Z

    .line 220
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 222
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 206
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 4
    .param p1, "hoverListener"    # Landroid/view/View$OnHoverListener;

    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 238
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 4
    .param p1, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 228
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 230
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 4
    .param p1, "touchListener"    # Landroid/view/View$OnTouchListener;

    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 214
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 4
    .param p1, "vertical"    # Z

    .line 272
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 274
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 276
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v3, :cond_0

    .line 277
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    invoke-interface {v3, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setVertical(Z)V

    .line 274
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 143
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
