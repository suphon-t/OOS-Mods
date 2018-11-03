.class public abstract Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


# instance fields
.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field private final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 4
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;
    .param p3, "cap"    # Landroid/graphics/Paint$Cap;
    .param p4, "join"    # Landroid/graphics/Paint$Join;
    .param p5, "miterLimit"    # F
    .param p6, "opacity"    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .param p7, "width"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .param p9, "offset"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 55
    .local p8, "dashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 56
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 57
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 64
    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 65
    invoke-virtual {p7}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 67
    if-nez p9, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p9}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 72
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 73
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 75
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 80
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 81
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 89
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    nop

    .local v0, "i":I
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 94
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 97
    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 268
    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 271
    return-void

    .line 274
    :cond_0
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 275
    .local v0, "scale":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 281
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aput v3, v2, v1

    goto :goto_1

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v2, v2, v1

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aput v3, v2, v1

    .line 290
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v2, v1

    mul-float/2addr v3, v0

    aput v3, v2, v1

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 293
    .local v1, "offset":F
    :goto_2
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v3, v4, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 294
    const-string v2, "StrokeContent#applyDashPattern"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 295
    return-void
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pathGroup"    # Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 176
    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 177
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 179
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 182
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 182
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 185
    .end local v0    # "j":I
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 186
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 187
    .local v0, "totalLength":F
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    .line 190
    :cond_2
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    .line 191
    .local v1, "offsetLength":F
    nop

    .line 192
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 193
    .local v3, "startLength":F
    nop

    .line 194
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    .line 196
    .local v5, "endLength":F
    const/4 v4, 0x0

    .line 197
    .local v4, "currentLength":F
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_2
    if-ltz v6, :cond_a

    .line 198
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v8}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 199
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v7, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 200
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 201
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    .line 202
    .local v7, "length":F
    cmpl-float v8, v5, v0

    const/4 v9, 0x0

    if-lez v8, :cond_4

    sub-float v8, v5, v0

    add-float v10, v4, v7

    cmpg-float v8, v8, v10

    if-gez v8, :cond_4

    sub-float v8, v5, v0

    cmpg-float v8, v4, v8

    if-gez v8, :cond_4

    .line 207
    cmpl-float v8, v3, v0

    if-lez v8, :cond_3

    .line 208
    sub-float v8, v3, v0

    div-float/2addr v8, v7

    .local v8, "startValue":F
    goto :goto_3

    .line 210
    .end local v8    # "startValue":F
    :cond_3
    move v8, v9

    .line 212
    .restart local v8    # "startValue":F
    :goto_3
    sub-float v10, v5, v0

    div-float/2addr v10, v7

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 213
    .local v10, "endValue":F
    iget-object v11, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v11, v8, v10, v9}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 214
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 215
    .end local v8    # "startValue":F
    .end local v10    # "endValue":F
    goto :goto_6

    .line 217
    :cond_4
    add-float v8, v4, v7

    cmpg-float v8, v8, v3

    if-ltz v8, :cond_9

    cmpl-float v8, v4, v5

    if-lez v8, :cond_5

    goto :goto_6

    .line 219
    :cond_5
    add-float v8, v4, v7

    cmpg-float v8, v8, v5

    if-gtz v8, :cond_6

    cmpg-float v8, v3, v4

    if-gez v8, :cond_6

    .line 220
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 223
    :cond_6
    cmpg-float v8, v3, v4

    if-gez v8, :cond_7

    .line 224
    const/4 v8, 0x0

    .restart local v8    # "startValue":F
    goto :goto_4

    .line 226
    .end local v8    # "startValue":F
    :cond_7
    sub-float v8, v3, v4

    div-float/2addr v8, v7

    .line 229
    .restart local v8    # "startValue":F
    :goto_4
    add-float v10, v4, v7

    cmpl-float v10, v5, v10

    if-lez v10, :cond_8

    .line 230
    const/high16 v10, 0x3f800000    # 1.0f

    .restart local v10    # "endValue":F
    goto :goto_5

    .line 232
    .end local v10    # "endValue":F
    :cond_8
    sub-float v10, v5, v4

    div-float/2addr v10, v7

    .line 234
    .restart local v10    # "endValue":F
    :goto_5
    iget-object v11, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v11, v8, v10, v9}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 235
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 237
    .end local v8    # "startValue":F
    .end local v10    # "endValue":F
    :cond_9
    :goto_6
    add-float/2addr v4, v7

    .line 197
    .end local v7    # "length":F
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 239
    .end local v6    # "j":I
    :cond_a
    const-string v2, "StrokeContent#applyTrimPath"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 240
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 306
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 308
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 310
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 311
    if-nez p2, :cond_2

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 314
    :cond_2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 316
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 317
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 320
    :cond_3
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 139
    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 140
    int-to-float v0, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 141
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v0, v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 145
    const-string v1, "StrokeContent#draw"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    .line 150
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 154
    :cond_1
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 155
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 158
    .local v2, "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 159
    invoke-direct {p0, p1, v2, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 161
    :cond_2
    const-string v3, "StrokeContent#buildPath"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 163
    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 164
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v5}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 163
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 166
    .end local v3    # "j":I
    :cond_3
    const-string v3, "StrokeContent#buildPath"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 167
    const-string v3, "StrokeContent#drawPath"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    const-string v3, "StrokeContent#drawPath"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 154
    .end local v2    # "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_4
    const-string v1, "StrokeContent#draw"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 173
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 243
    const-string v0, "StrokeContent#getBounds"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 245
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 247
    .local v2, "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    move v3, v0

    .local v3, "j":I
    :goto_1
    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v5}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    .end local v2    # "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 253
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 254
    .local v0, "width":F
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float v5, v0, v3

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float v6, v0, v3

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    div-float v3, v0, v3

    add-float/2addr v6, v3

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 256
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 258
    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    iget v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 264
    const-string v1, "StrokeContent#getBounds"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 265
    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 101
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

    .line 299
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 300
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 104
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, "trimPathContentBefore":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/Content;

    .line 107
    .local v2, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v3, v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 108
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v3, v4, :cond_0

    .line 109
    move-object v0, v2

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 105
    .end local v2    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 116
    :cond_2
    const/4 v1, 0x0

    .line 117
    .local v1, "currentPathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 118
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    .line 119
    .local v3, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 120
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v6, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v6, :cond_4

    .line 121
    if-eqz v1, :cond_3

    .line 122
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_3
    new-instance v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move-object v6, v3

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-direct {v4, v6, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    move-object v1, v4

    .line 125
    move-object v4, v3

    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    .line 126
    :cond_4
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v4, :cond_6

    .line 127
    if-nez v1, :cond_5

    .line 128
    new-instance v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v4, v0, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    move-object v1, v4

    .line 130
    :cond_5
    invoke-static {v1}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v3    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 133
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    .line 134
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_8
    return-void
.end method
