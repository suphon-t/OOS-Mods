.class public Lcom/airbnb/lottie/model/content/GradientFill;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/airbnb/lottie/model/content/GradientType;

.field private final highlightAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final highlightLength:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gradientType"    # Lcom/airbnb/lottie/model/content/GradientType;
    .param p3, "fillType"    # Landroid/graphics/Path$FillType;
    .param p4, "gradientColor"    # Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .param p5, "opacity"    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .param p6, "startPoint"    # Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .param p7, "endPoint"    # Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .param p8, "highlightLength"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .param p9, "highlightAngle"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/GradientFill;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    .line 33
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    .line 34
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/GradientFill;->gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 35
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/GradientFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 36
    iput-object p6, p0, Lcom/airbnb/lottie/model/content/GradientFill;->startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 37
    iput-object p7, p0, Lcom/airbnb/lottie/model/content/GradientFill;->endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 38
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientFill;->name:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/airbnb/lottie/model/content/GradientFill;->highlightLength:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 40
    iput-object p9, p0, Lcom/airbnb/lottie/model/content/GradientFill;->highlightAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 41
    return-void
.end method


# virtual methods
.method public getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->endPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->gradientColor:Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    return-object v0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method getHighlightAngle()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->highlightAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method getHighlightLength()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->highlightLength:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientFill;->startPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 80
    new-instance v0, Lcom/airbnb/lottie/animation/content/GradientFillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientFill;)V

    return-object v0
.end method
