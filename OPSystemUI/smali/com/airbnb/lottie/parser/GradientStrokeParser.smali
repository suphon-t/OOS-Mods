.class Lcom/airbnb/lottie/parser/GradientStrokeParser;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .locals 28
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 26
    .local v1, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    const/4 v2, 0x0

    .line 27
    .local v2, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v3, 0x0

    .line 28
    .local v3, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    const/4 v4, 0x0

    .line 29
    .local v4, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/4 v5, 0x0

    .line 30
    .local v5, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/4 v6, 0x0

    .line 31
    .local v6, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v7, 0x0

    .line 32
    .local v7, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    const/4 v8, 0x0

    .line 33
    .local v8, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/4 v9, 0x0

    .line 34
    .local v9, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    .line 37
    .local v10, "miterLimit":F
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v11, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v13, "nm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v13, "ml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x9

    goto :goto_2

    :sswitch_2
    const-string v13, "lj"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x8

    goto :goto_2

    :sswitch_3
    const-string v13, "lc"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x7

    goto :goto_2

    :sswitch_4
    const-string/jumbo v13, "w"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x6

    goto :goto_2

    :sswitch_5
    const-string/jumbo v13, "t"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x3

    goto :goto_2

    :sswitch_6
    const-string v13, "s"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x4

    goto :goto_2

    :sswitch_7
    const-string v13, "o"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_8
    const-string v13, "g"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_2

    :sswitch_9
    const-string v13, "e"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x5

    goto :goto_2

    :sswitch_a
    const-string v13, "d"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xa

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v12, -0x1

    :goto_2
    packed-switch v12, :pswitch_data_0

    .line 118
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 86
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 87
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 88
    const/4 v12, 0x0

    .line 89
    .local v12, "n":Ljava/lang/String;
    const/4 v13, 0x0

    .line 90
    .local v13, "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 91
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v14

    move-object/from16 v26, v9

    .line 92
    .end local v9    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v26, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/16 v9, 0x6e

    if-eq v14, v9, :cond_2

    const/16 v9, 0x76

    if-eq v14, v9, :cond_1

    goto :goto_5

    :cond_1
    const-string/jumbo v9, "v"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_6

    :cond_2
    const-string v9, "n"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_6

    :cond_3
    :goto_5
    const/4 v9, -0x1

    :goto_6
    packed-switch v9, :pswitch_data_1

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 97
    :pswitch_1
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    .line 98
    .end local v13    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v9, "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    nop

    .line 91
    move-object v13, v9

    goto :goto_7

    .line 94
    .end local v9    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v13    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 95
    .end local v12    # "n":Ljava/lang/String;
    .local v9, "n":Ljava/lang/String;
    nop

    .line 91
    move-object v12, v9

    .line 91
    .end local v9    # "n":Ljava/lang/String;
    .restart local v12    # "n":Ljava/lang/String;
    :goto_7
    move-object/from16 v9, v26

    goto :goto_4

    .line 103
    .end local v26    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v9, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_4
    move-object/from16 v26, v9

    .line 103
    .end local v9    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v26    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 105
    const-string v9, "o"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 106
    move-object v9, v13

    .line 106
    .end local v26    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v9    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    goto :goto_8

    .line 107
    .end local v9    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v26    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_5
    const-string v9, "d"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "g"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 108
    :cond_6
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v12    # "n":Ljava/lang/String;
    .end local v13    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_7
    move-object/from16 v9, v26

    .line 110
    .end local v26    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v9    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_8
    goto :goto_3

    .line 111
    :cond_8
    move-object/from16 v26, v9

    .line 111
    .end local v9    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v26    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 112
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_9

    .line 114
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_9
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v9, v26

    goto/16 :goto_0

    .line 83
    .end local v26    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v9    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v10, v12

    .line 84
    goto :goto_a

    .line 80
    :pswitch_4
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    aget-object v8, v12, v13

    .line 81
    goto :goto_a

    .line 77
    :pswitch_5
    const/4 v14, 0x1

    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v13

    sub-int/2addr v13, v14

    aget-object v7, v12, v13

    .line 78
    goto :goto_a

    .line 74
    :pswitch_6
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    .line 75
    goto :goto_a

    .line 71
    :pswitch_7
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v5

    .line 72
    goto :goto_a

    .line 68
    :pswitch_8
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v4

    .line 69
    goto :goto_a

    .line 65
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    sget-object v12, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_9

    :cond_a
    sget-object v12, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_9
    move-object v3, v12

    .line 66
    goto :goto_a

    .line 62
    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    .line 63
    nop

    .line 37
    :goto_a
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    goto/16 :goto_0

    .line 45
    :pswitch_b
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    .line 46
    .local v14, "points":I
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 47
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x6b

    if-eq v12, v13, :cond_c

    const/16 v13, 0x70

    if-eq v12, v13, :cond_b

    goto :goto_c

    :cond_b
    const-string v12, "p"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    goto :goto_d

    :cond_c
    const-string v12, "k"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v12, -0x1

    :goto_d
    packed-switch v12, :pswitch_data_2

    .line 56
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_e

    .line 53
    :pswitch_c
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-static {v15, v13, v14}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v1

    .line 54
    goto :goto_e

    .line 50
    :pswitch_d
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    .line 51
    .end local v14    # "points":I
    .local v12, "points":I
    nop

    .line 47
    move v14, v12

    .line 47
    .end local v12    # "points":I
    .restart local v14    # "points":I
    :goto_e
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_b

    .line 59
    :cond_e
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 60
    goto/16 :goto_0

    .line 42
    .end local v14    # "points":I
    :pswitch_e
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 43
    goto/16 :goto_0

    .line 122
    :cond_f
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    new-instance v25, Lcom/airbnb/lottie/model/content/GradientStroke;

    move-object/from16 v12, v25

    move-object v13, v0

    move-object v14, v3

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v9

    invoke-direct/range {v12 .. v24}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v25

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_9
        0x67 -> :sswitch_8
        0x6f -> :sswitch_7
        0x73 -> :sswitch_6
        0x74 -> :sswitch_5
        0x77 -> :sswitch_4
        0xd77 -> :sswitch_3
        0xd7e -> :sswitch_2
        0xd9f -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
