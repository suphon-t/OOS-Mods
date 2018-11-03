.class Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PathInterpolatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathInterpolator"
.end annotation


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method private constructor <init>([F[F)V
    .locals 0
    .param p1, "xs"    # [F
    .param p2, "ys"    # [F

    .line 114
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    .line 116
    iput-object p2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    .line 117
    return-void
.end method

.method synthetic constructor <init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$1;)V
    .locals 0
    .param p1, "x0"    # [F
    .param p2, "x1"    # [F
    .param p3, "x2"    # Lcom/android/systemui/qs/PathInterpolatorBuilder$1;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[F)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "t"    # F

    .line 121
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 122
    return v0

    .line 123
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 124
    return v1

    .line 127
    :cond_1
    const/4 v1, 0x0

    .line 128
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 130
    .local v2, "endIndex":I
    :goto_0
    sub-int v4, v2, v1

    if-le v4, v3, :cond_3

    .line 131
    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    .line 132
    .local v4, "midIndex":I
    iget-object v5, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 133
    move v2, v4

    goto :goto_1

    .line 135
    :cond_2
    move v1, v4

    .line 137
    .end local v4    # "midIndex":I
    :goto_1
    goto :goto_0

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    .line 140
    .local v3, "xRange":F
    cmpl-float v0, v3, v0

    if-nez v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v0, v0, v1

    return v0

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v0, v0, v1

    sub-float v0, p1, v0

    .line 145
    .local v0, "tInRange":F
    div-float v4, v0, v3

    .line 147
    .local v4, "fraction":F
    iget-object v5, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v5, v5, v1

    .line 148
    .local v5, "startY":F
    iget-object v6, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v6, v6, v2

    .line 149
    .local v6, "endY":F
    sub-float v7, v6, v5

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    return v7
.end method
