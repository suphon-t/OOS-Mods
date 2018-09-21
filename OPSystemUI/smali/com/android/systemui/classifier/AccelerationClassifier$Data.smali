.class Lcom/android/systemui/classifier/AccelerationClassifier$Data;
.super Ljava/lang/Object;
.source "AccelerationClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/AccelerationClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field maxSpeedRatio:F

.field previousPoint:Lcom/android/systemui/classifier/Point;

.field previousSpeed:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/Point;)V
    .locals 1
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 74
    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    .line 77
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    .line 78
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 5
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v0

    .line 82
    .local v0, "distance":F
    iget-wide v1, p1, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    iget-object v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    iget-wide v3, v3, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    .line 83
    .local v1, "duration":F
    div-float v2, v0, v1

    .line 85
    .local v2, "speed":F
    const v3, 0x4b989680    # 2.0E7f

    cmpl-float v3, v1, v3

    const/4 v4, 0x0

    if-gtz v3, :cond_2

    const v3, 0x4a989680    # 5000000.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 92
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    iget v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    div-float v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    .line 95
    :cond_1
    iput v2, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 96
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    .line 97
    return-void

    .line 87
    :cond_2
    :goto_0
    iput v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 88
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    .line 89
    return-void
.end method
