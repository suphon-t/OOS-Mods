.class public Lcom/airbnb/lottie/animation/content/EllipseContent;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final ELLIPSE_CONTROL_POINT_PERCENTAGE:F = 0.55228f


# instance fields
.field private final circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

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

.field private final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;
    .param p3, "circleShape"    # Lcom/airbnb/lottie/model/content/CircleShape;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 36
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 40
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 47
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 56
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

    .line 123
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 125
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 128
    :cond_1
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 22

    .line 74
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    return-object v1

    .line 78
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 81
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 82
    .local v1, "size":Landroid/graphics/PointF;
    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 83
    .local v2, "halfWidth":F
    iget v4, v1, Landroid/graphics/PointF;->y:F

    div-float v3, v4, v3

    .line 86
    .local v3, "halfHeight":F
    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v2, v4

    .line 87
    .local v12, "cpW":F
    mul-float v13, v3, v4

    .line 89
    .local v13, "cpH":F
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 90
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed()Z

    move-result v4

    const/4 v14, 0x0

    if-eqz v4, :cond_1

    .line 91
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v5, v3

    invoke-virtual {v4, v14, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 92
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v16, v14, v12

    neg-float v4, v3

    neg-float v5, v2

    sub-float v19, v14, v13

    neg-float v6, v2

    const/16 v21, 0x0

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v20, v6

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 93
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v6, v2

    add-float v7, v14, v13

    sub-float v8, v14, v12

    const/4 v10, 0x0

    move v9, v3

    move v11, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 94
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v5, v14, v12

    add-float v8, v14, v13

    move v6, v3

    move v7, v2

    move v9, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 95
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v6, v14, v13

    add-float v7, v14, v12

    neg-float v8, v3

    const/4 v9, 0x0

    neg-float v10, v3

    move v5, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v5, v3

    invoke-virtual {v4, v14, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 98
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v5, v14, v12

    neg-float v6, v3

    sub-float v8, v14, v13

    const/4 v10, 0x0

    move v7, v2

    move v9, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 99
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v6, v14, v13

    add-float v7, v14, v12

    const/4 v9, 0x0

    move v5, v2

    move v8, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 100
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v6, v14, v12

    neg-float v8, v2

    add-float v9, v14, v13

    neg-float v10, v2

    const/4 v11, 0x0

    move v7, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 101
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v4, v2

    sub-float v17, v14, v13

    sub-float v18, v14, v12

    neg-float v5, v3

    const/16 v20, 0x0

    neg-float v6, v3

    move/from16 v16, v4

    move/from16 v19, v5

    move/from16 v21, v6

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 104
    :goto_0
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 105
    .local v4, "position":Landroid/graphics/PointF;
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->offset(FF)V

    .line 107
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 109
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-static {v5, v6}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 111
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 112
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    return-object v5
.end method

.method public onValueChanged()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/EllipseContent;->invalidate()V

    .line 51
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

    .line 117
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 118
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

    .line 59
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 61
    .local v1, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 62
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 63
    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 64
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 59
    .end local v1    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
