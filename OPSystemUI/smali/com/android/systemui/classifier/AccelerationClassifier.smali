.class public Lcom/android/systemui/classifier/AccelerationClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "AccelerationClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/AccelerationClassifier$Data;
    }
.end annotation


# instance fields
.field private final mStrokeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/classifier/Stroke;",
            "Lcom/android/systemui/classifier/AccelerationClassifier$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 1
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    .line 36
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 3
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;

    .line 65
    .local v0, "data":Lcom/android/systemui/classifier/AccelerationClassifier$Data;
    iget v1, v0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    invoke-static {v1}, Lcom/android/systemui/classifier/SpeedRatioEvaluator;->evaluate(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    return v2
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "ACC"

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 47
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/systemui/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 51
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/android/systemui/classifier/AccelerationClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/classifier/ClassifierData;->getStroke(I)Lcom/android/systemui/classifier/Stroke;

    move-result-object v2

    .line 53
    .local v2, "stroke":Lcom/android/systemui/classifier/Stroke;
    invoke-virtual {v2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/Point;

    .line 54
    .local v3, "point":Lcom/android/systemui/classifier/Point;
    iget-object v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 55
    iget-object v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/systemui/classifier/AccelerationClassifier$Data;

    invoke-direct {v5, v3}, Lcom/android/systemui/classifier/AccelerationClassifier$Data;-><init>(Lcom/android/systemui/classifier/Point;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/AccelerationClassifier$Data;

    invoke-virtual {v4, v3}, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->addPoint(Lcom/android/systemui/classifier/Point;)V

    .line 51
    .end local v2    # "stroke":Lcom/android/systemui/classifier/Stroke;
    .end local v3    # "point":Lcom/android/systemui/classifier/Point;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
