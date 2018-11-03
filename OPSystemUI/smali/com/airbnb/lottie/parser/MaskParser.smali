.class Lcom/airbnb/lottie/parser/MaskParser;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
    .locals 11
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    const/4 v1, 0x0

    .line 22
    .local v1, "maskPath":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    const/4 v2, 0x0

    .line 24
    .local v2, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "mode":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x6f

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v4, v5, :cond_2

    const/16 v5, 0xe04

    if-eq v4, v5, :cond_1

    const v5, 0x3339a3

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v8

    goto :goto_2

    :cond_1
    const-string v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v7

    goto :goto_2

    :cond_2
    const-string v4, "o"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v9

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 53
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .end local v3    # "mode":Ljava/lang/String;
    goto/16 :goto_6

    .line 50
    .restart local v3    # "mode":Ljava/lang/String;
    :pswitch_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    .line 51
    goto/16 :goto_6

    .line 47
    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v1

    .line 48
    goto/16 :goto_6

    .line 29
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v10, 0x61

    if-eq v5, v10, :cond_6

    const/16 v8, 0x69

    if-eq v5, v8, :cond_5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_4

    goto :goto_3

    :cond_4
    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v6, v7

    goto :goto_4

    :cond_5
    const-string v5, "i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_6
    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v6, v8

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v9

    :goto_4
    packed-switch v6, :pswitch_data_1

    .line 42
    const-string v4, "LOTTIE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown mask mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Defaulting to Add."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto :goto_5

    .line 37
    :pswitch_3
    const-string v4, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {p1, v4}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 40
    goto :goto_5

    .line 34
    :pswitch_4
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 35
    goto :goto_5

    .line 31
    :pswitch_5
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 32
    nop

    .line 45
    :goto_5
    nop

    .line 55
    .end local v3    # "mode":Ljava/lang/String;
    :goto_6
    goto/16 :goto_0

    .line 56
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 58
    new-instance v3, Lcom/airbnb/lottie/model/content/Mask;

    invoke-direct {v3, v0, v1, v2}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
