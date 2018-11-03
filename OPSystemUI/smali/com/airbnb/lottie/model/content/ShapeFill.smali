.class public Lcom/airbnb/lottie/model/content/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fillEnabled"    # Z
    .param p3, "fillType"    # Landroid/graphics/Path$FillType;
    .param p4, "color"    # Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .param p5, "opacity"    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    .line 24
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 25
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 26
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 27
    return-void
.end method


# virtual methods
.method public getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 1
    .param p1, "drawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 46
    new-instance v0, Lcom/airbnb/lottie/animation/content/FillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/FillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
