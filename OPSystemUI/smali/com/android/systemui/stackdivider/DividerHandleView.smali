.class public Lcom/android/systemui/stackdivider/DividerHandleView;
.super Landroid/view/View;
.source "DividerHandleView.java"


# static fields
.field private static final HEIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private final mCircleDiameter:I

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mTouching:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    .line 54
    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    .line 84
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 85
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    .line 86
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 37
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/DividerHandleView;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 37
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/DividerHandleView;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/DividerHandleView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateToTarget(IIZ)V
    .locals 7
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "touching"    # Z

    .line 114
    sget-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 116
    .local v0, "widthAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    new-array v5, v1, [I

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    aput v6, v5, v4

    aput p2, v5, v3

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 118
    .local v2, "heightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 119
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_0

    .line 121
    const-wide/16 v3, 0x96

    goto :goto_0

    .line 122
    :cond_0
    const-wide/16 v3, 0xc8

    .line 120
    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 123
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_1

    .line 124
    sget-object v3, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 125
    :cond_1
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 123
    :goto_1
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerHandleView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerHandleView$3;-><init>(Lcom/android/systemui/stackdivider/DividerHandleView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 133
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 138
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 139
    .local v1, "top":I
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 140
    .local v2, "radius":I
    int-to-float v4, v0

    int-to-float v5, v1

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    add-int/2addr v3, v0

    int-to-float v6, v3

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    add-int/2addr v3, v1

    int-to-float v7, v3

    int-to-float v8, v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method public setTouching(ZZ)V
    .locals 2
    .param p1, "touching"    # Z
    .param p2, "animate"    # Z

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    if-ne p1, v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 97
    :cond_1
    if-nez p2, :cond_3

    .line 98
    if-eqz p1, :cond_2

    .line 99
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 100
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    goto :goto_0

    .line 102
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 103
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    goto :goto_3

    .line 107
    :cond_3
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    .line 108
    :goto_1
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    .line 107
    :goto_2
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->animateToTarget(IIZ)V

    .line 110
    :goto_3
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    .line 111
    return-void
.end method
