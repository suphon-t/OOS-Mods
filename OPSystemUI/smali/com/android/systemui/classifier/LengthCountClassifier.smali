.class public Lcom/android/systemui/classifier/LengthCountClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "LengthCountClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 0
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .line 27
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 3
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .line 37
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v0

    .line 38
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v0, v1

    .line 37
    invoke-static {v0}, Lcom/android/systemui/classifier/LengthCountEvaluator;->evaluate(F)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "LEN_CNT"

    return-object v0
.end method
