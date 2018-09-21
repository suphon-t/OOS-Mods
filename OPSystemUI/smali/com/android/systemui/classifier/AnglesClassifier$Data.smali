.class Lcom/android/systemui/classifier/AnglesClassifier$Data;
.super Ljava/lang/Object;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/AnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private final ANGLE_DEVIATION:F

.field private mAnglesCount:F

.field private mBiggestAngle:F

.field private mCount:F

.field private mFirstAngleVariance:F

.field private mFirstLength:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftAngles:F

.field private mLength:F

.field private mPreviousAngle:F

.field private mRightAngles:F

.field private mSecondCount:F

.field private mSecondSum:F

.field private mSecondSumSquares:F

.field private mStraightAngles:F

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const v0, 0x3e20d97c

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->ANGLE_DEVIATION:F

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    .line 116
    const v1, 0x40490fdb    # (float)Math.PI

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    .line 117
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    .line 118
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    .line 119
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    .line 121
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    .line 122
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    .line 123
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 8
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 129
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Point;->equals(Lcom/android/systemui/classifier/Point;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v2, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 135
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    iget-object v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v3, 0x2

    .line 138
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/classifier/Point;->getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v0

    .line 140
    .local v0, "angle":F
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    .line 141
    float-to-double v3, v0

    const-wide v5, 0x4007e0485c442d18L    # 2.9845130165391645

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    .line 142
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    goto :goto_0

    .line 143
    :cond_2
    float-to-double v3, v0

    const-wide v5, 0x400a63ae4c442d18L    # 3.298672290640422

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_3

    .line 144
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    goto :goto_0

    .line 146
    :cond_3
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    .line 149
    :goto_0
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    sub-float v1, v0, v1

    .line 154
    .local v1, "difference":F
    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    cmpg-float v3, v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-gez v3, :cond_4

    .line 155
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    .line 156
    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    iput v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    .line 157
    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    iget v6, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    iget v7, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    .line 158
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    .line 159
    iput v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    .line 160
    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    goto :goto_1

    .line 162
    :cond_4
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    .line 163
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    .line 164
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    .line 167
    :goto_1
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    .line 168
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    .line 169
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    .line 170
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    .line 173
    .end local v0    # "angle":F
    .end local v1    # "difference":F
    :cond_5
    return-void
.end method

.method public getAnglesPercentage()F
    .locals 4

    .line 195
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 196
    sget-boolean v0, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAnglesPercentage: count==0, result=1"

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 199
    :cond_1
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    div-float/2addr v0, v1

    .line 200
    .local v0, "result":F
    sget-boolean v1, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_2

    .line 201
    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesPercentage: left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " right="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " straight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    return v0
.end method

.method public getAnglesVariance()F
    .locals 5

    .line 180
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v0

    .line 181
    .local v0, "anglesVariance":F
    sget-boolean v1, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesVariance: (first pass) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - mFirstLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - mLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 187
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    iget v4, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    .line 188
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v2

    add-float/2addr v1, v2

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 189
    sget-boolean v1, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesVariance: (second pass) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    return v0
.end method

.method public getAnglesVariance(FFF)F
    .locals 3
    .param p1, "sumSquares"    # F
    .param p2, "sum"    # F
    .param p3, "count"    # F

    .line 176
    div-float v0, p1, p3

    div-float v1, p2, p3

    div-float v2, p2, p3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
