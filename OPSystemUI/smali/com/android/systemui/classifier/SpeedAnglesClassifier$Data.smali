.class Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;
.super Ljava/lang/Object;
.source "SpeedAnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/SpeedAnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private final ANGLE_DEVIATION:F

.field private final DURATION_SCALE:F

.field private final LENGTH_SCALE:F

.field private mAcceleratingAngles:F

.field private mAnglesCount:F

.field private mCount:F

.field private mDist:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousAngle:F

.field private mPreviousPoint:Lcom/android/systemui/classifier/Point;

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const v0, 0x4cbebc20    # 1.0E8f

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->DURATION_SCALE:F

    .line 86
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->LENGTH_SCALE:F

    .line 87
    const v1, 0x3ea0d97c

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->ANGLE_DEVIATION:F

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    .line 101
    const v1, 0x40490fdb    # (float)Math.PI

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    .line 103
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    .line 104
    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    .line 105
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    .line 106
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    .line 107
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 7
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    .line 115
    new-instance v0, Lcom/android/systemui/classifier/Point;

    iget-wide v1, p1, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    long-to-float v1, v1

    const v2, 0x4cbebc20    # 1.0E8f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    .line 120
    .local v0, "speedPoint":Lcom/android/systemui/classifier/Point;
    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 121
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v1, v0}, Lcom/android/systemui/classifier/Point;->equals(Lcom/android/systemui/classifier/Point;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    iget-object v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    iget-object v4, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v5, 0x2

    .line 127
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/Point;

    .line 126
    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/classifier/Point;->getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v1

    .line 129
    .local v1, "angle":F
    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    .line 130
    const v2, 0x4034f4ac

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    .line 131
    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    .line 134
    :cond_2
    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    sub-float v2, v1, v2

    .line 135
    .local v2, "difference":F
    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    .line 136
    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    .line 137
    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    .line 138
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    .line 141
    .end local v1    # "angle":F
    .end local v2    # "difference":F
    :cond_3
    return-void
.end method

.method public getAnglesPercentage()F
    .locals 4

    .line 153
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 156
    :cond_0
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    div-float/2addr v0, v1

    .line 157
    .local v0, "v":F
    sget-boolean v1, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_1

    .line 158
    const-string v1, "SPD_ANG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesPercentage: angles="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_1
    return v0
.end method

.method public getAnglesVariance()F
    .locals 4

    .line 144
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 145
    .local v0, "v":F
    sget-boolean v1, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "SPD_ANG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesVariance: sum^2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    return v0
.end method
