.class Lcom/airbnb/lottie/parser/CircleShapeParser;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;
    .locals 11
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 21
    .local v1, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v2, 0x0

    .line 22
    .local v2, "size":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v3

    .line 24
    .local v6, "reversed":Z
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 25
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x64

    if-eq v9, v10, :cond_4

    const/16 v10, 0x70

    if-eq v9, v10, :cond_3

    const/16 v10, 0x73

    if-eq v9, v10, :cond_2

    const/16 v10, 0xdbf

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    const-string v9, "nm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_2

    :cond_2
    const-string v9, "s"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    goto :goto_2

    :cond_3
    const-string v9, "p"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_2

    :cond_4
    const-string v9, "d"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v7, v8

    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 40
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    if-ne v7, v5, :cond_6

    move v7, v4

    goto :goto_3

    :cond_6
    move v7, v3

    :goto_3
    move v6, v7

    .line 38
    goto :goto_0

    .line 33
    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v2

    .line 34
    goto :goto_0

    .line 30
    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v1

    .line 31
    goto :goto_0

    .line 27
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 28
    goto :goto_0

    .line 44
    :cond_7
    new-instance v3, Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-direct {v3, v0, v1, v2, v6}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Z)V

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
