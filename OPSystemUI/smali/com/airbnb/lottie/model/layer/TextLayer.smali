.class public Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCharArray:[C

.field private final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field private trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layerModel"    # Lcom/airbnb/lottie/model/layer/Layer;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 33
    const/4 v0, 0x1

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 35
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v1, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v1, Lcom/airbnb/lottie/model/layer/TextLayer$2;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer$2;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 54
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 56
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 60
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v0

    .line 61
    .local v0, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 64
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 70
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 76
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 77
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 80
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_3

    .line 81
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 82
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    :cond_3
    return-void
.end method

.method private drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "character"    # [C
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 235
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 239
    return-void

    .line 241
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 242
    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "character"    # Lcom/airbnb/lottie/model/FontCharacter;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "fontScale"    # F
    .param p4, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .line 195
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "contentGroups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/ContentGroup;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 198
    .local v3, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 199
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 200
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    iget-wide v6, p4, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:D

    neg-double v6, v6

    double-to-float v6, v6

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 201
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 202
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 203
    iget-boolean v4, p4, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v4, :cond_0

    .line 204
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 205
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 208
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 196
    .end local v3    # "path":Landroid/graphics/Path;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(CLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 224
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 225
    iget-boolean v0, p2, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 227
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 230
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 232
    :goto_0
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 214
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 218
    return-void

    .line 220
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 221
    return-void
.end method

.method private drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "font"    # Lcom/airbnb/lottie/model/Font;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    move-object v6, p0

    move-object/from16 v7, p1

    .line 133
    iget-wide v0, v7, Lcom/airbnb/lottie/model/DocumentData;->size:D

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v8, v0, v1

    .line 134
    .local v8, "fontScale":F
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v9

    .line 135
    .local v9, "parentScale":F
    iget-object v10, v7, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 138
    .local v10, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 139
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 140
    .local v12, "c":C
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 141
    .local v13, "characterHash":I
    iget-object v0, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/airbnb/lottie/model/FontCharacter;

    .line 142
    .local v14, "character":Lcom/airbnb/lottie/model/FontCharacter;
    if-nez v14, :cond_0

    .line 144
    nop

    .line 138
    move-object/from16 v3, p4

    goto :goto_1

    .line 146
    :cond_0
    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move v3, v8

    move-object v4, v7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual {v14}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v8

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v9

    .line 149
    .local v0, "tx":F
    iget v1, v7, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    .line 150
    .local v1, "tracking":F
    iget-object v2, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, v6, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    .line 153
    :cond_1
    mul-float v2, v1, v9

    add-float/2addr v0, v2

    .line 154
    const/4 v2, 0x0

    move-object/from16 v3, p4

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    .end local v0    # "tx":F
    .end local v1    # "tracking":F
    .end local v12    # "c":C
    .end local v13    # "characterHash":I
    .end local v14    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    :goto_1
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_2
    move-object/from16 v3, p4

    return-void
.end method

.method private drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;
    .param p2, "font"    # Lcom/airbnb/lottie/model/Font;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 160
    invoke-static {p3}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 161
    .local v0, "parentScale":F
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 162
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-nez v1, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v2, p1, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 166
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    move-result-object v3

    .line 167
    .local v3, "textDelegate":Lcom/airbnb/lottie/TextDelegate;
    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-wide v5, p1, Lcom/airbnb/lottie/model/DocumentData;->size:D

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 173
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 175
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 176
    .local v6, "character":C
    invoke-direct {p0, v6, p1, p4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterFromFont(CLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 177
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    aput-char v6, v7, v4

    .line 178
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v4, v9}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v7

    .line 180
    .local v7, "charWidth":F
    iget v8, p1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    .line 181
    .local v8, "tracking":F
    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v9, :cond_2

    .line 182
    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v8, v9

    .line 184
    :cond_2
    mul-float v9, v8, v0

    add-float/2addr v9, v7

    .line 185
    .local v9, "tx":F
    const/4 v10, 0x0

    invoke-virtual {p4, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    .end local v6    # "character":C
    .end local v7    # "charWidth":F
    .end local v8    # "tracking":F
    .end local v9    # "tx":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method private getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;
    .locals 7
    .param p1, "character"    # Lcom/airbnb/lottie/model/FontCharacter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 250
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v2, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/ContentGroup;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 252
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 253
    .local v4, "sg":Lcom/airbnb/lottie/model/content/ShapeGroup;
    new-instance v5, Lcom/airbnb/lottie/animation/content/ContentGroup;

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v5, v6, p0, v4}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v4    # "sg":Lcom/airbnb/lottie/model/content/ShapeGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-object v2
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

    .line 262
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 263
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 265
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 267
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 269
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 272
    :cond_3
    :goto_0
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/DocumentData;

    .line 93
    .local v0, "documentData":Lcom/airbnb/lottie/model/DocumentData;
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/Font;

    .line 94
    .local v1, "font":Lcom/airbnb/lottie/model/Font;
    if-nez v1, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 97
    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_3

    .line 107
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    .line 112
    .local v2, "alpha":I
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_4

    .line 116
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    .line 118
    :cond_4
    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    .line 119
    .local v3, "parentScale":F
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:I

    int-to-float v5, v5

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    .end local v3    # "parentScale":F
    :goto_2
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 125
    :cond_5
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 128
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    return-void
.end method
