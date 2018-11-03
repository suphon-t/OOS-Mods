.class Lcom/airbnb/lottie/parser/ShapeTrimPathParser;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    .locals 11
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 19
    .local v1, "type":Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    const/4 v2, 0x0

    .line 20
    .local v2, "start":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v3, 0x0

    .line 21
    .local v3, "end":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v4, 0x0

    .local v10, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_0
    move-object v10, v4

    .line 23
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x65

    const/4 v8, 0x0

    if-eq v6, v7, :cond_4

    const/16 v7, 0x6d

    if-eq v6, v7, :cond_3

    const/16 v7, 0x6f

    if-eq v6, v7, :cond_2

    const/16 v7, 0x73

    if-eq v6, v7, :cond_1

    const/16 v7, 0xdbf

    if-eq v6, v7, :cond_0

    goto :goto_2

    :cond_0
    const-string v6, "nm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :cond_1
    const-string v6, "s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v5, v8

    goto :goto_2

    :cond_2
    const-string v6, "o"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    const-string v6, "m"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x4

    goto :goto_2

    :cond_4
    const-string v6, "e"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    :cond_5
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 41
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 38
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    .line 39
    goto :goto_1

    .line 35
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 36
    goto :goto_1

    .line 32
    :pswitch_2
    invoke-static {p0, p1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 33
    .end local v10    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v4, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    goto :goto_0

    .line 29
    .end local v4    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v10    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :pswitch_3
    invoke-static {p0, p1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    .line 30
    goto :goto_1

    .line 26
    :pswitch_4
    invoke-static {p0, p1, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    .line 27
    goto :goto_1

    .line 45
    :cond_6
    new-instance v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
