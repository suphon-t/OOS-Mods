.class public Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 21
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 26
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 27
    .local v2, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    const/4 v3, 0x0

    .line 28
    .local v3, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v4, 0x0

    .line 29
    .local v4, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    const/4 v5, 0x0

    .line 30
    .local v5, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v6, 0x0

    .line 31
    .local v6, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v7, 0x0

    .line 32
    .local v7, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    .line 34
    .local v8, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v9

    sget-object v10, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v9, v10, :cond_0

    move v9, v11

    goto :goto_0

    :cond_0
    move v9, v12

    .line 35
    .local v9, "isObject":Z
    :goto_0
    if-eqz v9, :cond_1

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 38
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v14, "so"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x6

    goto :goto_3

    :sswitch_1
    const-string v14, "rz"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x3

    goto :goto_3

    :sswitch_2
    const-string v14, "eo"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x7

    goto :goto_3

    :sswitch_3
    const-string v14, "s"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    goto :goto_3

    :sswitch_4
    const-string v14, "r"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x4

    goto :goto_3

    :sswitch_5
    const-string v14, "p"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v11

    goto :goto_3

    :sswitch_6
    const-string v14, "o"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x5

    goto :goto_3

    :sswitch_7
    const-string v14, "a"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v12

    goto :goto_3

    :cond_2
    :goto_2
    move v10, v13

    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 70
    :pswitch_0
    invoke-static {v0, v1, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    .line 71
    goto :goto_1

    .line 67
    :pswitch_1
    invoke-static {v0, v1, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    .line 68
    goto :goto_1

    .line 64
    :pswitch_2
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v6

    .line 65
    goto :goto_1

    .line 59
    :pswitch_3
    const-string v10, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v1, v10}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 61
    :pswitch_4
    invoke-static {v0, v1, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    .line 62
    goto/16 :goto_1

    .line 56
    :pswitch_5
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseScale(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v4

    .line 57
    goto/16 :goto_1

    .line 52
    :pswitch_6
    nop

    .line 53
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v3

    .line 54
    goto/16 :goto_1

    .line 41
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 42
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    const-string v13, "k"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 44
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v2

    goto :goto_4

    .line 46
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 49
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 50
    goto/16 :goto_1

    .line 76
    :cond_5
    if-eqz v9, :cond_6

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 80
    :cond_6
    if-nez v2, :cond_7

    .line 83
    const-string v10, "LOTTIE"

    const-string v11, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v10, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v10}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    move-object v2, v10

    .line 88
    :cond_7
    if-nez v4, :cond_8

    .line 90
    new-instance v10, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    new-instance v11, Lcom/airbnb/lottie/value/ScaleXY;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v12}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    invoke-direct {v10, v11}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Lcom/airbnb/lottie/value/ScaleXY;)V

    move-object v4, v10

    .line 93
    :cond_8
    if-nez v6, :cond_9

    .line 95
    new-instance v10, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    invoke-direct {v10}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>()V

    move-object v6, v10

    .line 98
    :cond_9
    new-instance v10, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v13, v10

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v10

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_7
        0x6f -> :sswitch_6
        0x70 -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0xcaa -> :sswitch_2
        0xe48 -> :sswitch_1
        0xe5c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
