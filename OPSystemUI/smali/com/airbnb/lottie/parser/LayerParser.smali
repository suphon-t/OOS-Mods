.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 52
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 39
    .local v0, "layerName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 40
    .local v1, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    const/4 v2, 0x0

    .line 41
    .local v2, "refId":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 42
    .local v3, "layerId":J
    const/4 v5, 0x0

    .line 43
    .local v5, "solidWidth":I
    const/4 v6, 0x0

    .line 44
    .local v6, "solidHeight":I
    const/4 v7, 0x0

    .line 45
    .local v7, "solidColor":I
    const/4 v8, 0x0

    .line 46
    .local v8, "preCompWidth":I
    const/4 v9, 0x0

    .line 47
    .local v9, "preCompHeight":I
    const-wide/16 v10, -0x1

    .line 48
    .local v10, "parentId":J
    const/high16 v12, 0x3f800000    # 1.0f

    .line 49
    .local v12, "timeStretch":F
    const/4 v13, 0x0

    .line 50
    .local v13, "startFrame":F
    const/4 v14, 0x0

    .line 51
    .local v14, "inFrame":F
    const/16 v16, 0x0

    .line 52
    .local v16, "outFrame":F
    const/16 v17, 0x0

    .line 54
    .local v17, "cl":Ljava/lang/String;
    sget-object v18, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->None:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 55
    .local v18, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    const/16 v19, 0x0

    .line 56
    .local v19, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    const/16 v20, 0x0

    .line 57
    .local v20, "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    const/16 v21, 0x0

    .line 58
    .local v21, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    const/16 v22, 0x0

    .line 60
    .local v22, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v24, v0

    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .end local v0    # "layerName":Ljava/lang/String;
    .local v24, "layerName":Ljava/lang/String;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    move-object/from16 v25, v1

    new-instance v1, Ljava/util/ArrayList;

    .line 61
    .end local v1    # "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .local v25, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 64
    move-wide/from16 v26, v3

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-wide/from16 v33, v10

    move/from16 v35, v13

    move-object/from16 v36, v18

    move-object/from16 v37, v19

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    move-object/from16 v38, v22

    move-object/from16 v13, v24

    move-object/from16 v39, v25

    move-object/from16 v25, v2

    move/from16 v24, v12

    move-object/from16 v12, v17

    .end local v2    # "refId":Ljava/lang/String;
    .end local v3    # "layerId":J
    .end local v5    # "solidWidth":I
    .end local v6    # "solidHeight":I
    .end local v7    # "solidColor":I
    .end local v8    # "preCompWidth":I
    .end local v9    # "preCompHeight":I
    .end local v10    # "parentId":J
    .end local v17    # "cl":Ljava/lang/String;
    .end local v18    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .end local v19    # "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .end local v20    # "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .end local v21    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .end local v22    # "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v12, "cl":Ljava/lang/String;
    .local v13, "layerName":Ljava/lang/String;
    .local v24, "timeStretch":F
    .local v25, "refId":Ljava/lang/String;
    .local v26, "layerId":J
    .local v28, "solidWidth":I
    .local v29, "solidHeight":I
    .local v30, "solidColor":I
    .local v31, "preCompWidth":I
    .local v32, "preCompHeight":I
    .local v33, "parentId":J
    .local v35, "startFrame":F
    .local v36, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .local v37, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .local v38, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v39, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .local v40, "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .local v41, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "masksProperties"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "refId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "ind"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v3, "ty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v3, "tt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v3, "tm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v3, "sw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "st"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_8
    const-string v3, "sr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_9
    const-string v3, "sh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "sc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "op"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_c
    const-string v3, "nm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto/16 :goto_2

    :sswitch_d
    const-string v3, "ks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_e
    const-string v3, "ip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto :goto_2

    :sswitch_f
    const-string v3, "ef"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_2

    :sswitch_10
    const-string v3, "cl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto :goto_2

    :sswitch_11
    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto :goto_2

    :sswitch_12
    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_2

    :sswitch_13
    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_2

    :sswitch_14
    const-string v3, "shapes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_15
    const-string v3, "parent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    move v2, v5

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 188
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 185
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .end local v12    # "cl":Ljava/lang/String;
    .local v2, "cl":Ljava/lang/String;
    nop

    .line 64
    move-object/from16 v11, p0

    move-object v12, v2

    goto/16 :goto_0

    .line 182
    .end local v2    # "cl":Ljava/lang/String;
    .restart local v12    # "cl":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v11, p0

    invoke-static {v11, v15, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v38

    .line 183
    goto/16 :goto_0

    .line 179
    :pswitch_2
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    .line 180
    .end local v16    # "outFrame":F
    .local v2, "outFrame":F
    nop

    .line 64
    move/from16 v16, v2

    goto/16 :goto_0

    .line 176
    .end local v2    # "outFrame":F
    .restart local v16    # "outFrame":F
    :pswitch_3
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    .line 177
    .end local v14    # "inFrame":F
    .local v2, "inFrame":F
    nop

    .line 64
    move v14, v2

    goto/16 :goto_0

    .line 173
    .end local v2    # "inFrame":F
    .restart local v14    # "inFrame":F
    :pswitch_4
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 174
    .end local v32    # "preCompHeight":I
    .local v2, "preCompHeight":I
    nop

    .line 64
    move/from16 v32, v2

    goto/16 :goto_0

    .line 170
    .end local v2    # "preCompHeight":I
    .restart local v32    # "preCompHeight":I
    :pswitch_5
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 171
    .end local v31    # "preCompWidth":I
    .local v2, "preCompWidth":I
    nop

    .line 64
    move/from16 v31, v2

    goto/16 :goto_0

    .line 167
    .end local v2    # "preCompWidth":I
    .restart local v31    # "preCompWidth":I
    :pswitch_6
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    .line 168
    .end local v35    # "startFrame":F
    .local v2, "startFrame":F
    nop

    .line 64
    move/from16 v35, v2

    goto/16 :goto_0

    .line 164
    .end local v2    # "startFrame":F
    .restart local v35    # "startFrame":F
    :pswitch_7
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    .line 165
    .end local v24    # "timeStretch":F
    .local v2, "timeStretch":F
    nop

    .line 64
    move/from16 v24, v2

    goto/16 :goto_0

    .line 142
    .end local v2    # "timeStretch":F
    .restart local v24    # "timeStretch":F
    :pswitch_8
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v2, "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 146
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v7, 0xdbf

    if-eq v4, v7, :cond_1

    goto :goto_5

    :cond_1
    const-string v4, "nm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_6

    :cond_2
    :goto_5
    move v3, v5

    :goto_6
    if-eqz v3, :cond_3

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 149
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    goto :goto_4

    .line 156
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_3

    .line 158
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 162
    goto/16 :goto_0

    .line 119
    .end local v2    # "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 120
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v7, 0x61

    if-eq v3, v7, :cond_7

    const/16 v7, 0x64

    if-eq v3, v7, :cond_6

    goto :goto_8

    :cond_6
    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v6

    goto :goto_9

    :cond_7
    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_9

    :cond_8
    :goto_8
    move v2, v5

    :goto_9
    packed-switch v2, :pswitch_data_1

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 126
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 128
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v2

    .line 130
    .end local v41    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .local v2, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    move-object/from16 v41, v2

    .line 130
    .end local v2    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .restart local v41    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    :cond_9
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a

    .line 133
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 134
    goto :goto_7

    .line 123
    :pswitch_b
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseDocumentData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v40

    .line 124
    goto :goto_7

    .line 139
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 140
    goto/16 :goto_0

    .line 109
    :pswitch_c
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 110
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 111
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v2

    .line 112
    .local v2, "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    if-eqz v2, :cond_c

    .line 113
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v2    # "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    :cond_c
    goto :goto_b

    .line 116
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 117
    goto/16 :goto_0

    .line 102
    :pswitch_d
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 103
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 104
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/MaskParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 106
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 107
    goto/16 :goto_0

    .line 99
    :pswitch_e
    move-object/from16 v11, p0

    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    aget-object v36, v2, v3

    .line 100
    goto/16 :goto_0

    .line 96
    :pswitch_f
    move-object/from16 v11, p0

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v37

    .line 97
    goto/16 :goto_0

    .line 93
    :pswitch_10
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v30

    .line 94
    goto/16 :goto_0

    .line 90
    :pswitch_11
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 91
    .end local v29    # "solidHeight":I
    .local v2, "solidHeight":I
    nop

    .line 64
    move/from16 v29, v2

    goto/16 :goto_0

    .line 87
    .end local v2    # "solidHeight":I
    .restart local v29    # "solidHeight":I
    :pswitch_12
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 88
    .end local v28    # "solidWidth":I
    .local v2, "solidWidth":I
    nop

    .line 64
    move/from16 v28, v2

    goto/16 :goto_0

    .line 84
    .end local v2    # "solidWidth":I
    .restart local v28    # "solidWidth":I
    :pswitch_13
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-long v2, v2

    .line 85
    .end local v33    # "parentId":J
    .local v2, "parentId":J
    nop

    .line 64
    move-wide/from16 v33, v2

    goto/16 :goto_0

    .line 76
    .end local v2    # "parentId":J
    .restart local v33    # "parentId":J
    :pswitch_14
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 77
    .local v2, "layerTypeInt":I
    sget-object v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 78
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v3

    aget-object v39, v3, v2

    goto/16 :goto_0

    .line 80
    :cond_f
    sget-object v39, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 82
    goto/16 :goto_0

    .line 73
    .end local v2    # "layerTypeInt":I
    :pswitch_15
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v25

    .line 74
    goto/16 :goto_0

    .line 70
    :pswitch_16
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-long v2, v2

    .line 71
    .end local v26    # "layerId":J
    .local v2, "layerId":J
    nop

    .line 64
    move-wide/from16 v26, v2

    goto/16 :goto_0

    .line 67
    .end local v2    # "layerId":J
    .restart local v26    # "layerId":J
    :pswitch_17
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    .line 68
    goto/16 :goto_0

    .line 191
    :cond_10
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 196
    div-float v14, v14, v24

    .line 197
    div-float v16, v16, v24

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 201
    .local v10, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    const/4 v7, 0x0

    cmpl-float v2, v14, v7

    if-lez v2, :cond_11

    .line 202
    new-instance v8, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v42, v0

    move-object v0, v8

    .end local v0    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .local v42, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    move-object/from16 v43, v1

    move-object v1, v15

    .line 202
    .end local v1    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .local v43, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 203
    .local v0, "preKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "preKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    goto :goto_d

    .line 207
    .end local v42    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v43    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .local v0, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v1    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :cond_11
    move-object/from16 v42, v0

    move-object/from16 v43, v1

    .line 207
    .end local v0    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v1    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v42    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v43    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :goto_d
    cmpl-float v0, v16, v7

    if-lez v0, :cond_12

    move/from16 v0, v16

    goto :goto_e

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    :goto_e
    move v9, v0

    .line 208
    .end local v16    # "outFrame":F
    .local v9, "outFrame":F
    new-instance v8, Lcom/airbnb/lottie/value/Keyframe;

    .line 209
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v8

    move-object v1, v15

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 210
    .local v8, "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v16, Lcom/airbnb/lottie/value/Keyframe;

    .line 213
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v16

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v7, v16

    .line 214
    .local v7, "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v0, ".ai"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ai"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 217
    :cond_13
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v15, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 220
    :cond_14
    new-instance v44, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    move-object v2, v15

    move-object v3, v13

    move-wide/from16 v4, v26

    move-object/from16 v6, v39

    move-object/from16 v46, v7

    move-object/from16 v45, v8

    move-wide/from16 v7, v33

    .end local v7    # "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    .end local v8    # "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    .local v45, "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    .local v46, "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    move/from16 v47, v9

    move-object/from16 v9, v25

    .line 220
    .end local v9    # "outFrame":F
    .local v47, "outFrame":F
    move-object/from16 v48, v10

    move-object/from16 v10, v42

    .line 220
    .end local v10    # "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    .local v48, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    move-object/from16 v11, v37

    move-object/from16 v49, v12

    move/from16 v12, v28

    .line 220
    .end local v12    # "cl":Ljava/lang/String;
    .local v49, "cl":Ljava/lang/String;
    move-object/from16 v50, v13

    move/from16 v13, v29

    .line 220
    .end local v13    # "layerName":Ljava/lang/String;
    .local v50, "layerName":Ljava/lang/String;
    move/from16 v51, v14

    move/from16 v14, v30

    .line 220
    .end local v14    # "inFrame":F
    .local v51, "inFrame":F
    move/from16 v15, v24

    move/from16 v16, v35

    move/from16 v17, v31

    move/from16 v18, v32

    move-object/from16 v19, v40

    move-object/from16 v20, v41

    move-object/from16 v21, v48

    move-object/from16 v22, v36

    move-object/from16 v23, v38

    invoke-direct/range {v0 .. v23}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v44

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b54f756 -> :sswitch_15
        -0x35db5b0e -> :sswitch_14
        0x68 -> :sswitch_13
        0x74 -> :sswitch_12
        0x77 -> :sswitch_11
        0xc69 -> :sswitch_10
        0xca1 -> :sswitch_f
        0xd27 -> :sswitch_e
        0xd68 -> :sswitch_d
        0xdbf -> :sswitch_c
        0xde1 -> :sswitch_b
        0xe50 -> :sswitch_a
        0xe55 -> :sswitch_9
        0xe5f -> :sswitch_8
        0xe61 -> :sswitch_7
        0xe64 -> :sswitch_6
        0xe79 -> :sswitch_5
        0xe80 -> :sswitch_4
        0xe85 -> :sswitch_3
        0x197df -> :sswitch_2
        0x675e90e -> :sswitch_1
        0x55ed639a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 26
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 29
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v25, Lcom/airbnb/lottie/model/layer/Layer;

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v4, "__container"

    sget-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    invoke-direct {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    sget-object v23, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->None:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-wide/16 v5, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v1, v25

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v24}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 29
    return-object v25
.end method
