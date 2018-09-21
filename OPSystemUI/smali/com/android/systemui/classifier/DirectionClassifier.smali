.class public Lcom/android/systemui/classifier/DirectionClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "DirectionClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 0
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 5
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .line 34
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    .line 35
    .local v0, "firstPoint":Lcom/android/systemui/classifier/Point;
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    .line 36
    .local v1, "lastPoint":Lcom/android/systemui/classifier/Point;
    iget v2, v1, Lcom/android/systemui/classifier/Point;->x:F

    iget v3, v0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v2, v3

    iget v3, v1, Lcom/android/systemui/classifier/Point;->y:F

    iget v4, v0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3, p1}, Lcom/android/systemui/classifier/DirectionEvaluator;->evaluate(FFI)F

    move-result v2

    return v2
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "DIR"

    return-object v0
.end method
