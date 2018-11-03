.class Lcom/airbnb/lottie/parser/ShapeFillParser;
.super Ljava/lang/Object;
.source "ShapeFillParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;
    .locals 12
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v1, 0x0

    .line 21
    .local v1, "fillEnabled":Z
    const/4 v2, 0x0

    .line 22
    .local v2, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v3, 0x0

    .line 23
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x1

    move v11, v1

    move-object v1, v0

    move v0, v4

    .line 25
    .local v0, "fillTypeInt":I
    .local v1, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .local v11, "fillEnabled":Z
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x179b7bc2

    if-eq v7, v8, :cond_4

    const/16 v8, 0x63

    if-eq v7, v8, :cond_3

    const/16 v8, 0x6f

    if-eq v7, v8, :cond_2

    const/16 v8, 0x72

    if-eq v7, v8, :cond_1

    const/16 v8, 0xdbf

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "nm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    const-string v7, "r"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    goto :goto_2

    :cond_2
    const-string v7, "o"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    const-string v7, "c"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    goto :goto_2

    :cond_4
    const-string v7, "fillEnabled"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 43
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    .line 41
    goto :goto_0

    .line 37
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    .line 38
    .end local v11    # "fillEnabled":Z
    .local v5, "fillEnabled":Z
    nop

    .line 23
    move v11, v5

    goto :goto_0

    .line 34
    .end local v5    # "fillEnabled":Z
    .restart local v11    # "fillEnabled":Z
    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    .line 35
    goto :goto_0

    .line 31
    :pswitch_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v1

    .line 32
    goto :goto_0

    .line 28
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 29
    goto :goto_0

    .line 47
    :cond_6
    if-ne v0, v4, :cond_7

    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_3
    move-object v8, v4

    goto :goto_4

    :cond_7
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_3

    .line 48
    .local v8, "fillType":Landroid/graphics/Path$FillType;
    :goto_4
    new-instance v4, Lcom/airbnb/lottie/model/content/ShapeFill;

    move-object v5, v4

    move-object v6, v3

    move v7, v11

    move-object v9, v1

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
