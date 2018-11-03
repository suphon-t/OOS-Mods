.class public Lcom/airbnb/lottie/value/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field public endFrame:Ljava/lang/Float;

.field private endProgress:F

.field public final endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final interpolator:Landroid/view/animation/Interpolator;

.field public pathCp1:Landroid/graphics/PointF;

.field public pathCp2:Landroid/graphics/PointF;

.field public final startFrame:F

.field private startProgress:F

.field public final startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "startFrame"    # F
    .param p6, "endFrame"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    .local p2, "startValue":Ljava/lang/Object;, "TT;"
    .local p3, "endValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 19
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 30
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 31
    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 33
    iput-object p4, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 34
    iput p5, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 35
    iput-object p6, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 19
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 24
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 42
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 43
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 45
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 46
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 47
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 48
    return-void
.end method


# virtual methods
.method public containsProgress(F)Z
    .locals 1
    .param p1, "progress"    # F

    .line 82
    .local p0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEndProgress()F
    .locals 4

    .line 61
    .local p0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 62
    return v1

    .line 64
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v0, :cond_1

    .line 66
    iput v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v0

    .line 69
    .local v0, "startProgress":F
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    sub-float/2addr v1, v2

    .line 70
    .local v1, "durationFrames":F
    iget-object v2, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v2

    div-float v2, v1, v2

    .line 71
    .local v2, "durationProgress":F
    add-float v3, v0, v2

    iput v3, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 74
    .end local v0    # "startProgress":F
    .end local v1    # "durationFrames":F
    .end local v2    # "durationProgress":F
    :cond_2
    :goto_0
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    return v0
.end method

.method public getStartProgress()F
    .locals 2

    .line 51
    .local p0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 55
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 57
    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 78
    .local p0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    .local p0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyframe{startValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
