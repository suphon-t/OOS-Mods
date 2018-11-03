.class Lcom/airbnb/lottie/parser/ShapeStrokeParser;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;
    .locals 21
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
    .local v1, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v2, 0x0

    .line 24
    .local v2, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v3, 0x0

    .line 25
    .local v3, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v4, 0x0

    .line 26
    .local v4, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    const/4 v5, 0x0

    .line 27
    .local v5, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/4 v6, 0x0

    .line 28
    .local v6, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v7, 0x0

    .line 30
    .local v7, "miterLimit":F
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v8, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v12, 0x6f

    const/4 v15, 0x1

    if-eq v10, v12, :cond_6

    const/16 v11, 0x77

    if-eq v10, v11, :cond_5

    const/16 v11, 0xd77

    if-eq v10, v11, :cond_4

    const/16 v11, 0xd7e

    if-eq v10, v11, :cond_3

    const/16 v11, 0xd9f

    if-eq v10, v11, :cond_2

    const/16 v11, 0xdbf

    if-eq v10, v11, :cond_1

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v10, "d"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x7

    goto :goto_2

    :pswitch_1
    const-string v10, "c"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v11, v15

    goto :goto_2

    :cond_1
    const-string v10, "nm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    const-string v10, "ml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x6

    goto :goto_2

    :cond_3
    const-string v10, "lj"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x5

    goto :goto_2

    :cond_4
    const-string v10, "lc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x4

    goto :goto_2

    :cond_5
    const-string/jumbo v10, "w"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x2

    goto :goto_2

    :cond_6
    const-string v10, "o"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v11, 0x3

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v11, -0x1

    :goto_2
    packed-switch v11, :pswitch_data_1

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 56
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 57
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 58
    const/4 v9, 0x0

    .line 59
    .local v9, "n":Ljava/lang/String;
    const/4 v10, 0x0

    .line 61
    .local v10, "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 62
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x6e

    if-eq v13, v14, :cond_9

    const/16 v14, 0x76

    if-eq v13, v14, :cond_8

    goto :goto_5

    :cond_8
    const-string/jumbo v13, "v"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v15

    goto :goto_6

    :cond_9
    const-string v13, "n"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v11, -0x1

    :goto_6
    packed-switch v11, :pswitch_data_2

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 68
    :pswitch_3
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    .line 69
    goto :goto_4

    .line 65
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 66
    goto :goto_4

    .line 74
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 76
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v13, 0x64

    if-eq v11, v13, :cond_e

    const/16 v13, 0x67

    if-eq v11, v13, :cond_d

    if-eq v11, v12, :cond_c

    goto :goto_7

    :cond_c
    const-string v11, "o"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x0

    goto :goto_8

    :cond_d
    const-string v11, "g"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x2

    goto :goto_8

    :cond_e
    const-string v11, "d"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    move v11, v15

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v11, -0x1

    :goto_8
    packed-switch v11, :pswitch_data_3

    .end local v9    # "n":Ljava/lang/String;
    .end local v10    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    goto :goto_9

    .line 82
    .restart local v9    # "n":Ljava/lang/String;
    .restart local v10    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :pswitch_5
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v9    # "n":Ljava/lang/String;
    .end local v10    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    goto :goto_9

    .line 78
    .restart local v9    # "n":Ljava/lang/String;
    .restart local v10    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :pswitch_6
    move-object v6, v10

    .line 79
    nop

    .line 85
    .end local v9    # "n":Ljava/lang/String;
    .end local v10    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_9
    goto/16 :goto_3

    .line 86
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 88
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v15, :cond_0

    .line 90
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 53
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v9

    double-to-float v7, v9

    .line 54
    goto/16 :goto_0

    .line 50
    :pswitch_8
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    sub-int/2addr v10, v15

    aget-object v5, v9, v10

    .line 51
    goto/16 :goto_0

    .line 47
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    sub-int/2addr v10, v15

    aget-object v4, v9, v10

    .line 48
    goto/16 :goto_0

    .line 44
    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    .line 45
    goto/16 :goto_0

    .line 41
    :pswitch_b
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    .line 42
    goto/16 :goto_0

    .line 38
    :pswitch_c
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v1

    .line 39
    goto/16 :goto_0

    .line 35
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 36
    goto/16 :goto_0

    .line 98
    :cond_11
    new-instance v19, Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-object/from16 v9, v19

    move-object v10, v0

    move-object v11, v6

    move-object v12, v8

    move-object v13, v1

    move-object v14, v3

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v7

    invoke-direct/range {v9 .. v18}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;F)V

    return-object v19

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
