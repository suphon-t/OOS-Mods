.class Landroid/support/design/widget/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;,
        Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final HOVERED_ENABLED_STATE_SET:[I

.field static final HOVERED_FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I


# instance fields
.field animState:I

.field borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

.field contentBackground:Landroid/graphics/drawable/Drawable;

.field currentAnimator:Landroid/animation/Animator;

.field private defaultHideMotionSpec:Landroid/support/design/animation/MotionSpec;

.field private defaultShowMotionSpec:Landroid/support/design/animation/MotionSpec;

.field elevation:F

.field hideMotionSpec:Landroid/support/design/animation/MotionSpec;

.field hoveredFocusedTranslationZ:F

.field imageMatrixScale:F

.field maxImageSize:I

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field pressedTranslationZ:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;

.field private rotation:F

.field shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

.field final shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

.field shapeDrawable:Landroid/graphics/drawable/Drawable;

.field showMotionSpec:Landroid/support/design/animation/MotionSpec;

.field private final stateListAnimator:Landroid/support/design/widget/StateListAnimator;

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;

.field final view:Landroid/support/design/widget/VisibilityAwareImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    sget-object v0, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 102
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 105
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 108
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 111
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 115
    new-array v0, v1, [I

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 3
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRect:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRectF1:Landroid/graphics/RectF;

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRectF2:Landroid/graphics/RectF;

    .line 123
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    .line 128
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 129
    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 131
    new-instance v0, Landroid/support/design/widget/StateListAnimator;

    invoke-direct {v0}, Landroid/support/design/widget/StateListAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 136
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 137
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 139
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 140
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 142
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 145
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 147
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 148
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 150
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 151
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 153
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    .line 154
    return-void
.end method

.method private calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 279
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 281
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 282
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRectF1:Landroid/graphics/RectF;

    .line 285
    .local v1, "drawableBounds":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRectF2:Landroid/graphics/RectF;

    .line 286
    .local v2, "imageBounds":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 287
    iget v3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 288
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 291
    iget v3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {p2, p1, p1, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 293
    .end local v1    # "drawableBounds":Landroid/graphics/RectF;
    .end local v2    # "imageBounds":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private createAnimator(Landroid/support/design/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;
    .locals 9
    .param p1, "spec"    # Landroid/support/design/animation/MotionSpec;
    .param p2, "opacity"    # F
    .param p3, "scale"    # F
    .param p4, "iconScale"    # F

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 468
    .local v1, "animator":Landroid/animation/Animator;
    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 469
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v3, [F

    aput p3, v6, v5

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 472
    const-string v2, "scale"

    invoke-virtual {p1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 473
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    aput p3, v6, v5

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 476
    const-string v2, "scale"

    invoke-virtual {p1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 477
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V

    .line 480
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    new-instance v4, Landroid/support/design/animation/ImageMatrixProperty;

    invoke-direct {v4}, Landroid/support/design/animation/ImageMatrixProperty;-><init>()V

    new-instance v6, Landroid/support/design/animation/MatrixEvaluator;

    invoke-direct {v6}, Landroid/support/design/animation/MatrixEvaluator;-><init>()V

    new-array v3, v3, [Landroid/graphics/Matrix;

    new-instance v7, Landroid/graphics/Matrix;

    iget-object v8, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {v7, v8}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v7, v3, v5

    .line 481
    invoke-static {v2, v4, v6, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 483
    const-string v2, "iconScale"

    invoke-virtual {p1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 484
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 487
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-static {v2, v0}, Landroid/support/design/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 488
    return-object v2
.end method

.method private createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "impl"    # Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;

    .line 600
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 601
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 602
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 603
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 604
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 605
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 606
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ensurePreDrawListener()V
    .locals 1

    .line 556
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$3;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 566
    :cond_0
    return-void
.end method

.method private getDefaultHideMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 2

    .line 454
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultHideMotionSpec:Landroid/support/design/animation/MotionSpec;

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 456
    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/widget/R$animator;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultHideMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultHideMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object v0
.end method

.method private getDefaultShowMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 2

    .line 446
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultShowMotionSpec:Landroid/support/design/animation/MotionSpec;

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 448
    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/widget/R$animator;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultShowMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 450
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultShowMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object v0
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 1

    .line 674
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateFromViewRotation()V
    .locals 3

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 681
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 683
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 693
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setRotation(F)V

    .line 696
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_3

    .line 697
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CircularBorderDrawable;->setRotation(F)V

    .line 699
    :cond_3
    return-void
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;
    .locals 6
    .param p1, "borderWidth"    # I
    .param p2, "backgroundTint"    # Landroid/content/res/ColorStateList;

    .line 531
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 532
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v1

    .line 533
    .local v1, "borderDrawable":Landroid/support/design/widget/CircularBorderDrawable;
    sget v2, Landroid/support/design/widget/R$color;->design_fab_stroke_top_outer_color:I

    .line 534
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroid/support/design/widget/R$color;->design_fab_stroke_top_inner_color:I

    .line 535
    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/support/design/widget/R$color;->design_fab_stroke_end_inner_color:I

    .line 536
    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget v5, Landroid/support/design/widget/R$color;->design_fab_stroke_end_outer_color:I

    .line 537
    invoke-static {v0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 533
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/design/widget/CircularBorderDrawable;->setGradientColors(IIII)V

    .line 538
    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderWidth(F)V

    .line 539
    invoke-virtual {v1, p2}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 540
    return-object v1
.end method

.method createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 569
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 570
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 571
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 572
    return-object v0
.end method

.method getElevation()F
    .locals 1

    .line 230
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 507
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    .line 508
    return-void
.end method

.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .param p2, "fromUser"    # Z

    .line 330
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 339
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    goto :goto_0

    .line 342
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getDefaultHideMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    .line 341
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createAnimator(Landroid/support/design/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 346
    .local v0, "set":Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonImpl$1;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 378
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    goto :goto_2

    .line 380
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    if-eqz p2, :cond_4

    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 381
    if-eqz p1, :cond_5

    .line 382
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 385
    :cond_5
    :goto_2
    return-void
.end method

.method isOrWillBeHidden()Z
    .locals 4

    .line 590
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 592
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 595
    :cond_1
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method isOrWillBeShown()Z
    .locals 4

    .line 580
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 582
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 585
    :cond_1
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    if-eq v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method jumpDrawableToCurrentState()V
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0}, Landroid/support/design/widget/StateListAnimator;->jumpToCurrentState()V

    .line 327
    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 1

    .line 544
    new-instance v0, Landroid/support/design/widget/CircularBorderDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 576
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0
.end method

.method onAttachedToWindow()V
    .locals 2

    .line 513
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V

    .line 515
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 517
    :cond_0
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .line 520
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 524
    :cond_0
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 1
    .param p1, "state"    # [I

    .line 322
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/StateListAnimator;->setState([I)V

    .line 323
    return-void
.end method

.method onElevationsChanged(FFF)V
    .locals 2
    .param p1, "elevation"    # F
    .param p2, "hoveredFocusedTranslationZ"    # F
    .param p3, "pressedTranslationZ"    # F

    .line 315
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 317
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->updatePadding()V

    .line 319
    :cond_0
    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 510
    return-void
.end method

.method onPreDraw()V
    .locals 2

    .line 548
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v0

    .line 549
    .local v0, "rotation":F
    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 550
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    .line 551
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->updateFromViewRotation()V

    .line 553
    :cond_0
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 10
    .param p1, "backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p2, "backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "rippleColor"    # Landroid/content/res/ColorStateList;
    .param p4, "borderWidth"    # I

    .line 163
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 165
    if-eqz p2, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 174
    .local v0, "touchFeedbackShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-static {p3}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 175
    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 179
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p4, :cond_1

    .line 180
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v4

    iput-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 181
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v5, v4, v3

    iget-object v5, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v1

    move-object v1, v4

    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 183
    .end local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 184
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v1, v3

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v1, v2

    .line 187
    .restart local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 189
    new-instance v2, Landroid/support/design/widget/ShadowDrawableWrapper;

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 191
    invoke-virtual {v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 193
    invoke-interface {v4}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v7

    iget v8, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget v4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget v9, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr v9, v4

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/design/widget/ShadowDrawableWrapper;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    .line 196
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->setAddPaddingForCorners(Z)V

    .line 197
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-interface {v2, v3}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    return-void
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 201
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 204
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 207
    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 210
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 213
    :cond_0
    return-void
.end method

.method final setElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    .line 223
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 224
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    .line 225
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 227
    :cond_0
    return-void
.end method

.method final setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 0
    .param p1, "spec"    # Landroid/support/design/animation/MotionSpec;

    .line 310
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 311
    return-void
.end method

.method final setHoveredFocusedTranslationZ(F)V
    .locals 3
    .param p1, "translationZ"    # F

    .line 242
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 243
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    .line 244
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 246
    :cond_0
    return-void
.end method

.method final setImageMatrixScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 271
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 273
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    .line 274
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V

    .line 275
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 276
    return-void
.end method

.method final setMaxImageSize(I)V
    .locals 1
    .param p1, "maxImageSize"    # I

    .line 256
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    if-eq v0, p1, :cond_0

    .line 257
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    .line 258
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->updateImageMatrixScale()V

    .line 260
    :cond_0
    return-void
.end method

.method final setPressedTranslationZ(F)V
    .locals 3
    .param p1, "translationZ"    # F

    .line 249
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 250
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    .line 251
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 253
    :cond_0
    return-void
.end method

.method final setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 0
    .param p1, "spec"    # Landroid/support/design/animation/MotionSpec;

    .line 301
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 302
    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 3
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .param p2, "fromUser"    # Z

    .line 388
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 397
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 401
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 402
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 403
    invoke-virtual {p0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 406
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    goto :goto_0

    .line 408
    :cond_3
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getDefaultShowMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    .line 407
    :goto_0
    invoke-direct {p0, v0, v1, v1, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createAnimator(Landroid/support/design/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 412
    .local v0, "set":Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonImpl$2;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 433
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    goto :goto_1

    .line 434
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 435
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 436
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 437
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 438
    invoke-virtual {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 439
    if-eqz p1, :cond_5

    .line 440
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    .line 443
    :cond_5
    :goto_1
    return-void
.end method

.method final updateImageMatrixScale()V
    .locals 1

    .line 267
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->imageMatrixScale:F

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 268
    return-void
.end method

.method final updatePadding()V
    .locals 6

    .line 500
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRect:Landroid/graphics/Rect;

    .line 501
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 502
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 503
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 504
    return-void
.end method
