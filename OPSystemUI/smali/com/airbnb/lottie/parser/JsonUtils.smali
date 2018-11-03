.class Lcom/airbnb/lottie/parser/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private static jsonArrayToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 5
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 67
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 68
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 69
    .local v1, "y":F
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 73
    new-instance v2, Landroid/graphics/PointF;

    mul-float v3, v0, p1

    mul-float v4, v1, p1

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private static jsonNumbersToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 5
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 56
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 57
    .local v1, "y":F
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    mul-float v3, v0, p1

    mul-float v4, v1, p1

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private static jsonObjectToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 5
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "x":F
    const/4 v1, 0x0

    .line 79
    .local v1, "y":F
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string/jumbo v4, "y"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_1
    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 89
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-static {p0}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Landroid/util/JsonReader;)F

    move-result v1

    .line 87
    goto :goto_0

    .line 83
    :pswitch_3
    invoke-static {p0}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Landroid/util/JsonReader;)F

    move-result v0

    .line 84
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 93
    new-instance v2, Landroid/graphics/PointF;

    mul-float v3, v0, p1

    mul-float v4, v1, p1

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static jsonToColor(Landroid/util/JsonReader;)I
    .locals 6
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 22
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 23
    .local v0, "r":I
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    .line 24
    .local v1, "g":I
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    .line 25
    .local v2, "b":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 29
    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method static jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 3
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/airbnb/lottie/parser/JsonUtils$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown point starts with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonObjectToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 48
    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonArrayToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonNumbersToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static jsonToPoints(Landroid/util/JsonReader;F)Ljava/util/List;
    .locals 3
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "F)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 38
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 42
    return-object v0
.end method

.method static valueFromObject(Landroid/util/JsonReader;)F
    .locals 4
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    .line 98
    .local v0, "token":Landroid/util/JsonToken;
    sget-object v1, Lcom/airbnb/lottie/parser/JsonUtils$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {v0}, Landroid/util/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown value for token of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 103
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 104
    .local v1, "val":F
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 108
    return v1

    .line 100
    .end local v1    # "val":F
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
