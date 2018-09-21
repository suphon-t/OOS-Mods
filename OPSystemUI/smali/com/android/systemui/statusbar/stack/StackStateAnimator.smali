.class public Lcom/android/systemui/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# static fields
.field public static final ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private mAnimatorSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private final mGoToFullShadeAppearingTranslation:I

.field private mHeadsUpAppearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpAppearHeightBottom:I

.field private mHeadsUpDisappearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPulsingAppearingTranslation:I

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mTmpLocation:[I

.field private final mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mTransientViewsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    nop

    .line 52
    invoke-static {}, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->getFractionUntilOvershoot()F

    move-result v0

    const v1, 0x44098000    # 550.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 2
    .param p1, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 73
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpLocation:[I

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 91
    nop

    .line 92
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 94
    nop

    .line 95
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070529

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mPulsingAppearingTranslation:I

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Z)V
    .locals 6
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p3, "wasAdded"    # Z

    .line 181
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 183
    iget v0, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 184
    .local v0, "longerDurationFactor":F
    float-to-double v1, v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const-wide/16 v2, 0x202

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v0

    float-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 188
    .end local v0    # "longerDurationFactor":F
    :cond_0
    return-void
.end method

.method private applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z
    .locals 2
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p3, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    return v1

    .line 200
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    return v1

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    return v1

    .line 212
    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 213
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_4
    :goto_0
    return v1
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J
    .locals 17
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 234
    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v3, :cond_0

    .line 235
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)J

    move-result-wide v3

    return-wide v3

    .line 237
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-wide v3, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->customDelay:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 238
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-wide v3, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->customDelay:J

    return-wide v3

    .line 240
    :cond_1
    const-wide/16 v3, 0x0

    .line 241
    .local v3, "minDelay":J
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 242
    .local v6, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    const-wide/16 v7, 0x50

    .line 243
    .local v7, "delayPerElement":J
    iget v9, v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v10, 0x2

    const/4 v11, 0x0

    packed-switch v9, :pswitch_data_0

    .end local v6    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v7    # "delayPerElement":J
    goto :goto_3

    .line 256
    .restart local v6    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .restart local v7    # "delayPerElement":J
    :pswitch_0
    const-wide/16 v7, 0x20

    .line 258
    :pswitch_1
    iget v9, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 259
    .local v9, "ownIndex":I
    iget-object v12, v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    if-nez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    move v12, v11

    .line 260
    .local v12, "noNextView":Z
    :goto_1
    if-eqz v12, :cond_3

    .line 261
    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v13

    goto :goto_2

    .line 262
    :cond_3
    iget-object v13, v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 263
    .local v13, "viewAfterChangingView":Landroid/view/View;
    :goto_2
    if-nez v13, :cond_4

    .line 268
    goto :goto_0

    .line 270
    :cond_4
    nop

    .line 271
    invoke-virtual {v2, v13}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v14

    iget v14, v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 272
    .local v14, "nextIndex":I
    if-lt v9, v14, :cond_5

    .line 274
    add-int/lit8 v9, v9, 0x1

    .line 276
    :cond_5
    sub-int v15, v9, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 277
    .local v15, "difference":I
    add-int/lit8 v0, v15, -0x1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 279
    .end local v15    # "difference":I
    .local v0, "difference":I
    int-to-long v10, v0

    mul-long/2addr v10, v7

    .line 280
    .local v10, "delay":J
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 281
    goto :goto_3

    .line 245
    .end local v0    # "difference":I
    .end local v9    # "ownIndex":I
    .end local v10    # "delay":J
    .end local v12    # "noNextView":Z
    .end local v13    # "viewAfterChangingView":Landroid/view/View;
    .end local v14    # "nextIndex":I
    :pswitch_2
    iget v0, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 246
    .local v0, "ownIndex":I
    iget-object v9, v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    .line 247
    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v9

    iget v9, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 248
    .local v9, "changingIndex":I
    sub-int v12, v0, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 249
    .local v12, "difference":I
    add-int/lit8 v13, v12, -0x1

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 251
    .end local v12    # "difference":I
    .local v11, "difference":I
    sub-int/2addr v10, v11

    int-to-long v12, v10

    mul-long/2addr v12, v7

    .line 252
    .local v12, "delay":J
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 253
    nop

    .line 286
    .end local v0    # "ownIndex":I
    .end local v6    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v7    # "delayPerElement":J
    .end local v9    # "changingIndex":I
    .end local v11    # "difference":I
    .end local v12    # "delay":J
    :goto_3
    nop

    .line 241
    move-object/from16 v0, p0

    goto :goto_0

    .line 287
    :cond_6
    return-wide v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)J
    .locals 12
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotGoneIndex()I

    move-result v0

    .line 292
    .local v0, "shelfIndex":I
    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    int-to-float v1, v1

    .line 293
    .local v1, "index":F
    const-wide/16 v2, 0x0

    .line 294
    .local v2, "result":J
    int-to-float v4, v0

    cmpl-float v4, v1, v4

    const/high16 v5, 0x42400000    # 48.0f

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    if-lez v4, :cond_0

    .line 295
    int-to-float v4, v0

    sub-float v4, v1, v4

    .line 296
    .local v4, "diff":F
    float-to-double v8, v4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 297
    mul-float v8, v4, v5

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    double-to-long v8, v8

    add-long/2addr v2, v8

    .line 298
    int-to-float v1, v0

    .line 300
    .end local v4    # "diff":F
    :cond_0
    float-to-double v8, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 301
    mul-float/2addr v5, v1

    float-to-long v4, v5

    add-long/2addr v2, v4

    .line 302
    return-wide v2
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I
    .locals 6
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 218
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 221
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 222
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 223
    goto :goto_1

    .line 225
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    iget v4, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    return v4

    .line 218
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    return-object v0

    .line 315
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    return-object v0
.end method

.method private initAnimationProperties(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 6
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p3, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v0

    .line 163
    .local v0, "wasAdded":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 164
    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Z)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .line 166
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    if-eqz v1, :cond_1

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 167
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 168
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 169
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 170
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 171
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 172
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->isDark()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 173
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 175
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .line 177
    :cond_1
    return-void
.end method

.method static synthetic lambda$processAnimationEvents$0(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p0, "changingView"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 480
    invoke-static {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void
.end method

.method private onAnimationFinished()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 344
    .local v1, "transientViewsToRemove":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v2

    .line 345
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 346
    .end local v1    # "transientViewsToRemove":Lcom/android/systemui/statusbar/ExpandableView;
    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 20
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    .local p1, "animationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    move-object/from16 v0, p0

    .line 359
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 360
    .local v3, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-object v4, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    .line 361
    .local v4, "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v5, :cond_2

    .line 365
    nop

    .line 366
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 367
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v5, :cond_0

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->gone:Z

    if-eqz v6, :cond_1

    .line 369
    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 372
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    goto/16 :goto_4

    :cond_2
    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 376
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 378
    goto :goto_0

    .line 383
    :cond_3
    iget-object v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 384
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v15

    .line 385
    .local v15, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    .line 387
    .local v14, "actualHeight":I
    const/high16 v5, -0x40800000    # -1.0f

    .line 388
    .local v5, "translationDirection":F
    if-eqz v15, :cond_5

    .line 389
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    .line 390
    .local v6, "ownPosition":F
    instance-of v7, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_4

    iget-object v7, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    instance-of v7, v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_4

    .line 392
    move-object v7, v4

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 394
    .local v7, "changingRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v8, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 396
    .local v8, "nextRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 397
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 398
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v9

    if-nez v9, :cond_4

    .line 401
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v6

    .line 406
    .end local v7    # "changingRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "nextRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4
    iget v7, v15, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v8, v14

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v6

    sub-float/2addr v7, v8

    mul-float/2addr v7, v9

    int-to-float v8, v14

    div-float/2addr v7, v8

    .line 409
    .end local v5    # "translationDirection":F
    .local v7, "translationDirection":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 412
    .end local v6    # "ownPosition":F
    .end local v7    # "translationDirection":F
    .local v16, "translationDirection":F
    :cond_5
    move/from16 v16, v5

    const-wide/16 v6, 0x1d0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;

    invoke-direct {v13, v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    const/16 v17, 0x0

    move-object v5, v4

    move/from16 v10, v16

    move/from16 v18, v14

    move-object/from16 v14, v17

    .end local v14    # "actualHeight":I
    .local v18, "actualHeight":I
    invoke-virtual/range {v5 .. v14}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    .line 420
    .end local v15    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v16    # "translationDirection":F
    .end local v18    # "actualHeight":I
    goto/16 :goto_4

    :cond_6
    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    .line 422
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_13

    .line 423
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 424
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 426
    :cond_7
    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v7, 0xd

    if-ne v5, v7, :cond_8

    .line 428
    iget-object v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 429
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 430
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto/16 :goto_4

    :cond_8
    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v7, 0x13

    const/4 v8, 0x0

    if-ne v5, v7, :cond_9

    .line 432
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 433
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 434
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iget v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v9, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mPulsingAppearingTranslation:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    iput v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 435
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iput v8, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 436
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 437
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    goto/16 :goto_4

    :cond_9
    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v7, 0x14

    if-ne v5, v7, :cond_a

    .line 439
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 440
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mPulsingAppearingTranslation:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 441
    iput v8, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 442
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    goto/16 :goto_4

    :cond_a
    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v7, 0xe

    if-ne v5, v7, :cond_c

    .line 445
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v11

    .line 446
    .local v11, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 447
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v5, :cond_b

    .line 448
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v6, v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    goto :goto_1

    .line 450
    :cond_b
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iput v8, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 451
    const-wide/16 v6, 0x0

    sget v5, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I

    int-to-long v8, v5

    const/4 v10, 0x1

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJZ)V

    .line 454
    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 456
    .end local v11    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    goto/16 :goto_4

    :cond_c
    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v7, 0xf

    const/16 v9, 0x10

    if-eq v5, v7, :cond_d

    iget v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-ne v5, v9, :cond_13

    .line 460
    :cond_d
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    const/4 v5, 0x0

    .line 464
    .local v5, "endRunnable":Ljava/lang/Runnable;
    iget v7, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v10, 0x0

    if-ne v7, v9, :cond_e

    .line 466
    nop

    .line 467
    const/16 v7, 0x78

    goto :goto_2

    :cond_e
    move v7, v10

    :goto_2
    move v15, v7

    .line 468
    .local v15, "extraDelay":I
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_f

    .line 470
    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v4, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addTransientView(Landroid/view/View;I)V

    .line 471
    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 472
    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->initFrom(Landroid/view/View;)V

    .line 473
    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iput v8, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 476
    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iput-boolean v6, v7, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 477
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    add-int/lit8 v7, v15, 0x78

    int-to-long v7, v7

    iput-wide v7, v6, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .line 478
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const-wide/16 v7, 0x12c

    iput-wide v7, v6, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 479
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v6, v4, v7}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 480
    new-instance v5, Lcom/android/systemui/statusbar/stack/-$$Lambda$StackStateAnimator$583ttX1KKMjNzUBxpRTbg9B4uQA;

    invoke-direct {v5, v4}, Lcom/android/systemui/statusbar/stack/-$$Lambda$StackStateAnimator$583ttX1KKMjNzUBxpRTbg9B4uQA;-><init>(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 482
    .end local v5    # "endRunnable":Ljava/lang/Runnable;
    .local v14, "endRunnable":Ljava/lang/Runnable;
    :cond_f
    move-object v14, v5

    const/4 v5, 0x0

    .line 483
    .local v5, "targetLocation":F
    const/4 v6, 0x1

    .line 484
    .local v6, "needsAnimation":Z
    instance-of v7, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_11

    .line 485
    move-object v7, v4

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 486
    .local v7, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 487
    const/4 v6, 0x0

    .line 489
    :cond_10
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 490
    .local v8, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 491
    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpLocation:[I

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLocationOnScreen([I)V

    .line 492
    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpLocation:[I

    aget v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v11

    sub-float/2addr v9, v11

    .line 493
    invoke-static {v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationX(Landroid/view/View;)F

    move-result v11

    add-float/2addr v9, v11

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    .line 494
    .local v9, "iconPosition":F
    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpLocation:[I

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 495
    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpLocation:[I

    aget v10, v11, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 499
    .end local v5    # "targetLocation":F
    .end local v7    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .local v9, "targetLocation":F
    move/from16 v16, v6

    move/from16 v17, v9

    goto :goto_3

    .end local v9    # "targetLocation":F
    .restart local v5    # "targetLocation":F
    :cond_11
    move/from16 v17, v5

    move/from16 v16, v6

    .end local v5    # "targetLocation":F
    .end local v6    # "needsAnimation":Z
    .local v16, "needsAnimation":Z
    .local v17, "targetLocation":F
    :goto_3
    if-eqz v16, :cond_12

    .line 503
    const-wide/16 v6, 0x1a4

    int-to-long v8, v15

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v18

    .line 503
    move-object v5, v4

    move/from16 v12, v17

    move-object v13, v14

    move-object v1, v14

    move-object/from16 v14, v18

    .end local v14    # "endRunnable":Ljava/lang/Runnable;
    .local v1, "endRunnable":Ljava/lang/Runnable;
    invoke-virtual/range {v5 .. v14}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_4

    .line 507
    .end local v1    # "endRunnable":Ljava/lang/Runnable;
    .restart local v14    # "endRunnable":Ljava/lang/Runnable;
    :cond_12
    move-object v1, v14

    .end local v14    # "endRunnable":Ljava/lang/Runnable;
    .restart local v1    # "endRunnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_13

    .line 508
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 511
    .end local v1    # "endRunnable":Ljava/lang/Runnable;
    .end local v15    # "extraDelay":I
    .end local v16    # "needsAnimation":Z
    .end local v17    # "targetLocation":F
    :cond_13
    :goto_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .end local v3    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v4    # "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    nop

    .line 359
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 513
    :cond_14
    return-void
.end method

.method public static removeTransientView(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p0, "viewToRemove"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 519
    :cond_0
    return-void
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 4
    .param p1, "targetAmount"    # F
    .param p2, "onTop"    # Z
    .param p3, "isRubberbanded"    # Z

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 524
    .local v0, "startOverScrollAmount":F
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 528
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 530
    .local v1, "overScrollAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x168

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 531
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 540
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 541
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 551
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 552
    if-eqz p2, :cond_1

    .line 553
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 555
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 557
    :goto_0
    return-void
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .line 560
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 561
    .local v0, "currentAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 564
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setHeadsUpAppearHeightBottom(I)V
    .locals 0
    .param p1, "headsUpAppearHeightBottom"    # I

    .line 567
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    .line 568
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0
    .param p1, "shadeExpanded"    # Z

    .line 571
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    .line 572
    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 575
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 576
    return-void
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V
    .locals 6
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "additionalDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    .line 131
    .local p1, "mAnimationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 134
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 135
    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 137
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 141
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 142
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 143
    invoke-direct {p0, v2, v3, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    goto :goto_1

    .line 147
    :cond_0
    invoke-direct {p0, p2, v2, v3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->initAnimationProperties(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 148
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 138
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 158
    return-void
.end method
