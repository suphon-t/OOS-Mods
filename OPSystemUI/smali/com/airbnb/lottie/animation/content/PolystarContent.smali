.class public Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 2
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;
    .param p3, "polystarShape"    # Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 48
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 50
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 52
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 53
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 55
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 56
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->Star:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 62
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->Star:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 77
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->Star:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    :cond_2
    return-void
.end method

.method private createPolygonPath()V
    .locals 32

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 242
    .local v1, "points":I
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 244
    .local v2, "currentAngle":D
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 248
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 250
    .local v4, "anglePerPoint":F
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 251
    .local v5, "roundedness":F
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 256
    .local v6, "radius":F
    float-to-double v7, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-float v7, v7

    .line 257
    .local v7, "x":F
    float-to-double v8, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    .line 258
    .local v8, "y":F
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    float-to-double v9, v4

    add-double/2addr v2, v9

    .line 261
    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    .line 262
    .local v9, "numPoints":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    int-to-double v12, v11

    cmpg-double v12, v12, v9

    if-gez v12, :cond_2

    .line 263
    move v12, v7

    .line 264
    .local v12, "previousX":F
    move v13, v8

    .line 265
    .local v13, "previousY":F
    float-to-double v14, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v7, v14

    .line 266
    float-to-double v14, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v8, v14

    .line 268
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_1

    .line 269
    float-to-double v14, v13

    move-wide/from16 v23, v9

    float-to-double v9, v12

    .end local v9    # "numPoints":D
    .local v23, "numPoints":D
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v14

    double-to-float v9, v9

    .line 270
    .local v9, "cp1Theta":F
    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v10, v14

    .line 271
    .local v10, "cp1Dx":F
    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 273
    .local v14, "cp1Dy":F
    move/from16 v27, v1

    move-wide/from16 v28, v2

    float-to-double v1, v8

    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .local v27, "points":I
    .local v28, "currentAngle":D
    move/from16 v30, v4

    float-to-double v3, v7

    .end local v4    # "anglePerPoint":F
    .local v30, "anglePerPoint":F
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 274
    .local v1, "cp2Theta":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 275
    .local v2, "cp2Dx":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 277
    .local v3, "cp2Dy":F
    mul-float v4, v6, v5

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v4, v15

    mul-float/2addr v4, v10

    .line 278
    .local v4, "cp1x":F
    mul-float v16, v6, v5

    mul-float v16, v16, v15

    mul-float v25, v16, v14

    .line 279
    .local v25, "cp1y":F
    mul-float v16, v6, v5

    mul-float v16, v16, v15

    mul-float v26, v16, v2

    .line 280
    .local v26, "cp2x":F
    mul-float v16, v6, v5

    mul-float v16, v16, v15

    mul-float v15, v16, v3

    .line 281
    .local v15, "cp2y":F
    move/from16 v31, v1

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .end local v1    # "cp2Theta":F
    .local v31, "cp2Theta":F
    sub-float v17, v12, v4

    sub-float v18, v13, v25

    add-float v19, v7, v26

    add-float v20, v8, v15

    move-object/from16 v16, v1

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 282
    .end local v2    # "cp2Dx":F
    .end local v3    # "cp2Dy":F
    .end local v4    # "cp1x":F
    .end local v9    # "cp1Theta":F
    .end local v10    # "cp1Dx":F
    .end local v14    # "cp1Dy":F
    .end local v15    # "cp2y":F
    .end local v25    # "cp1y":F
    .end local v26    # "cp2x":F
    .end local v31    # "cp2Theta":F
    goto :goto_2

    .line 283
    .end local v23    # "numPoints":D
    .end local v27    # "points":I
    .end local v28    # "currentAngle":D
    .end local v30    # "anglePerPoint":F
    .local v1, "points":I
    .local v2, "currentAngle":D
    .local v4, "anglePerPoint":F
    .local v9, "numPoints":D
    :cond_1
    move/from16 v27, v1

    move-wide/from16 v28, v2

    move/from16 v30, v4

    move-wide/from16 v23, v9

    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .end local v4    # "anglePerPoint":F
    .end local v9    # "numPoints":D
    .restart local v23    # "numPoints":D
    .restart local v27    # "points":I
    .restart local v28    # "currentAngle":D
    .restart local v30    # "anglePerPoint":F
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    :goto_2
    move/from16 v1, v30

    float-to-double v2, v1

    .end local v30    # "anglePerPoint":F
    .local v1, "anglePerPoint":F
    add-double v2, v28, v2

    .line 262
    .end local v28    # "currentAngle":D
    .restart local v2    # "currentAngle":D
    add-int/lit8 v11, v11, 0x1

    move v4, v1

    move-wide/from16 v9, v23

    move/from16 v1, v27

    goto/16 :goto_1

    .line 289
    .end local v11    # "i":I
    .end local v12    # "previousX":F
    .end local v13    # "previousY":F
    .end local v23    # "numPoints":D
    .end local v27    # "points":I
    .local v1, "points":I
    .restart local v4    # "anglePerPoint":F
    .restart local v9    # "numPoints":D
    :cond_2
    move/from16 v27, v1

    move-wide/from16 v28, v2

    move v1, v4

    move-wide/from16 v23, v9

    .end local v2    # "currentAngle":D
    .end local v4    # "anglePerPoint":F
    .end local v9    # "numPoints":D
    .local v1, "anglePerPoint":F
    .restart local v23    # "numPoints":D
    .restart local v27    # "points":I
    .restart local v28    # "currentAngle":D
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 290
    .local v2, "position":Landroid/graphics/PointF;
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->offset(FF)V

    .line 291
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 292
    return-void
.end method

.method private createStarPath()V
    .locals 53

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 136
    .local v1, "points":F
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 138
    .local v2, "currentAngle":D
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 142
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 143
    .local v4, "anglePerPoint":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 144
    .local v6, "halfAnglePerPoint":F
    float-to-int v7, v1

    int-to-float v7, v7

    sub-float v7, v1, v7

    .line 145
    .local v7, "partialPointAmount":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_1

    .line 146
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v7

    mul-float/2addr v9, v6

    float-to-double v9, v9

    add-double/2addr v2, v9

    .line 149
    :cond_1
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 151
    .local v9, "outerRadius":F
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 153
    .local v10, "innerRadius":F
    const/4 v11, 0x0

    .line 154
    .local v11, "innerRoundedness":F
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/high16 v13, 0x42c80000    # 100.0f

    if-eqz v12, :cond_2

    .line 155
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float v11, v12, v13

    .line 157
    :cond_2
    const/4 v12, 0x0

    .line 158
    .local v12, "outerRoundedness":F
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_3

    .line 159
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float/2addr v14, v13

    .end local v12    # "outerRoundedness":F
    .local v14, "outerRoundedness":F
    goto :goto_1

    .line 166
    .end local v14    # "outerRoundedness":F
    .restart local v12    # "outerRoundedness":F
    :cond_3
    move v14, v12

    .end local v12    # "outerRoundedness":F
    .restart local v14    # "outerRoundedness":F
    :goto_1
    const/4 v12, 0x0

    .line 167
    .local v12, "partialPointRadius":F
    cmpl-float v13, v7, v8

    if-eqz v13, :cond_4

    .line 168
    sub-float v13, v9, v10

    mul-float/2addr v13, v7

    add-float v12, v10, v13

    .line 169
    move/from16 v16, v9

    float-to-double v8, v12

    .end local v9    # "outerRadius":F
    .local v16, "outerRadius":F
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v8, v8, v17

    double-to-float v8, v8

    .line 170
    .local v8, "x":F
    move/from16 v20, v6

    float-to-double v5, v12

    .end local v6    # "halfAnglePerPoint":F
    .local v20, "halfAnglePerPoint":F
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v5, v5, v17

    double-to-float v5, v5

    .line 171
    .local v5, "y":F
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    mul-float v6, v4, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    move/from16 v21, v5

    float-to-double v5, v6

    .end local v5    # "y":F
    .local v21, "y":F
    add-double/2addr v2, v5

    .line 181
    move/from16 v22, v10

    move/from16 v23, v16

    move/from16 v9, v20

    goto :goto_2

    .line 174
    .end local v8    # "x":F
    .end local v16    # "outerRadius":F
    .end local v20    # "halfAnglePerPoint":F
    .end local v21    # "y":F
    .restart local v6    # "halfAnglePerPoint":F
    .restart local v9    # "outerRadius":F
    :cond_4
    move/from16 v20, v6

    move/from16 v16, v9

    .end local v6    # "halfAnglePerPoint":F
    .end local v9    # "outerRadius":F
    .restart local v16    # "outerRadius":F
    .restart local v20    # "halfAnglePerPoint":F
    move/from16 v5, v16

    float-to-double v8, v5

    .end local v16    # "outerRadius":F
    .local v5, "outerRadius":F
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v8, v8, v16

    double-to-float v8, v8

    .line 175
    .restart local v8    # "x":F
    move/from16 v22, v10

    float-to-double v9, v5

    .end local v10    # "innerRadius":F
    .local v22, "innerRadius":F
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v9, v9, v16

    double-to-float v6, v9

    .line 176
    .local v6, "y":F
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 177
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v9, v20

    float-to-double v5, v9

    .end local v5    # "outerRadius":F
    .end local v6    # "y":F
    .end local v20    # "halfAnglePerPoint":F
    .local v9, "halfAnglePerPoint":F
    .local v23, "outerRadius":F
    .local v24, "y":F
    add-double/2addr v2, v5

    .line 181
    move/from16 v21, v24

    .end local v24    # "y":F
    .restart local v21    # "y":F
    :goto_2
    const/4 v5, 0x0

    .line 182
    .local v5, "longSegment":Z
    move-wide/from16 v25, v2

    float-to-double v2, v1

    .end local v2    # "currentAngle":D
    .local v25, "currentAngle":D
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v16

    .line 183
    .local v2, "numPoints":D
    move v10, v8

    move-wide/from16 v27, v25

    move v8, v5

    const/4 v5, 0x0

    .end local v25    # "currentAngle":D
    .local v5, "i":I
    .local v8, "longSegment":Z
    .local v10, "x":F
    .local v27, "currentAngle":D
    :goto_3
    move/from16 v29, v7

    int-to-double v6, v5

    .end local v7    # "partialPointAmount":F
    .local v29, "partialPointAmount":F
    cmpg-double v6, v6, v2

    if-gez v6, :cond_13

    .line 184
    if-eqz v8, :cond_5

    move/from16 v6, v23

    goto :goto_4

    :cond_5
    move/from16 v6, v22

    .line 185
    .local v6, "radius":F
    :goto_4
    move v7, v9

    .line 186
    .local v7, "dTheta":F
    const/4 v13, 0x0

    cmpl-float v18, v12, v13

    if-eqz v18, :cond_7

    move/from16 v30, v6

    move/from16 v31, v7

    int-to-double v6, v5

    .end local v6    # "radius":F
    .end local v7    # "dTheta":F
    .local v30, "radius":F
    .local v31, "dTheta":F
    sub-double v24, v2, v16

    cmpl-double v6, v6, v24

    if-nez v6, :cond_6

    .line 187
    mul-float v7, v4, v29

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v7, v6

    .end local v31    # "dTheta":F
    .restart local v7    # "dTheta":F
    goto :goto_6

    .line 189
    .end local v7    # "dTheta":F
    .restart local v31    # "dTheta":F
    :cond_6
    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_5

    .end local v30    # "radius":F
    .end local v31    # "dTheta":F
    .restart local v6    # "radius":F
    .restart local v7    # "dTheta":F
    :cond_7
    move/from16 v30, v6

    move/from16 v31, v7

    const/high16 v6, 0x40000000    # 2.0f

    .end local v6    # "radius":F
    .end local v7    # "dTheta":F
    .restart local v30    # "radius":F
    .restart local v31    # "dTheta":F
    :goto_5
    move/from16 v7, v31

    .end local v31    # "dTheta":F
    .restart local v7    # "dTheta":F
    :goto_6
    const/4 v13, 0x0

    cmpl-float v18, v12, v13

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    if-eqz v18, :cond_8

    move/from16 v32, v7

    int-to-double v6, v5

    .end local v7    # "dTheta":F
    .local v32, "dTheta":F
    sub-double v24, v2, v19

    cmpl-double v6, v6, v24

    if-nez v6, :cond_9

    .line 190
    move v6, v12

    .end local v30    # "radius":F
    .restart local v6    # "radius":F
    goto :goto_7

    .line 192
    .end local v6    # "radius":F
    .end local v32    # "dTheta":F
    .restart local v7    # "dTheta":F
    .restart local v30    # "radius":F
    :cond_8
    move/from16 v32, v7

    .end local v7    # "dTheta":F
    .restart local v32    # "dTheta":F
    :cond_9
    move/from16 v6, v30

    .end local v30    # "radius":F
    .restart local v6    # "radius":F
    :goto_7
    move v7, v10

    .line 193
    .local v7, "previousX":F
    move/from16 v13, v21

    .line 194
    .local v13, "previousY":F
    move/from16 v33, v9

    move/from16 v34, v10

    float-to-double v9, v6

    .end local v9    # "halfAnglePerPoint":F
    .end local v10    # "x":F
    .local v33, "halfAnglePerPoint":F
    .local v34, "x":F
    move/from16 v35, v1

    move-wide/from16 v36, v2

    move-wide/from16 v1, v27

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .end local v2    # "numPoints":D
    .end local v27    # "currentAngle":D
    .local v1, "currentAngle":D
    .local v35, "points":F
    .local v36, "numPoints":D
    mul-double v9, v9, v24

    double-to-float v3, v9

    .line 195
    .end local v34    # "x":F
    .local v3, "x":F
    float-to-double v9, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v9, v9, v24

    double-to-float v9, v9

    .line 197
    .end local v21    # "y":F
    .local v9, "y":F
    const/4 v10, 0x0

    cmpl-float v15, v11, v10

    if-nez v15, :cond_a

    cmpl-float v18, v14, v10

    if-nez v18, :cond_a

    .line 198
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v10, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    move-wide/from16 v47, v1

    move/from16 v49, v9

    move/from16 v45, v11

    move/from16 v46, v14

    const/16 v25, 0x0

    goto/16 :goto_d

    .line 200
    :cond_a
    move/from16 v45, v11

    float-to-double v10, v13

    .end local v11    # "innerRoundedness":F
    .local v45, "innerRoundedness":F
    move/from16 v46, v14

    float-to-double v14, v7

    .end local v14    # "outerRoundedness":F
    .local v46, "outerRoundedness":F
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v10, v14

    double-to-float v10, v10

    .line 201
    .local v10, "cp1Theta":F
    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v11, v14

    .line 202
    .local v11, "cp1Dx":F
    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 204
    .local v14, "cp1Dy":F
    move-wide/from16 v47, v1

    float-to-double v1, v9

    .end local v1    # "currentAngle":D
    .local v47, "currentAngle":D
    move/from16 v49, v9

    move/from16 v50, v10

    float-to-double v9, v3

    .end local v9    # "y":F
    .end local v10    # "cp1Theta":F
    .local v49, "y":F
    .local v50, "cp1Theta":F
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v9

    double-to-float v1, v1

    .line 205
    .local v1, "cp2Theta":F
    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v2, v9

    .line 206
    .local v2, "cp2Dx":F
    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 208
    .local v9, "cp2Dy":F
    if-eqz v8, :cond_b

    move/from16 v10, v45

    goto :goto_8

    :cond_b
    move/from16 v10, v46

    .line 209
    .local v10, "cp1Roundedness":F
    :goto_8
    if-eqz v8, :cond_c

    move/from16 v15, v46

    goto :goto_9

    :cond_c
    move/from16 v15, v45

    .line 210
    .local v15, "cp2Roundedness":F
    :goto_9
    if-eqz v8, :cond_d

    move/from16 v18, v22

    goto :goto_a

    :cond_d
    move/from16 v18, v23

    .line 211
    .local v18, "cp1Radius":F
    :goto_a
    if-eqz v8, :cond_e

    move/from16 v21, v23

    goto :goto_b

    :cond_e
    move/from16 v21, v22

    .line 213
    .local v21, "cp2Radius":F
    :goto_b
    mul-float v24, v18, v10

    const v25, 0x3ef4e26d    # 0.47829f

    mul-float v24, v24, v25

    mul-float v24, v24, v11

    .line 214
    .local v24, "cp1x":F
    mul-float v26, v18, v10

    mul-float v26, v26, v25

    mul-float v26, v26, v14

    .line 215
    .local v26, "cp1y":F
    mul-float v27, v21, v15

    mul-float v27, v27, v25

    mul-float v27, v27, v2

    .line 216
    .local v27, "cp2x":F
    mul-float v28, v21, v15

    mul-float v28, v28, v25

    mul-float v28, v28, v9

    .line 217
    .local v28, "cp2y":F
    const/16 v25, 0x0

    cmpl-float v30, v29, v25

    if-eqz v30, :cond_10

    .line 218
    if-nez v5, :cond_f

    .line 219
    mul-float v24, v24, v29

    .line 220
    mul-float v26, v26, v29

    .line 227
    move/from16 v51, v1

    move/from16 v52, v2

    goto :goto_c

    .line 221
    :cond_f
    move/from16 v51, v1

    move/from16 v52, v2

    int-to-double v1, v5

    .end local v1    # "cp2Theta":F
    .end local v2    # "cp2Dx":F
    .local v51, "cp2Theta":F
    .local v52, "cp2Dx":F
    sub-double v19, v36, v19

    cmpl-double v1, v1, v19

    if-nez v1, :cond_11

    .line 222
    mul-float v27, v27, v29

    .line 223
    mul-float v28, v28, v29

    goto :goto_c

    .line 227
    .end local v51    # "cp2Theta":F
    .end local v52    # "cp2Dx":F
    .restart local v1    # "cp2Theta":F
    .restart local v2    # "cp2Dx":F
    :cond_10
    move/from16 v51, v1

    move/from16 v52, v2

    .end local v1    # "cp2Theta":F
    .end local v2    # "cp2Dx":F
    .restart local v51    # "cp2Theta":F
    .restart local v52    # "cp2Dx":F
    :cond_11
    :goto_c
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v39, v7, v24

    sub-float v40, v13, v26

    add-float v41, v3, v27

    add-float v42, v49, v28

    move-object/from16 v38, v1

    move/from16 v43, v3

    move/from16 v44, v49

    invoke-virtual/range {v38 .. v44}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 230
    .end local v9    # "cp2Dy":F
    .end local v10    # "cp1Roundedness":F
    .end local v11    # "cp1Dx":F
    .end local v14    # "cp1Dy":F
    .end local v15    # "cp2Roundedness":F
    .end local v18    # "cp1Radius":F
    .end local v21    # "cp2Radius":F
    .end local v24    # "cp1x":F
    .end local v26    # "cp1y":F
    .end local v27    # "cp2x":F
    .end local v28    # "cp2y":F
    .end local v50    # "cp1Theta":F
    .end local v51    # "cp2Theta":F
    .end local v52    # "cp2Dx":F
    :goto_d
    move/from16 v1, v32

    float-to-double v9, v1

    .end local v32    # "dTheta":F
    .local v1, "dTheta":F
    add-double v27, v47, v9

    .line 231
    .end local v47    # "currentAngle":D
    .local v27, "currentAngle":D
    if-nez v8, :cond_12

    const/4 v2, 0x1

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    :goto_e
    move v8, v2

    .line 183
    .end local v1    # "dTheta":F
    .end local v6    # "radius":F
    add-int/lit8 v5, v5, 0x1

    move v10, v3

    move/from16 v7, v29

    move/from16 v9, v33

    move/from16 v1, v35

    move-wide/from16 v2, v36

    move/from16 v11, v45

    move/from16 v14, v46

    move/from16 v21, v49

    goto/16 :goto_3

    .line 235
    .end local v3    # "x":F
    .end local v5    # "i":I
    .end local v7    # "previousX":F
    .end local v13    # "previousY":F
    .end local v33    # "halfAnglePerPoint":F
    .end local v35    # "points":F
    .end local v36    # "numPoints":D
    .end local v45    # "innerRoundedness":F
    .end local v46    # "outerRoundedness":F
    .end local v49    # "y":F
    .local v1, "points":F
    .local v2, "numPoints":D
    .local v9, "halfAnglePerPoint":F
    .local v10, "x":F
    .local v11, "innerRoundedness":F
    .local v14, "outerRoundedness":F
    .local v21, "y":F
    :cond_13
    move/from16 v35, v1

    move-wide/from16 v36, v2

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v45, v11

    move/from16 v46, v14

    move-wide/from16 v47, v27

    .end local v1    # "points":F
    .end local v2    # "numPoints":D
    .end local v9    # "halfAnglePerPoint":F
    .end local v10    # "x":F
    .end local v11    # "innerRoundedness":F
    .end local v14    # "outerRoundedness":F
    .end local v27    # "currentAngle":D
    .restart local v33    # "halfAnglePerPoint":F
    .restart local v34    # "x":F
    .restart local v35    # "points":F
    .restart local v36    # "numPoints":D
    .restart local v45    # "innerRoundedness":F
    .restart local v46    # "outerRoundedness":F
    .restart local v47    # "currentAngle":D
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 236
    .local v1, "position":Landroid/graphics/PointF;
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->offset(FF)V

    .line 237
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 238
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 92
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 93
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 302
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 304
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 306
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 308
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 310
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 312
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 315
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 316
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 318
    :cond_6
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 113
    sget-object v0, Lcom/airbnb/lottie/animation/content/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createPolygonPath()V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createStarPath()V

    .line 116
    nop

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 124
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onValueChanged()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->invalidate()V

    .line 88
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .param p2, "depth"    # I
    .param p4, "currentPartialKeyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 296
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 297
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 98
    .local v1, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 99
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 100
    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 101
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 96
    .end local v1    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
