.class public Lcom/android/systemui/classifier/EndPointLengthClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "EndPointLengthClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 0
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 1
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .line 33
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getEndPointLength()F

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/classifier/EndPointLengthEvaluator;->evaluate(F)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "END_LNGTH"

    return-object v0
.end method
