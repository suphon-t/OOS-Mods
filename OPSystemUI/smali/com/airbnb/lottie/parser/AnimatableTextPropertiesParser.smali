.class public Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;
.super Ljava/lang/Object;
.source "AnimatableTextPropertiesParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 5
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, "anim":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x61

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parseAnimatableTextProperties(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v0

    .line 25
    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 31
    if-nez v0, :cond_4

    .line 33
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v1

    .line 35
    :cond_4
    return-object v0
.end method

.method private static parseAnimatableTextProperties(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 8
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v1, 0x0

    .line 42
    .local v1, "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v2, 0x0

    .line 43
    .local v2, "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v3, 0x0

    .line 45
    .local v3, "tracking":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x74

    if-eq v6, v7, :cond_3

    const/16 v7, 0xcbd

    if-eq v6, v7, :cond_2

    const/16 v7, 0xe50

    if-eq v6, v7, :cond_1

    const/16 v7, 0xe64

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v6, "sw"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    const-string v6, "sc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "fc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "t"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x3

    :cond_4
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 61
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 58
    :pswitch_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    .line 59
    goto :goto_0

    .line 55
    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    .line 56
    goto :goto_0

    .line 52
    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v1

    .line 53
    goto :goto_0

    .line 49
    :pswitch_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v0

    .line 50
    goto :goto_0

    .line 64
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 66
    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
