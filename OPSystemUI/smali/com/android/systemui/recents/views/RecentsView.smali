.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

.field private mBackgroundScrimAnimator:Landroid/animation/ValueAnimator;

.field private mBusynessFactor:F

.field private mDividerSize:I

.field private mEmptyView:Landroid/widget/TextView;

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

.field private mStackActionButton:Landroid/widget/TextView;

.field private final mStackButtonShadowColor:I

.field private final mStackButtonShadowDistance:Landroid/graphics/PointF;

.field private final mStackButtonShadowRadius:F

.field mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionComposer;

.field private final mUpdateBackgroundScrimAlpha:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 142
    new-instance v0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$6rfoH9yP_J2fW6JDlOW4RINdzy4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$6rfoH9yP_J2fW6JDlOW4RINdzy4;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mUpdateBackgroundScrimAlpha:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setWillNotDraw(Z)V

    .line 169
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 170
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v2, Lcom/android/systemui/recents/views/RecentsTransitionComposer;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionComposer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionComposer;

    .line 172
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    .line 173
    new-instance v2, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    .line 174
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 175
    new-instance v2, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-direct {v2, p1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 176
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 179
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0d0199

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 180
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 182
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 185
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v3, :cond_1

    .line 187
    const v3, 0x7f0d019c

    goto :goto_0

    .line 188
    :cond_1
    const v3, 0x7f0d019f

    .line 185
    :goto_0
    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackButtonShadowRadius:F

    .line 192
    new-instance v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackButtonShadowDistance:Landroid/graphics/PointF;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackButtonShadowColor:I

    .line 195
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->reevaluateStyles()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionComposer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionComposer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/RecentsView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private animateBackgroundScrim(FI)V
    .locals 5
    .param p1, "alpha"    # F
    .param p2, "duration"    # I

    .line 879
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 881
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->getAlpha()I

    move-result v0

    .line 882
    .local v0, "fromAlpha":I
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 883
    .local v1, "toAlpha":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/ValueAnimator;

    .line 884
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/ValueAnimator;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 885
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/ValueAnimator;

    if-le v1, v0, :cond_0

    .line 886
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 887
    :cond_0
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 885
    :goto_0
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 888
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mUpdateBackgroundScrimAlpha:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 889
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 890
    return-void
.end method

.method private animateEmptyView(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 807
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    .line 808
    .local v0, "start":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 809
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 810
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x96

    .line 811
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 812
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 813
    if-eqz p1, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 814
    if-eqz p1, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 816
    .local v1, "animator":Landroid/view/ViewPropertyAnimator;
    if-eqz p2, :cond_4

    .line 817
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 818
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 820
    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 821
    return-void
.end method

.method private getOpaqueScrimAlpha()F
    .locals 5

    .line 871
    iget v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBusynessFactor:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x3f333333    # 0.7f

    invoke-static {v1, v2, v3, v4, v0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method private getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .line 664
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v0

    .line 665
    .local v0, "location":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 666
    .local v1, "viewX":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 667
    .local v2, "viewY":I
    new-instance v3, Landroid/graphics/Rect;

    int-to-float v4, v1

    .line 668
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v2

    .line 669
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 667
    return-object v3
.end method

.method private hideStackActionButton(IZ)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .line 770
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 771
    .local v0, "postAnimationTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 772
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    .line 773
    return-void
.end method

.method private hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 3
    .param p1, "duration"    # I
    .param p2, "translate"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 780
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 781
    if-eqz p2, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 783
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v2, -0x41800000    # -0.25f

    :goto_0
    mul-float/2addr v1, v2

    .line 782
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 786
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 787
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 788
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$5;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 789
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 797
    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 799
    :cond_2
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/recents/views/RecentsView;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 146
    return-void
.end method

.method public static synthetic lambda$onBusEvent$1(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .line 619
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 624
    return-void
.end method

.method public static synthetic lambda$startTaskActivity$2(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "succeeded"    # Ljava/lang/Boolean;

    .line 1030
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, "taskIndexFromFront":I
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v2

    .line 1034
    .local v2, "taskIndex":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 1035
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 1037
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v3, v0}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1038
    .end local v0    # "taskIndexFromFront":I
    .end local v2    # "taskIndex":I
    goto :goto_0

    .line 1039
    :cond_1
    const-string v0, "RecentsView"

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f110540

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    if-eqz p3, :cond_2

    .line 1043
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1047
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1049
    :goto_0
    return-void
.end method

.method private showStackActionButton(IZ)V
    .locals 4
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .line 738
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 739
    .local v0, "postAnimationTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 740
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 742
    if-eqz p2, :cond_1

    .line 743
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 744
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, -0x41800000    # -0.25f

    :goto_0
    mul-float/2addr v2, v3

    .line 743
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_1

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 748
    :goto_1
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 763
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    .line 764
    return-void
.end method

.method private startTaskActivity(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;II)V
    .locals 7
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "transitionFuture"    # Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    .param p6, "windowingMode"    # I
    .param p7, "activityType"    # I

    .line 1028
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    new-instance v5, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    .line 1049
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 1028
    move-object v2, p4

    move v3, p6

    move v4, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V

    .line 1050
    if-eqz p5, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/recents/views/-$$Lambda$2_yYbS189Yb53TwKAnkQBhUWOR4;

    invoke-direct {v1, p5}, Lcom/android/systemui/recents/views/-$$Lambda$2_yYbS189Yb53TwKAnkQBhUWOR4;-><init>(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1053
    :cond_0
    return-void
.end method

.method private updateBusyness()Z
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    .line 303
    .local v0, "taskCount":I
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    .line 305
    .local v1, "busyness":F
    iget v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBusynessFactor:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    .line 306
    const/4 v2, 0x0

    return v2

    .line 308
    :cond_0
    iput v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mBusynessFactor:F

    .line 309
    const/4 v2, 0x1

    return v2
.end method

.method private updateVisibleDockRegions([Lcom/android/systemui/recents/views/DockState;ZIIZZ)V
    .locals 21
    .param p1, "newDockStates"    # [Lcom/android/systemui/recents/views/DockState;
    .param p2, "isDefaultDockState"    # Z
    .param p3, "overrideAreaAlpha"    # I
    .param p4, "overrideHintAlpha"    # I
    .param p5, "animateAlpha"    # Z
    .param p6, "animateBounds"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 829
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v1, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v2

    .line 831
    .local v2, "newDockStatesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/views/DockState;>;"
    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v3

    .line 832
    .local v3, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/DockState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 833
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/DockState;

    .line 834
    .local v5, "dockState":Lcom/android/systemui/recents/views/DockState;
    iget-object v13, v5, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    .line 835
    .local v13, "viewState":Lcom/android/systemui/recents/views/DockState$ViewState;
    if-eqz v1, :cond_5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 837
    move-object/from16 v20, v13

    goto/16 :goto_4

    .line 841
    :cond_0
    const/4 v6, -0x1

    move/from16 v12, p3

    if-eq v12, v6, :cond_1

    .line 842
    nop

    .line 843
    move v14, v12

    goto :goto_1

    :cond_1
    iget v7, v13, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaAlpha:I

    move v14, v7

    .line 844
    .local v14, "areaAlpha":I
    :goto_1
    move/from16 v11, p4

    if-eq v11, v6, :cond_2

    .line 845
    nop

    .line 846
    move v15, v11

    goto :goto_2

    :cond_2
    iget v6, v13, Lcom/android/systemui/recents/views/DockState$ViewState;->hintTextAlpha:I

    move v15, v6

    .line 847
    .local v15, "hintAlpha":I
    :goto_2
    if-eqz p2, :cond_3

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/recents/views/DockState;->getPreDockedBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_3

    .line 850
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v8

    iget v9, v0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    iget-object v10, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 850
    move-object v6, v5

    move-object/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/recents/views/DockState;->getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v6

    .line 852
    .local v6, "bounds":Landroid/graphics/Rect;
    :goto_3
    iget-object v7, v13, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v7

    if-eq v7, v0, :cond_4

    .line 853
    iget-object v7, v13, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 854
    iget-object v7, v13, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 856
    :cond_4
    const/16 v16, 0xfa

    sget-object v17, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v12, v13

    move-object/from16 v20, v13

    move-object v13, v6

    .end local v13    # "viewState":Lcom/android/systemui/recents/views/DockState$ViewState;
    .local v20, "viewState":Lcom/android/systemui/recents/views/DockState$ViewState;
    move/from16 v18, p5

    move/from16 v19, p6

    invoke-virtual/range {v12 .. v19}, Lcom/android/systemui/recents/views/DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    .end local v5    # "dockState":Lcom/android/systemui/recents/views/DockState;
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v14    # "areaAlpha":I
    .end local v15    # "hintAlpha":I
    .end local v20    # "viewState":Lcom/android/systemui/recents/views/DockState$ViewState;
    goto :goto_5

    .line 837
    .restart local v5    # "dockState":Lcom/android/systemui/recents/views/DockState;
    .restart local v13    # "viewState":Lcom/android/systemui/recents/views/DockState$ViewState;
    :cond_5
    move-object/from16 v20, v13

    .end local v13    # "viewState":Lcom/android/systemui/recents/views/DockState$ViewState;
    .restart local v20    # "viewState":Lcom/android/systemui/recents/views/DockState$ViewState;
    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfa

    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object/from16 v6, v20

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/recents/views/DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    .line 832
    .end local v5    # "dockState":Lcom/android/systemui/recents/views/DockState;
    .end local v20    # "viewState":Lcom/android/systemui/recents/views/DockState$ViewState;
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 861
    .end local v4    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "RecentsView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    const-string v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_0

    const-string v2, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "N"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    const-string v2, " insets="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    const-string v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1071
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1072
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1074
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v2, :cond_2

    .line 1075
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1077
    :cond_2
    return-void
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getStackActionButton()Landroid/view/View;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    return-object v0
.end method

.method getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;
    .locals 7

    .line 896
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 897
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackActionButtonRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 899
    .local v0, "actionButtonRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v1, :cond_0

    .line 900
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 901
    .local v1, "windowRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 902
    .local v2, "spaceLeft":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 903
    .local v3, "left":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 904
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 905
    .end local v1    # "windowRect":Landroid/graphics/Rect;
    .end local v2    # "spaceLeft":I
    .local v4, "top":I
    goto :goto_1

    .line 906
    .end local v3    # "left":I
    .end local v4    # "top":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 907
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 909
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 908
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 909
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    move v3, v1

    .line 910
    .restart local v3    # "left":I
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 911
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    .restart local v4    # "top":I
    :goto_1
    move v1, v4

    .line 913
    .end local v4    # "top":I
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 914
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 913
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 915
    return-object v0
.end method

.method public hideEmptyView()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->bringToFront()V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 389
    return-void
.end method

.method public launchFocusedTask(I)Z
    .locals 6
    .param p1, "logEvent"    # I

    .line 335
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 337
    .local v0, "task":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v0, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 339
    .local v2, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v0, v5, v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;Z)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 343
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-static {v1, p1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 345
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 348
    .end local v0    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v2    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return v1
.end method

.method public launchPreviousTask()Z
    .locals 7

    .line 353
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/component/ExpandPipEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/component/ExpandPipEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 356
    return v1

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 361
    .local v0, "task":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v0, :cond_1

    .line 362
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 363
    .local v3, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v0, v6, v2}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 364
    return v1

    .line 367
    .end local v0    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v3    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return v2
.end method

.method public launchTaskFromRecents(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZII)V
    .locals 17
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p5, "screenPinningRequested"    # Z
    .param p6, "windowingMode"    # I
    .param p7, "activityType"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 931
    if-eqz v11, :cond_0

    .line 935
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 936
    .local v13, "windowRect":Landroid/graphics/Rect;
    new-instance v14, Lcom/android/systemui/recents/views/RecentsView$6;

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/views/TaskStackView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v0, v14

    move-object v1, v8

    move-object v3, v9

    move-object v4, v10

    move/from16 v5, p6

    move/from16 v6, p7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsView$6;-><init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/os/Handler;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IILandroid/graphics/Rect;)V

    .line 943
    .local v0, "transitionFuture":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$7;

    invoke-direct {v1, v8, v9, v10, v12}, Lcom/android/systemui/recents/views/RecentsView$7;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    .line 973
    .end local v13    # "windowRect":Landroid/graphics/Rect;
    .local v1, "animStartedListener":Ljava/lang/Runnable;
    nop

    .line 976
    .end local v0    # "transitionFuture":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    .local v13, "transitionFuture":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    :goto_0
    move-object v13, v0

    goto :goto_1

    .line 975
    .end local v1    # "animStartedListener":Ljava/lang/Runnable;
    .end local v13    # "transitionFuture":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    :cond_0
    const/4 v0, 0x0

    .line 976
    .restart local v0    # "transitionFuture":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$8;

    invoke-direct {v1, v8, v9, v10}, Lcom/android/systemui/recents/views/RecentsView$8;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;)V

    goto :goto_0

    .end local v0    # "transitionFuture":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    .restart local v1    # "animStartedListener":Ljava/lang/Runnable;
    .restart local v13    # "transitionFuture":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    :goto_1
    move-object v14, v1

    .line 1000
    .end local v1    # "animStartedListener":Ljava/lang/Runnable;
    .local v14, "animStartedListener":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1001
    iget-object v0, v8, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    .line 1002
    if-eqz v13, :cond_1

    .line 1001
    move-object v3, v13

    goto :goto_2

    .line 1002
    :cond_1
    const/4 v3, 0x0

    .line 1001
    :goto_2
    invoke-static {v0, v1, v2, v3, v14}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->createAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;

    move-result-object v15

    .line 1004
    .local v15, "opts":Landroid/app/ActivityOptions;
    if-nez v11, :cond_2

    .line 1007
    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v11

    move-object v4, v15

    move-object v5, v13

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsView;->startTaskActivity(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;II)V

    goto :goto_3

    .line 1010
    :cond_2
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Z)V

    move-object v7, v0

    .line 1012
    .local v7, "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1013
    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v11

    move-object v4, v15

    move-object v5, v13

    move/from16 v6, p6

    move-object/from16 v16, v7

    move/from16 v7, p7

    .end local v7    # "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
    .local v16, "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsView;->startTaskActivity(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;II)V

    .line 1016
    .end local v16    # "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
    :goto_3
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 503
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 406
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 407
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 408
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 409
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .line 549
    const/16 v0, 0xc8

    .line 551
    .local v0, "taskViewExitToHomeDuration":I
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 552
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 554
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v1, :cond_0

    .line 555
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateEmptyView(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 557
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .line 698
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 699
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getOpaqueScrimAlpha()F

    move-result v1

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 704
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    .line 723
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 724
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    iget v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetWindowingMode:I

    iget v7, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetActivityType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsView;->launchTaskFromRecents(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZII)V

    .line 543
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 546
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .line 727
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 728
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowEmptyViewEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowEmptyViewEvent;

    .line 731
    const v0, 0x7f11053b

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    .line 732
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    .line 719
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;->translate:Z

    const/16 v1, 0x86

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->showStackActionButton(IZ)V

    .line 720
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .line 707
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 708
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .line 711
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 712
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 716
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 680
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 682
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 688
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    goto :goto_0

    .line 690
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 691
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 692
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v3

    iget v4, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    .line 694
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 695
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    .line 673
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 674
    iget v0, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;->distanceFromTop:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 676
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    .line 576
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/views/DockState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v0, Lcom/android/systemui/recents/views/DockState;

    .line 584
    .local v0, "dockState":Lcom/android/systemui/recents/views/DockState;
    const/4 v1, 0x1

    new-array v3, v1, [Lcom/android/systemui/recents/views/DockState;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/views/DockState;ZIIZZ)V

    .end local v0    # "dockState":Lcom/android/systemui/recents/views/DockState;
    goto :goto_1

    .line 577
    :cond_1
    :goto_0
    nop

    .line 578
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/views/DockState;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->NONE:Lcom/android/systemui/recents/views/DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaAlpha:I

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->NONE:Lcom/android/systemui/recents/views/DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    iget v5, v0, Lcom/android/systemui/recents/views/DockState$ViewState;->hintTextAlpha:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 577
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/views/DockState;ZIIZZ)V

    .line 588
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 589
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 599
    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .line 659
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/views/DockState;ZIIZZ)V

    .line 661
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .line 603
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/views/DockState;

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v0, Lcom/android/systemui/recents/views/DockState;

    .line 607
    .local v0, "dockState":Lcom/android/systemui/recents/views/DockState;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/views/DockState;ZIIZZ)V

    .line 612
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 614
    iget v1, v0, Lcom/android/systemui/recents/views/DockState;->createMode:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 616
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    new-instance v3, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$RRL6yVNHxRLA7npjCgaGmNF62Mc;

    .local v3, "animStartedListener":Ljava/lang/Runnable;
    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$RRL6yVNHxRLA7npjCgaGmNF62Mc;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    .line 625
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v4

    .line 626
    .local v4, "taskRect":Landroid/graphics/Rect;
    new-instance v5, Lcom/android/systemui/recents/views/RecentsView$2;

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, p0, v6, p1, v4}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/os/Handler;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;Landroid/graphics/Rect;)V

    .line 633
    .local v5, "future":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v6

    .line 634
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 633
    invoke-virtual {v6, v5, v3, v7, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;Z)V

    .line 635
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const/16 v6, 0x10e

    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 636
    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 635
    invoke-static {v2, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 637
    .end local v3    # "animStartedListener":Ljava/lang/Runnable;
    .end local v4    # "taskRect":Landroid/graphics/Rect;
    .end local v5    # "future":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    goto :goto_1

    .line 638
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;-><init>(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 641
    .end local v0    # "dockState":Lcom/android/systemui/recents/views/DockState;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :goto_1
    goto :goto_2

    .line 643
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/views/DockState;ZIIZZ)V

    .line 648
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x86

    .line 651
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 652
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 655
    :cond_3
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .line 560
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/views/DockState;

    move-result-object v2

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->NONE:Lcom/android/systemui/recents/views/DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaAlpha:I

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->NONE:Lcom/android/systemui/recents/views/DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    iget v5, v0, Lcom/android/systemui/recents/views/DockState$ViewState;->hintTextAlpha:I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/views/DockState;ZIIZZ)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 568
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 569
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 570
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 573
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 413
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 414
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 415
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 518
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v0

    .line 521
    .local v0, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/DockState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 522
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DockState;

    iget-object v2, v2, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/DockState$ViewState;->draw(Landroid/graphics/Canvas;)V

    .line 521
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 524
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 508
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 450
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 457
    .local v0, "leftRightInsets":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    .line 458
    .local v1, "topBottomInsets":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 459
    .local v3, "childWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 460
    .local v4, "childHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p2

    sub-int v6, p4, p2

    sub-int/2addr v6, v0

    sub-int/2addr v6, v3

    .line 461
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 462
    .local v5, "childLeft":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p3

    sub-int v7, p5, p3

    sub-int/2addr v7, v1

    sub-int/2addr v7, v4

    .line 463
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 464
    .local v6, "childTop":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int v8, v5, v3

    add-int v9, v6, v4

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 469
    .end local v0    # "leftRightInsets":I
    .end local v1    # "topBottomInsets":I
    .end local v3    # "childWidth":I
    .end local v4    # "childHeight":I
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setBounds(IIII)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 477
    .local v0, "buttonBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 480
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v1, :cond_3

    .line 481
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 484
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 485
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    if-eqz v2, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    goto :goto_0

    .line 488
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 491
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 492
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 493
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->animateEmptyView(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 496
    .end local v1    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 423
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 424
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 426
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/high16 v4, -0x80000000

    if-eq v2, v3, :cond_1

    .line 432
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 433
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 432
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackActionButtonRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 438
    .local v2, "buttonBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 439
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 440
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 438
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 442
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 443
    return-void
.end method

.method public onReload(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V
    .locals 7
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "isResumingFromVisible"    # Z

    .line 234
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 235
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 236
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 238
    .local v2, "isTaskStackEmpty":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-nez v5, :cond_1

    .line 239
    const/4 p2, 0x0

    .line 240
    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 241
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 242
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 246
    :cond_1
    if-nez p2, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 249
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/TaskStackView;->onReload(Z)V

    .line 250
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateBusyness()Z

    .line 253
    if-eqz p2, :cond_3

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getOpaqueScrimAlpha()F

    move-result v3

    const/16 v4, 0xc8

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    goto :goto_4

    .line 260
    :cond_3
    iget-boolean v4, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v4, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    .line 264
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v4, v3}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_3

    .line 262
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getOpaqueScrimAlpha()F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 266
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v4}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->getAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 268
    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 513
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reevaluateStyles()V
    .locals 9

    .line 201
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v1, 0x7f040456

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    .line 202
    .local v0, "textColor":I
    invoke-static {v0}, Landroid/graphics/Color;->luminance(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 204
    .local v1, "usingDarkText":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v6, v2, [[I

    new-array v7, v2, [I

    const v8, 0x101009e

    aput v8, v7, v3

    aput-object v7, v6, v3

    new-array v2, v2, [I

    aput v0, v2, v3

    invoke-direct {v5, v6, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    if-eqz v1, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackButtonShadowRadius:F

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackButtonShadowDistance:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackButtonShadowDistance:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackButtonShadowColor:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 221
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    const/16 v3, 0x2010

    nop

    .line 222
    :cond_3
    move v2, v3

    .line 224
    .local v2, "systemBarsStyle":I
    const/16 v3, 0x700

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 228
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 1057
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->cancelStackActionButtonClick()V

    .line 1059
    return-void
.end method

.method public setScrimColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 3
    .param p1, "scrimColors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p2, "animated"    # Z

    .line 398
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    .line 400
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 401
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 402
    return-void
.end method

.method public showEmptyView(I)V
    .locals 2
    .param p1, "msgResId"    # I

    .line 374
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 379
    return-void
.end method

.method public updateBackgroundScrim(Landroid/view/Window;Z)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "isInMultiWindow"    # Z

    .line 324
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mMultiWindowBackgroundScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :goto_0
    return-void
.end method

.method public updateScrimOpacity()V
    .locals 2

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateBusyness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getOpaqueScrimAlpha()F

    move-result v0

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 294
    :cond_0
    return-void
.end method

.method public updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "setStackViewTasks"    # Z

    .line 274
    if-eqz p2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hideEmptyView()V

    goto :goto_0

    .line 282
    :cond_1
    const v0, 0x7f11053b

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    .line 284
    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 528
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v0

    .line 529
    .local v0, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/DockState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 530
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DockState;

    iget-object v3, v3, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    iget-object v3, v3, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 531
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-ne v3, p1, :cond_0

    .line 532
    return v2

    .line 529
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    return v1
.end method
