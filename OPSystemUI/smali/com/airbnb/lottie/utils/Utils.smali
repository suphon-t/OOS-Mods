.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final SECOND_IN_NANOS:I = 0x3b9aca00

.field private static final SQRT_2:F

.field private static dpScale:F

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    .line 22
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    .line 23
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 11
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "offsetValue"    # F

    .line 77
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 80
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 81
    .local v0, "length":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    .line 82
    const-string v1, "applyTrimPathIfNeeded"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 83
    return-void

    .line 85
    :cond_0
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_9

    sub-float v2, p2, p1

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v4

    if-gez v1, :cond_1

    goto/16 :goto_1

    .line 89
    :cond_1
    mul-float v1, v0, p1

    .line 90
    .local v1, "start":F
    mul-float v2, v0, p2

    .line 91
    .local v2, "end":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 92
    .local v4, "newStart":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 94
    .local v5, "newEnd":F
    mul-float v6, p3, v0

    .line 95
    .local v6, "offset":F
    add-float/2addr v4, v6

    .line 96
    add-float/2addr v5, v6

    .line 99
    cmpl-float v7, v4, v0

    if-ltz v7, :cond_2

    cmpl-float v7, v5, v0

    if-ltz v7, :cond_2

    .line 100
    invoke-static {v4, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v4, v7

    .line 101
    invoke-static {v5, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v5, v7

    .line 104
    :cond_2
    cmpg-float v7, v4, v3

    if-gez v7, :cond_3

    .line 105
    invoke-static {v4, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v4, v7

    .line 107
    :cond_3
    cmpg-float v7, v5, v3

    if-gez v7, :cond_4

    .line 108
    invoke-static {v5, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v5, v7

    .line 112
    :cond_4
    cmpl-float v7, v4, v5

    if-nez v7, :cond_5

    .line 113
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 114
    const-string v3, "applyTrimPathIfNeeded"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 115
    return-void

    .line 118
    :cond_5
    cmpl-float v7, v4, v5

    if-ltz v7, :cond_6

    .line 119
    sub-float/2addr v4, v0

    .line 122
    :cond_6
    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 123
    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    sget-object v8, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    const/4 v9, 0x1

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 129
    cmpl-float v7, v5, v0

    if-lez v7, :cond_7

    .line 130
    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 131
    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    rem-float v8, v5, v0

    sget-object v10, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v8, v10, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 136
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 137
    :cond_7
    cmpg-float v3, v4, v3

    if-gez v3, :cond_8

    .line 138
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 139
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    add-float v7, v0, v4

    sget-object v8, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v0, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 144
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 146
    :cond_8
    :goto_0
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p0, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 147
    const-string v3, "applyTrimPathIfNeeded"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 148
    return-void

    .line 86
    .end local v1    # "start":F
    .end local v2    # "end":F
    .end local v4    # "newStart":F
    .end local v5    # "newEnd":F
    .end local v6    # "offset":F
    :cond_9
    :goto_1
    const-string v1, "applyTrimPathIfNeeded"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 87
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 4
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "trimPath"    # Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 68
    if-nez p1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 72
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    .line 71
    invoke-static {p0, v0, v2, v1}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 73
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 43
    if-eqz p0, :cond_0

    .line 45
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 51
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8
    .param p0, "startPoint"    # Landroid/graphics/PointF;
    .param p1, "endPoint"    # Landroid/graphics/PointF;
    .param p2, "cp1"    # Landroid/graphics/PointF;
    .param p3, "cp2"    # Landroid/graphics/PointF;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 29
    .local v0, "path":Landroid/graphics/Path;
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 31
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 32
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 37
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    :goto_0
    return-object v0
.end method

.method public static dpScale()F
    .locals 2

    .line 186
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    .line 189
    :cond_0
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return v0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 6
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .line 54
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 55
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 57
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    sget v1, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 58
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    sget v1, Lcom/airbnb/lottie/utils/Utils;->SQRT_2:F

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 59
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 60
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v0, v0, v4

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 61
    .local v0, "dx":F
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v1, v1, v5

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->points:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    .line 64
    .local v1, "dy":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    return v2
.end method

.method public static hashFor(FFFF)I
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .line 169
    const/16 v0, 0x11

    .line 170
    .local v0, "result":I
    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    const/16 v3, 0x1f

    if-eqz v2, :cond_0

    .line 171
    mul-int v2, v3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v0, v2

    .line 173
    :cond_0
    cmpl-float v2, p1, v1

    if-eqz v2, :cond_1

    .line 174
    mul-int v2, v3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 176
    :cond_1
    cmpl-float v2, p2, v1

    if-eqz v2, :cond_2

    .line 177
    mul-int v2, v3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 179
    :cond_2
    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    .line 180
    mul-int/2addr v3, v0

    int-to-float v1, v3

    mul-float/2addr v1, p3

    float-to-int v0, v1

    .line 182
    :cond_3
    return v0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "patch"    # I
    .param p3, "minMajor"    # I
    .param p4, "minMinor"    # I
    .param p5, "minPatch"    # I

    .line 153
    const/4 v0, 0x0

    if-ge p0, p3, :cond_0

    .line 154
    return v0

    .line 155
    :cond_0
    const/4 v1, 0x1

    if-le p0, p3, :cond_1

    .line 156
    return v1

    .line 159
    :cond_1
    if-ge p1, p4, :cond_2

    .line 160
    return v0

    .line 161
    :cond_2
    if-le p1, p4, :cond_3

    .line 162
    return v1

    .line 165
    :cond_3
    if-lt p2, p5, :cond_4

    move v0, v1

    nop

    :cond_4
    return v0
.end method
