.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "colorPoints"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 21
    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .locals 10
    .param p1, "gradientColor"    # Lcom/airbnb/lottie/model/content/GradientColor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    .line 104
    .local v0, "startIndex":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 109
    .local v1, "opacityStops":I
    new-array v2, v1, [D

    .line 110
    .local v2, "positions":[D
    new-array v3, v1, [D

    .line 112
    .local v3, "opacities":[D
    move v4, v0

    .local v4, "i":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "j":I
    .local v6, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 113
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_1

    .line 114
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v2, v4

    goto :goto_1

    .line 116
    :cond_1
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v3, v4

    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 112
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "j":I
    .end local v6    # "i":I
    :cond_2
    nop

    .local v5, "i":I
    :goto_2
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v5

    aget v5, v5, v4

    .line 123
    .local v5, "color":I
    nop

    .line 124
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v6

    aget v6, v6, v4

    float-to-double v6, v6

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    move-result v6

    .line 125
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 126
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 127
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 123
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 129
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v6

    aput v5, v6, v4

    .line 121
    .end local v5    # "color":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    goto :goto_2

    .line 131
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 21
    .param p1, "position"    # D
    .param p3, "positions"    # [D
    .param p4, "opacities"    # [D

    move-object/from16 v0, p3

    .line 135
    move-object/from16 v1, p4

    const/4 v2, 0x1

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    const-wide v5, 0x406fe00000000000L    # 255.0

    if-ge v3, v4, :cond_1

    .line 136
    add-int/lit8 v4, v3, -0x1

    aget-wide v7, v0, v4

    .line 137
    .local v7, "lastPosition":D
    aget-wide v9, v0, v3

    .line 138
    .local v9, "thisPosition":D
    aget-wide v11, v0, v3

    cmpl-double v4, v11, p1

    if-ltz v4, :cond_0

    .line 139
    sub-double v11, p1, v7

    sub-double v13, v9, v7

    div-double/2addr v11, v13

    .line 140
    .local v11, "progress":D
    add-int/lit8 v2, v3, -0x1

    aget-wide v15, v1, v2

    aget-wide v17, v1, v3

    move-wide/from16 v19, v11

    invoke-static/range {v15 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v13

    mul-double/2addr v5, v13

    double-to-int v2, v5

    return v2

    .line 135
    .end local v7    # "lastPosition":D
    .end local v9    # "thisPosition":D
    .end local v11    # "progress":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "i":I
    :cond_1
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-wide v2, v1, v3

    mul-double/2addr v5, v2

    double-to-int v2, v5

    return v2
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 13
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 49
    .local v1, "isArray":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 52
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_2
    if-eqz v1, :cond_3

    .line 56
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 58
    :cond_3
    iget v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 62
    :cond_4
    iget v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v2, v2, [F

    .line 63
    .local v2, "positions":[F
    iget v4, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v4, v4, [I

    .line 65
    .local v4, "colors":[I
    const/4 v5, 0x0

    .line 66
    .local v5, "r":I
    const/4 v6, 0x0

    .line 67
    .local v6, "g":I
    nop

    .local v3, "i":I
    :goto_2
    iget v7, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v7, v7, 0x4

    if-ge v3, v7, :cond_5

    .line 68
    div-int/lit8 v7, v3, 0x4

    .line 69
    .local v7, "colorIndex":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    .line 70
    .local v8, "value":D
    rem-int/lit8 v10, v3, 0x4

    const-wide v11, 0x406fe00000000000L    # 255.0

    packed-switch v10, :pswitch_data_0

    .end local v7    # "colorIndex":I
    .end local v8    # "value":D
    goto :goto_3

    .line 82
    .restart local v7    # "colorIndex":I
    .restart local v8    # "value":D
    :pswitch_0
    mul-double/2addr v11, v8

    double-to-int v10, v11

    .line 83
    .local v10, "b":I
    const/16 v11, 0xff

    invoke-static {v11, v5, v6, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    aput v11, v4, v7

    .end local v7    # "colorIndex":I
    .end local v8    # "value":D
    .end local v10    # "b":I
    goto :goto_3

    .line 79
    .restart local v7    # "colorIndex":I
    .restart local v8    # "value":D
    :pswitch_1
    mul-double/2addr v11, v8

    double-to-int v6, v11

    .line 80
    goto :goto_3

    .line 76
    :pswitch_2
    mul-double/2addr v11, v8

    double-to-int v5, v11

    .line 77
    goto :goto_3

    .line 73
    :pswitch_3
    double-to-float v10, v8

    aput v10, v2, v7

    .line 74
    nop

    .line 67
    .end local v7    # "colorIndex":I
    .end local v8    # "value":D
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 88
    .end local v3    # "i":I
    :cond_5
    new-instance v3, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v3, v2, v4}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 89
    .local v3, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    invoke-direct {p0, v3, v0}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    .line 90
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
