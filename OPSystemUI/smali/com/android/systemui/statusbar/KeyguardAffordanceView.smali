.class public Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.super Landroid/widget/ImageView;
.source "KeyguardAffordanceView.java"


# static fields
.field public static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCenterX:I

.field private mCenterY:I

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleColor:I

.field private mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCircleStartRadius:F

.field private mCircleStartValue:F

.field private mCircleWillBeHidden:Z

.field private mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mColorInterpolator:Landroid/animation/ArgbEvaluator;

.field private final mDarkIconColor:I

.field private mFinishing:Z

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHwCenterX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCenterY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCirclePaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCircleRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mImageScale:F

.field private mLaunchingAffordance:Z

.field private mMaxCircleSize:F

.field private final mMinBackgroundRadius:I

.field private final mNormalColor:I

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewView:Landroid/view/View;

.field private mRestingAlpha:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mShouldTint:Z

.field private mSupportHardware:Z

.field private mTempPoint:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->DEBUG:Z

    .line 59
    const-string v0, "KeyguardAffordanceView"

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 84
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    .line 95
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 101
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 107
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 113
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 135
    sget-object v1, Landroid/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 137
    .local v1, "a":Landroid/content/res/TypedArray;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 140
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    .line 143
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDarkIconColor:I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    .line 146
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 149
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Z

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # F

    .line 50
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # F

    .line 50
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    return p1
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 424
    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 427
    :cond_0
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 195
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    if-eqz v0, :cond_3

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    if-eqz v0, :cond_1

    .line 200
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 201
    .local v0, "displayListCanvas":Landroid/view/DisplayListCanvas;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 203
    .end local v0    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    goto :goto_0

    .line 205
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 206
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateCircleColor()V

    .line 210
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    :cond_3
    :goto_0
    return-void
.end method

.method private getAnimatorToRadius(F)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "circleRadius"    # F

    .line 407
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 408
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 409
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    .line 410
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    .line 411
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    return-object v0
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 542
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$10;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 7

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLocationInWindow([I)V

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 326
    .local v0, "rootWidth":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 327
    .local v1, "width":F
    sub-float v2, v0, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 329
    .local v2, "height":F
    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method private getRtAnimatorToRadius(F)Landroid/animation/Animator;
    .locals 2
    .param p1, "circleRadius"    # F

    .line 311
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    invoke-direct {v0, v1, p1}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 312
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 313
    return-object v0
.end method

.method private initHwProperties()V
    .locals 1

    .line 317
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    .line 318
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    .line 320
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    .line 321
    return-void
.end method

.method private setCircleRadius(FZZ)V
    .locals 11
    .param p1, "circleRadius"    # F
    .param p2, "slowAnimation"    # Z
    .param p3, "noAnimation"    # Z

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 350
    .local v0, "radiusHidden":Z
    :goto_0
    cmpl-float v4, p1, v1

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    .line 351
    .local v4, "nowHidden":Z
    :goto_1
    if-eq v0, v4, :cond_4

    if-nez p3, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    .line 352
    .local v5, "radiusNeedsAnimation":Z
    :goto_2
    if-nez v5, :cond_6

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_5

    .line 354
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 357
    if-eqz v4, :cond_9

    .line 358
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 362
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v1, :cond_9

    .line 365
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    .line 366
    .local v1, "diff":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 367
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v7, v6, v3

    const/4 v8, 0x2

    new-array v8, v8, [F

    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    add-float/2addr v9, v1

    aput v9, v8, v3

    aput p1, v8, v2

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 368
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 369
    .end local v1    # "diff":F
    .end local v6    # "values":[Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_4

    .line 371
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 372
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 374
    .local v2, "animator":Landroid/animation/ValueAnimator;
    cmpl-float v1, p1, v1

    if-nez v1, :cond_7

    .line 375
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_3

    .line 376
    :cond_7
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 377
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :goto_3
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    const-wide/16 v6, 0xfa

    .line 379
    .local v6, "duration":J
    if-nez p2, :cond_8

    .line 380
    iget v8, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    sub-float/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 382
    .local v8, "durationFactor":F
    const/high16 v9, 0x42a00000    # 80.0f

    mul-float/2addr v9, v8

    float-to-long v6, v9

    .line 383
    const-wide/16 v9, 0xc8

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 385
    .end local v8    # "durationFactor":F
    :cond_8
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 386
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 387
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_9

    .line 388
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLeft()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getTop()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 389
    invoke-static {v3, v8, v9, v10, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 392
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 404
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    .end local v6    # "duration":J
    :cond_9
    :goto_4
    return-void
.end method

.method private startRtAlphaFadeIn()V
    .locals 5

    .line 276
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 278
    .local v0, "modifiedPaint":Landroid/graphics/Paint;
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 280
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    .line 281
    new-instance v1, Landroid/view/RenderNodeAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    const/4 v3, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 283
    .local v1, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 284
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 286
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    .line 288
    .end local v0    # "modifiedPaint":Landroid/graphics/Paint;
    .end local v1    # "animator":Landroid/view/RenderNodeAnimator;
    :cond_0
    return-void
.end method

.method private startRtCircleFadeOut(J)V
    .locals 4
    .param p1, "duration"    # J

    .line 302
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 304
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 305
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 307
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 308
    return-void
.end method

.method private updateCircleColor()V
    .locals 5

    .line 216
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v2, v0

    .line 218
    .local v2, "fraction":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v3, v4

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    .line 221
    .local v1, "finishingFraction":F
    mul-float/2addr v2, v1

    .line 223
    .end local v1    # "finishingFraction":F
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 224
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 225
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 223
    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 226
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    return-void
.end method

.method private updateIconColor()V
    .locals 5

    .line 186
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 189
    .local v1, "alpha":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDarkIconColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 191
    .local v2, "color":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 192
    return-void
.end method


# virtual methods
.method public finishAnimation(FLjava/lang/Runnable;)V
    .locals 9
    .param p1, "velocity"    # F
    .param p2, "mAnimationEndRunnable"    # Ljava/lang/Runnable;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    .line 233
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v1

    .line 236
    .local v1, "maxCircleSize":F
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v2, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->initHwProperties()V

    .line 238
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRtAnimatorToRadius(F)Landroid/animation/Animator;

    move-result-object v2

    .line 239
    .local v2, "animatorToRadius":Landroid/animation/Animator;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->startRtAlphaFadeIn()V

    goto :goto_0

    .line 241
    .end local v2    # "animatorToRadius":Landroid/animation/Animator;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .restart local v2    # "animatorToRadius":Landroid/animation/Animator;
    :goto_0
    move-object v8, v2

    .line 243
    .end local v2    # "animatorToRadius":Landroid/animation/Animator;
    .local v8, "animatorToRadius":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    move-object v3, v8

    move v5, v1

    move v6, p1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 245
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;F)V

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 255
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getTop()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 258
    invoke-static {v0, v2, v3, v4, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    move v5, v1

    move v6, p1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v8}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->startRtCircleFadeOut(J)V

    .line 269
    :cond_1
    return-void
.end method

.method public getCircleRadius()F
    .locals 1

    .line 559
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    return v0
.end method

.method public getRestingAlpha()F
    .locals 1

    .line 484
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    return v0
.end method

.method public instantFinishAnimation()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 299
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 172
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 160
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    .line 164
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 578
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 579
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    if-eq v0, v1, :cond_0

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleColorToInverse(Z)V

    .line 582
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0

    .line 567
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCircleColorToInverse(Z)V
    .locals 2
    .param p1, "inverse"    # Z

    .line 585
    if-eqz p1, :cond_0

    .line 586
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->TAG:Ljava/lang/String;

    const-string v1, "setCircleColorToInverse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDarkIconColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    goto :goto_0

    .line 589
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 591
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateCircleColor()V

    .line 592
    return-void
.end method

.method public setCircleRadius(FZ)V
    .locals 1
    .param p1, "circleRadius"    # F
    .param p2, "slowAnimation"    # Z

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 338
    return-void
.end method

.method public setCircleRadiusWithoutAnimation(F)V
    .locals 2
    .param p1, "circleRadius"    # F

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 342
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 343
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 7
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 488
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 503
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move p1, v0

    .line 504
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v2, p1, v0

    float-to-int v2, v2

    .line 505
    .local v2, "endAlpha":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 506
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_2

    .line 507
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 508
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(I)V

    goto :goto_2

    .line 510
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getImageAlpha()I

    move-result v4

    .line 511
    .local v4, "currentAlpha":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 512
    .local v5, "animator":Landroid/animation/ValueAnimator;
    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 513
    new-instance v6, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 521
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 522
    if-nez p5, :cond_4

    .line 523
    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 524
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 525
    :cond_3
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    move-object p5, v1

    .line 527
    :cond_4
    invoke-virtual {v5, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 528
    const-wide/16 v6, -0x1

    cmp-long v1, p3, v6

    if-nez v1, :cond_5

    .line 529
    sub-int v1, v4, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 530
    .local v1, "durationFactor":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 531
    .end local v1    # "durationFactor":F
    .local v0, "durationFactor":F
    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    float-to-long p3, v1

    .line 533
    .end local v0    # "durationFactor":F
    :cond_5
    invoke-virtual {v5, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 534
    if-eqz p6, :cond_6

    .line 535
    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 537
    :cond_6
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 539
    .end local v4    # "currentAlpha":I
    .end local v5    # "animator":Landroid/animation/ValueAnimator;
    :goto_2
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tint"    # Z

    .line 153
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 156
    return-void
.end method

.method public setImageScale(FZ)V
    .locals 6
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z

    .line 430
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 431
    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 445
    if-nez p2, :cond_0

    .line 446
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    goto :goto_1

    .line 449
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 450
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 451
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    if-nez p5, :cond_2

    .line 460
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 461
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 462
    :cond_1
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_0
    move-object p5, v1

    .line 464
    :cond_2
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_3

    .line 466
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e4ccccc    # 0.19999999f

    div-float/2addr v1, v2

    .line 468
    .local v1, "durationFactor":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 469
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long p3, v2

    .line 471
    .end local v1    # "durationFactor":F
    :cond_3
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 472
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 474
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :goto_1
    return-void
.end method

.method public setLaunchingAffordance(Z)V
    .locals 0
    .param p1, "launchingAffordance"    # Z

    .line 572
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    .line 573
    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 178
    .local v0, "oldPreviewView":Landroid/view/View;
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 180
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_1
    return-void
.end method

.method public setRestingAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 477
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 481
    return-void
.end method
