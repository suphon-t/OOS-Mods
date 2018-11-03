.class Lcom/airbnb/lottie/parser/GradientFillParser;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .locals 18
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 23
    .local v1, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    const/4 v2, 0x0

    .line 24
    .local v2, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v3, 0x0

    .line 25
    .local v3, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    const/4 v4, 0x0

    .line 26
    .local v4, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/4 v5, 0x0

    .line 27
    .local v5, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/4 v6, 0x0

    .line 27
    .local v10, "fillType":Landroid/graphics/Path$FillType;
    :goto_0
    move-object v10, v6

    .line 29
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x65

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v7, v8, :cond_3

    const/16 v8, 0x67

    if-eq v7, v8, :cond_2

    const/16 v8, 0x6f

    if-eq v7, v8, :cond_1

    const/16 v8, 0xdbf

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string/jumbo v7, "t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    goto :goto_3

    :pswitch_1
    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    goto :goto_3

    :pswitch_2
    const-string v7, "r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x6

    goto :goto_3

    :cond_0
    const-string v7, "nm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v9

    goto :goto_3

    :cond_1
    const-string v7, "o"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_3

    :cond_2
    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v12

    goto :goto_3

    :cond_3
    const-string v7, "e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x5

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v11

    :goto_3
    packed-switch v6, :pswitch_data_1

    .line 67
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 64
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    if-ne v6, v12, :cond_5

    sget-object v6, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_4

    :cond_5
    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 65
    .end local v10    # "fillType":Landroid/graphics/Path$FillType;
    .local v6, "fillType":Landroid/graphics/Path$FillType;
    :goto_4
    nop

    .line 27
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    goto/16 :goto_0

    .line 61
    .end local v6    # "fillType":Landroid/graphics/Path$FillType;
    .restart local v10    # "fillType":Landroid/graphics/Path$FillType;
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v5

    .line 62
    goto :goto_6

    .line 58
    :pswitch_5
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v4

    .line 59
    goto :goto_6

    .line 55
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    if-ne v6, v12, :cond_6

    sget-object v6, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_5

    :cond_6
    sget-object v6, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_5
    move-object v3, v6

    .line 56
    goto :goto_6

    .line 52
    :pswitch_7
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    .line 53
    nop

    .line 27
    :goto_6
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    goto/16 :goto_1

    .line 35
    :pswitch_8
    const/4 v6, -0x1

    .line 36
    .local v6, "points":I
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 37
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v13, 0x6b

    if-eq v8, v13, :cond_8

    const/16 v13, 0x70

    if-eq v8, v13, :cond_7

    goto :goto_8

    :cond_7
    const-string v8, "p"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v9

    goto :goto_9

    :cond_8
    const-string v8, "k"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v12

    goto :goto_9

    :cond_9
    :goto_8
    move v7, v11

    :goto_9
    packed-switch v7, :pswitch_data_2

    .line 46
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 43
    :pswitch_9
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-static {v15, v14, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v1

    .line 44
    goto :goto_7

    .line 40
    :pswitch_a
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    .line 41
    goto :goto_7

    .line 49
    :cond_a
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 50
    goto/16 :goto_1

    .line 32
    .end local v6    # "points":I
    :pswitch_b
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 33
    goto/16 :goto_1

    .line 71
    :cond_b
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    new-instance v6, Lcom/airbnb/lottie/model/content/GradientFill;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v6

    move-object v8, v0

    move-object v9, v3

    move-object v11, v1

    move-object v12, v2

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v7 .. v16}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
