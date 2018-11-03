.class Lcom/airbnb/lottie/parser/ShapePathParser;
.super Ljava/lang/Object;
.source "ShapePathParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;
    .locals 7
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
    .local v1, "ind":I
    const/4 v2, 0x0

    .line 21
    .local v2, "shape":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xd68

    if-eq v5, v6, :cond_2

    const/16 v6, 0xdbf

    if-eq v5, v6, :cond_1

    const v6, 0x197df

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "ind"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "nm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const-string v5, "ks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 33
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 30
    :pswitch_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v2

    .line 31
    goto :goto_0

    .line 27
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 28
    goto :goto_0

    .line 24
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 25
    goto :goto_0

    .line 37
    :cond_4
    new-instance v3, Lcom/airbnb/lottie/model/content/ShapePath;

    invoke-direct {v3, v0, v1, v2}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableShapeValue;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
