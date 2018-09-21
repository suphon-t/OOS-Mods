.class public Lcom/android/systemui/classifier/PointerCountClassifier;
.super Lcom/android/systemui/classifier/GestureClassifier;
.source "PointerCountClassifier.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 1
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .line 27
    invoke-direct {p0}, Lcom/android/systemui/classifier/GestureClassifier;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    .line 29
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(I)F
    .locals 1
    .param p1, "type"    # I

    .line 51
    iget v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    invoke-static {v0}, Lcom/android/systemui/classifier/PointerCountEvaluator;->evaluate(I)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "PTR_CNT"

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 40
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 41
    iput v1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    .line 44
    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 45
    iget v2, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    .line 47
    :cond_1
    return-void
.end method
