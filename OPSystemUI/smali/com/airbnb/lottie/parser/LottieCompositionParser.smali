.class public Lcom/airbnb/lottie/parser/LottieCompositionParser;
.super Ljava/lang/Object;
.source "LottieCompositionParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 28
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    move-object/from16 v0, p0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    .line 28
    .local v1, "scale":F
    const/4 v2, 0x0

    .line 29
    .local v2, "startFrame":F
    const/4 v3, 0x0

    .line 30
    .local v3, "endFrame":F
    const/4 v4, 0x0

    .line 31
    .local v4, "frameRate":F
    new-instance v5, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v5}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 32
    .local v5, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 33
    .local v15, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v6, 0x0

    .line 34
    .local v6, "width":I
    const/4 v7, 0x0

    .line 35
    .local v7, "height":I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v14, v8

    .line 36
    .local v14, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v13, v8

    .line 37
    .local v13, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v12, v8

    .line 38
    .local v12, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    new-instance v8, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v8}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    move-object v11, v8

    .line 40
    .local v11, "characters":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    new-instance v8, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v8}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    move-object v10, v8

    .line 42
    .local v10, "composition":Lcom/airbnb/lottie/LottieComposition;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 43
    move/from16 v17, v3

    move/from16 v18, v4

    move v3, v7

    move v4, v2

    move v2, v6

    .line 43
    .end local v6    # "width":I
    .end local v7    # "height":I
    .local v2, "width":I
    .local v3, "height":I
    .local v4, "startFrame":F
    .local v17, "endFrame":F
    .local v18, "frameRate":F
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v16, 0x1

    const/16 v19, 0x2

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v9, "fonts"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v9, "chars"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x9

    goto :goto_2

    :sswitch_2
    const-string v9, "op"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_3
    const-string v9, "ip"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move/from16 v6, v19

    goto :goto_2

    :sswitch_4
    const-string v9, "fr"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v9, "w"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_2

    :sswitch_6
    const-string/jumbo v9, "v"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_7
    const-string v9, "h"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move/from16 v6, v16

    goto :goto_2

    :sswitch_8
    const-string v9, "layers"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_9
    const-string v9, "assets"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x7

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v8

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 81
    :pswitch_0
    invoke-static {v0, v10, v11}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseChars(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroid/support/v4/util/SparseArrayCompat;)V

    .line 82
    goto/16 :goto_0

    .line 78
    :pswitch_1
    invoke-static {v0, v12}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseFonts(Landroid/util/JsonReader;Ljava/util/Map;)V

    .line 79
    goto/16 :goto_0

    .line 75
    :pswitch_2
    invoke-static {v0, v10, v14, v13}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseAssets(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V

    .line 76
    goto/16 :goto_0

    .line 72
    :pswitch_3
    invoke-static {v0, v10, v15, v5}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseLayers(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroid/support/v4/util/LongSparseArray;)V

    .line 73
    goto/16 :goto_0

    .line 61
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "version":Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "versions":[Ljava/lang/String;
    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 64
    .local v7, "majorVersion":I
    aget-object v9, v8, v16

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 65
    .local v9, "minorVersion":I
    move-object/from16 v26, v6

    aget-object v6, v8, v19

    .line 65
    .end local v6    # "version":Ljava/lang/String;
    .local v26, "version":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 66
    .local v6, "patchVersion":I
    const/16 v23, 0x4

    const/16 v24, 0x4

    const/16 v25, 0x0

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v6

    invoke-static/range {v20 .. v25}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v16

    if-nez v16, :cond_0

    .line 68
    move/from16 v27, v6

    const-string v6, "Lottie only supports bodymovin >= 4.4.0"

    .line 68
    .end local v6    # "patchVersion":I
    .local v27, "patchVersion":I
    invoke-virtual {v10, v6}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    .end local v7    # "majorVersion":I
    .end local v8    # "versions":[Ljava/lang/String;
    .end local v9    # "minorVersion":I
    .end local v26    # "version":Ljava/lang/String;
    .end local v27    # "patchVersion":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    .line 59
    .end local v18    # "frameRate":F
    .local v6, "frameRate":F
    nop

    .line 43
    move/from16 v18, v6

    goto/16 :goto_0

    .line 55
    .end local v6    # "frameRate":F
    .restart local v18    # "frameRate":F
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3c23d70a    # 0.01f

    sub-float/2addr v6, v7

    .line 56
    .end local v17    # "endFrame":F
    .local v6, "endFrame":F
    nop

    .line 43
    move/from16 v17, v6

    goto/16 :goto_0

    .line 52
    .end local v6    # "endFrame":F
    .restart local v17    # "endFrame":F
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v4, v6

    .line 53
    goto/16 :goto_0

    .line 49
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 50
    goto/16 :goto_0

    .line 46
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 47
    goto/16 :goto_0

    .line 87
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 89
    int-to-float v6, v2

    mul-float/2addr v6, v1

    float-to-int v9, v6

    .line 90
    .local v9, "scaledWidth":I
    int-to-float v6, v3

    mul-float/2addr v6, v1

    float-to-int v8, v6

    .line 91
    .local v8, "scaledHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v6

    .line 93
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object v6, v10

    move/from16 v19, v8

    move v8, v4

    .line 93
    .end local v8    # "scaledHeight":I
    .local v19, "scaledHeight":I
    move/from16 v20, v9

    move/from16 v9, v17

    .line 93
    .end local v9    # "scaledWidth":I
    .local v20, "scaledWidth":I
    move-object/from16 v21, v10

    move/from16 v10, v18

    .line 93
    .end local v10    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .local v21, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object/from16 v22, v11

    move-object v11, v15

    .line 93
    .end local v11    # "characters":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .local v22, "characters":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    move-object/from16 v23, v12

    move-object v12, v5

    .line 93
    .end local v12    # "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    .local v23, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    move-object/from16 v24, v13

    move-object v13, v14

    .line 93
    .end local v13    # "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    .local v24, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    move-object/from16 v25, v14

    move-object/from16 v14, v24

    .line 93
    .end local v14    # "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    .local v25, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    move-object/from16 v26, v15

    move-object/from16 v15, v22

    .line 93
    .end local v15    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local v26, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move-object/from16 v16, v23

    invoke-virtual/range {v6 .. v16}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/support/v4/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/support/v4/util/SparseArrayCompat;Ljava/util/Map;)V

    .line 96
    return-object v21

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_9
        -0x42252abe -> :sswitch_8
        0x68 -> :sswitch_7
        0x76 -> :sswitch_6
        0x77 -> :sswitch_5
        0xccc -> :sswitch_4
        0xd27 -> :sswitch_3
        0xde1 -> :sswitch_2
        0x5a3d7dd -> :sswitch_1
        0x5d17e04 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method private static parseAssets(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V
    .locals 14
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    .local p2, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    .local p3, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 123
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v2, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v2}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 129
    .local v2, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v3, 0x0

    .line 130
    .local v3, "width":I
    const/4 v4, 0x0

    .line 131
    .local v4, "height":I
    const/4 v5, 0x0

    .line 132
    .local v5, "imageFileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 133
    .local v6, "relativeFolder":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 134
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 135
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x42252abe

    if-eq v9, v10, :cond_5

    const/16 v10, 0x68

    if-eq v9, v10, :cond_4

    const/16 v10, 0x70

    if-eq v9, v10, :cond_3

    const/16 v10, 0x75

    if-eq v9, v10, :cond_2

    const/16 v10, 0x77

    if-eq v9, v10, :cond_1

    const/16 v10, 0xd1b

    if-eq v9, v10, :cond_0

    goto :goto_2

    :cond_0
    const-string v9, "id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    const-string/jumbo v9, "w"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x2

    goto :goto_2

    :cond_2
    const-string/jumbo v9, "u"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x5

    goto :goto_2

    :cond_3
    const-string v9, "p"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x4

    goto :goto_2

    :cond_4
    const-string v9, "h"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x3

    goto :goto_2

    :cond_5
    const-string v9, "layers"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x1

    :cond_6
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 161
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 159
    goto :goto_1

    .line 155
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    .line 156
    goto :goto_1

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    .line 153
    goto :goto_1

    .line 149
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 150
    goto :goto_1

    .line 140
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 141
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 142
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v7

    .line 143
    .local v7, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9, v7}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 144
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v7    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    goto :goto_3

    .line 146
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 147
    goto/16 :goto_1

    .line 137
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 138
    goto/16 :goto_1

    .line 164
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 165
    if-eqz v5, :cond_9

    .line 166
    new-instance v13, Lcom/airbnb/lottie/LottieImageAsset;

    move-object v7, v13

    move v8, v3

    move v9, v4

    move-object v10, v0

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v7, "image":Lcom/airbnb/lottie/LottieImageAsset;
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v7    # "image":Lcom/airbnb/lottie/LottieImageAsset;
    nop

    .line 172
    move-object/from16 v7, p2

    goto :goto_4

    .line 170
    :cond_9
    move-object/from16 v9, p3

    move-object/from16 v7, p2

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v2    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageFileName":Ljava/lang/String;
    .end local v6    # "relativeFolder":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 173
    :cond_a
    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 174
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseChars(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroid/support/v4/util/SparseArrayCompat;)V
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    .local p2, "characters":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 200
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/FontCharacterParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    move-result-object v0

    .line 202
    .local v0, "character":Lcom/airbnb/lottie/model/FontCharacter;
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 203
    .end local v0    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 205
    return-void
.end method

.method private static parseFonts(Landroid/util/JsonReader;Ljava/util/Map;)V
    .locals 4
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    .local p1, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 179
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 183
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-static {p0}, Lcom/airbnb/lottie/parser/FontParser;->parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/model/Font;

    move-result-object v0

    .line 185
    .local v0, "font":Lcom/airbnb/lottie/model/Font;
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v0    # "font":Lcom/airbnb/lottie/model/Font;
    goto :goto_2

    .line 187
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 188
    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 194
    return-void
.end method

.method private static parseLayers(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroid/support/v4/util/LongSparseArray;)V
    .locals 4
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    .local p2, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p3, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "imageCount":I
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    .line 105
    .local v1, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Image:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v2, v3, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 108
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 111
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/L;->warn(Ljava/lang/String;)V

    .line 116
    .end local v1    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    :cond_1
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 118
    return-void
.end method
