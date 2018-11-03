.class Lcom/airbnb/lottie/parser/PolystarShapeParser;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;
    .locals 21
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 19
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 20
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 21
    .local v3, "type":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    const/4 v4, 0x0

    .line 22
    .local v4, "points":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v5, 0x0

    .line 23
    .local v5, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    .line 24
    .local v6, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v7, 0x0

    .line 25
    .local v7, "outerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    .line 26
    .local v8, "outerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    .line 27
    .local v9, "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    .line 27
    .local v19, "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_0
    move-object/from16 v19, v10

    .line 29
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x0

    sparse-switch v12, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string/jumbo v12, "sy"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x1

    goto :goto_2

    :sswitch_1
    const-string v12, "pt"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x2

    goto :goto_2

    :sswitch_2
    const-string v12, "os"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x6

    goto :goto_2

    :sswitch_3
    const-string v12, "or"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x5

    goto :goto_2

    :sswitch_4
    const-string v12, "nm"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v11, v13

    goto :goto_2

    :sswitch_5
    const-string v12, "is"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v11, 0x8

    goto :goto_2

    :sswitch_6
    const-string v12, "ir"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x7

    goto :goto_2

    :sswitch_7
    const-string v12, "r"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x4

    goto :goto_2

    :sswitch_8
    const-string v12, "p"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x3

    :cond_0
    :goto_2
    packed-switch v11, :pswitch_data_0

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 56
    :pswitch_0
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    .line 57
    .end local v19    # "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v10, "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    goto :goto_0

    .line 53
    .end local v10    # "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v19    # "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :pswitch_1
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    .line 54
    goto :goto_1

    .line 50
    :pswitch_2
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    .line 51
    goto/16 :goto_1

    .line 47
    :pswitch_3
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    .line 48
    goto/16 :goto_1

    .line 44
    :pswitch_4
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    .line 45
    goto/16 :goto_1

    .line 41
    :pswitch_5
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v5

    .line 42
    goto/16 :goto_1

    .line 38
    :pswitch_6
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 39
    goto/16 :goto_1

    .line 35
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    invoke-static {v10}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v3

    .line 36
    goto/16 :goto_1

    .line 32
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 33
    goto/16 :goto_1

    .line 63
    :cond_1
    new-instance v10, Lcom/airbnb/lottie/model/content/PolystarShape;

    move-object v11, v10

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v11 .. v20}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v10

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_8
        0x72 -> :sswitch_7
        0xd29 -> :sswitch_6
        0xd2a -> :sswitch_5
        0xdbf -> :sswitch_4
        0xde3 -> :sswitch_3
        0xde4 -> :sswitch_2
        0xe04 -> :sswitch_1
        0xe66 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
