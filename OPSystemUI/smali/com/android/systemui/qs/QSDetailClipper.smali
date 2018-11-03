.class public Lcom/android/systemui/qs/QSDetailClipper;
.super Ljava/lang/Object;
.source "QSDetailClipper.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mBackground:Landroid/graphics/drawable/TransitionDrawable;

.field private final mDetail:Landroid/view/View;

.field private final mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

.field private final mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "detail"    # Landroid/view/View;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$1;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;

    .line 125
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$2;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailClipper;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/QSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailClipper;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 28
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailClipper;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method


# virtual methods
.method public animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "in"    # Z
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 42
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;I)V

    .line 43
    return-void
.end method

.method public animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;I)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "in"    # Z
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p5, "startDelay"    # I

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    .line 47
    iget-object v4, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    .line 48
    iget-object v4, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 54
    :cond_0
    iget-object v4, v0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 55
    .local v4, "detailWidth":I
    iget-object v5, v0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 56
    .local v5, "detailHeight":I
    if-lez v4, :cond_1

    if-gtz v5, :cond_2

    .line 57
    :cond_1
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget-object v7, v0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    iget v5, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 62
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    sub-int v6, v4, v1

    .line 63
    .local v6, "w":I
    sub-int v7, v5, v2

    .line 66
    .local v7, "h":I
    const/4 v8, 0x0

    .line 67
    .local v8, "innerR":I
    if-ltz v1, :cond_3

    if-ltz v6, :cond_3

    if-ltz v2, :cond_3

    if-gez v7, :cond_4

    .line 68
    :cond_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 69
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 70
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 71
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 73
    :cond_4
    mul-int v9, v1, v1

    mul-int v10, v2, v2

    add-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 74
    .local v9, "r":I
    int-to-double v10, v9

    mul-int v12, v6, v6

    mul-int v13, v2, v2

    add-int/2addr v12, v13

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v9, v10

    .line 75
    int-to-double v10, v9

    mul-int v12, v6, v6

    mul-int v13, v7, v7

    add-int/2addr v12, v13

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v9, v10

    .line 76
    int-to-double v10, v9

    mul-int v12, v1, v1

    mul-int v13, v7, v7

    add-int/2addr v12, v13

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v9, v10

    .line 77
    if-eqz p3, :cond_5

    .line 78
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-static {v10, v1, v2, v11, v12}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 80
    :cond_5
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    int-to-float v11, v9

    int-to-float v12, v8

    invoke-static {v10, v1, v2, v11, v12}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    .line 82
    :goto_0
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v11, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v11}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v11

    long-to-double v11, v11

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v11, v13

    double-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 83
    if-eqz v3, :cond_6

    .line 84
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v10, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    :cond_6
    if-eqz p3, :cond_7

    .line 87
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v11, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v11}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v11

    long-to-double v11, v11

    const-wide v13, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v11, v13

    double-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 88
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v11, v0, Lcom/android/systemui/qs/QSDetailClipper;->mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 93
    :cond_7
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v11, v0, Lcom/android/systemui/qs/QSDetailClipper;->mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    :goto_1
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    move/from16 v11, p5

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 98
    iget-object v10, v0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    .line 99
    return-void
.end method

.method public showBackground()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->showSecondLayer()V

    .line 136
    return-void
.end method
