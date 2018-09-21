.class public Landroid/support/design/animation/ArgbEvaluatorCompat;
.super Ljava/lang/Object;
.source "ArgbEvaluatorCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Landroid/support/design/animation/ArgbEvaluatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/support/design/animation/ArgbEvaluatorCompat;

    invoke-direct {v0}, Landroid/support/design/animation/ArgbEvaluatorCompat;-><init>()V

    sput-object v0, Landroid/support/design/animation/ArgbEvaluatorCompat;->instance:Landroid/support/design/animation/ArgbEvaluatorCompat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/support/design/animation/ArgbEvaluatorCompat;
    .locals 1

    .line 38
    sget-object v0, Landroid/support/design/animation/ArgbEvaluatorCompat;->instance:Landroid/support/design/animation/ArgbEvaluatorCompat;

    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 20
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Integer;
    .param p3, "endValue"    # Ljava/lang/Integer;

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 56
    .local v1, "startInt":I
    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 57
    .local v2, "startA":F
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 58
    .local v4, "startR":F
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 59
    .local v5, "startG":F
    and-int/lit16 v6, v1, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 61
    .local v6, "startB":F
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 62
    .local v7, "endInt":I
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v3

    .line 63
    .local v8, "endA":F
    shr-int/lit8 v9, v7, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    div-float/2addr v9, v3

    .line 64
    .local v9, "endR":F
    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    div-float/2addr v10, v3

    .line 65
    .local v10, "endG":F
    and-int/lit16 v11, v7, 0xff

    int-to-float v11, v11

    div-float/2addr v11, v3

    .line 68
    .local v11, "endB":F
    float-to-double v12, v4

    const-wide v14, 0x400199999999999aL    # 2.2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v4, v12

    .line 69
    float-to-double v12, v5

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v5, v12

    .line 70
    float-to-double v12, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v6, v12

    .line 72
    float-to-double v12, v9

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v9, v12

    .line 73
    float-to-double v12, v10

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v10, v12

    .line 74
    float-to-double v12, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v11, v12

    .line 77
    sub-float v12, v8, v2

    mul-float v12, v12, p1

    add-float/2addr v12, v2

    .line 78
    .local v12, "a":F
    sub-float v13, v9, v4

    mul-float v13, v13, p1

    add-float/2addr v13, v4

    .line 79
    .local v13, "r":F
    sub-float v14, v10, v5

    mul-float v14, v14, p1

    add-float/2addr v14, v5

    .line 80
    .local v14, "g":F
    sub-float v15, v11, v6

    mul-float v15, v15, p1

    add-float/2addr v15, v6

    .line 83
    .local v15, "b":F
    mul-float/2addr v12, v3

    .line 84
    move/from16 v16, v4

    float-to-double v3, v13

    .end local v4    # "startR":F
    .local v16, "startR":F
    move/from16 v17, v1

    const-wide v0, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .end local v1    # "startInt":I
    .local v17, "startInt":I
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    .line 85
    .end local v13    # "r":F
    .local v3, "r":F
    move/from16 v18, v5

    float-to-double v4, v14

    .end local v5    # "startG":F
    .local v18, "startG":F
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    .line 86
    .end local v14    # "g":F
    .local v4, "g":F
    float-to-double v13, v15

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v5

    .line 88
    .end local v15    # "b":F
    .local v0, "b":F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    or-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
