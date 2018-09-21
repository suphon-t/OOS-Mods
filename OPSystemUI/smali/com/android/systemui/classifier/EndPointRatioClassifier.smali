.class public Lcom/android/systemui/classifier/EndPointRatioClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "EndPointRatioClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 0
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/classifier/EndPointRatioClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    .line 26
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 2
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .line 36
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "ratio":F
    goto :goto_0

    .line 39
    .end local v0    # "ratio":F
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getEndPointLength()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v1

    div-float/2addr v0, v1

    .line 41
    .restart local v0    # "ratio":F
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/classifier/EndPointRatioEvaluator;->evaluate(F)F

    move-result v1

    return v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "END_RTIO"

    return-object v0
.end method
