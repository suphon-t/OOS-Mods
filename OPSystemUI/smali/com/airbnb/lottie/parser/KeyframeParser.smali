.class Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "KeyframeParser.java"


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f

.field private static pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .param p0, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-enter v0

    .line 42
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;
    .locals 1
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .param p4, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;Z)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    .local p3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    if-eqz p4, :cond_0

    .line 58
    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseStaticValue(Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method private static parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 19
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    .local p3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 70
    move-object/from16 v3, p3

    const/4 v0, 0x0

    .line 71
    .local v0, "cp1":Landroid/graphics/PointF;
    const/4 v4, 0x0

    .line 72
    .local v4, "cp2":Landroid/graphics/PointF;
    const/4 v5, 0x0

    .line 73
    .local v5, "startFrame":F
    const/4 v6, 0x0

    .line 74
    .local v6, "startValue":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 75
    .local v7, "endValue":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 76
    .local v8, "hold":Z
    const/4 v9, 0x0

    .line 79
    .local v9, "interpolator":Landroid/view/animation/Interpolator;
    const/4 v10, 0x0

    .line 80
    .local v10, "pathCp1":Landroid/graphics/PointF;
    const/4 v11, 0x0

    .line 82
    .local v11, "pathCp2":Landroid/graphics/PointF;
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 83
    move/from16 v17, v5

    move-object v15, v10

    move-object v14, v11

    move-object v5, v4

    .line 83
    .end local v0    # "cp1":Landroid/graphics/PointF;
    .end local v10    # "pathCp1":Landroid/graphics/PointF;
    .end local v11    # "pathCp2":Landroid/graphics/PointF;
    .local v4, "cp1":Landroid/graphics/PointF;
    .local v5, "cp2":Landroid/graphics/PointF;
    .local v14, "pathCp2":Landroid/graphics/PointF;
    .local v15, "pathCp1":Landroid/graphics/PointF;
    .local v17, "startFrame":F
    :goto_0
    move-object v4, v0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v10, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string/jumbo v11, "to"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x6

    goto :goto_2

    :sswitch_1
    const-string/jumbo v11, "ti"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x7

    goto :goto_2

    :sswitch_2
    const-string/jumbo v11, "t"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v10, v12

    goto :goto_2

    :sswitch_3
    const-string v11, "s"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v10, v13

    goto :goto_2

    :sswitch_4
    const-string v11, "o"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_5
    const-string v11, "i"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_6
    const-string v11, "h"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_7
    const-string v11, "e"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x2

    :cond_0
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 107
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 108
    .end local v14    # "pathCp2":Landroid/graphics/PointF;
    .local v0, "pathCp2":Landroid/graphics/PointF;
    nop

    .line 83
    move-object v14, v0

    goto :goto_1

    .line 104
    .end local v0    # "pathCp2":Landroid/graphics/PointF;
    .restart local v14    # "pathCp2":Landroid/graphics/PointF;
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 105
    .end local v15    # "pathCp1":Landroid/graphics/PointF;
    .local v0, "pathCp1":Landroid/graphics/PointF;
    nop

    .line 83
    move-object v15, v0

    goto :goto_1

    .line 101
    .end local v0    # "pathCp1":Landroid/graphics/PointF;
    .restart local v15    # "pathCp1":Landroid/graphics/PointF;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    if-ne v0, v13, :cond_1

    move v12, v13

    nop

    :cond_1
    move v0, v12

    .line 102
    .end local v8    # "hold":Z
    .local v0, "hold":Z
    nop

    .line 83
    move v8, v0

    goto/16 :goto_1

    .line 98
    .end local v0    # "hold":Z
    .restart local v8    # "hold":Z
    :pswitch_3
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 99
    .end local v5    # "cp2":Landroid/graphics/PointF;
    .local v0, "cp2":Landroid/graphics/PointF;
    nop

    .line 83
    move-object v5, v0

    goto/16 :goto_1

    .line 95
    .end local v0    # "cp2":Landroid/graphics/PointF;
    .restart local v5    # "cp2":Landroid/graphics/PointF;
    :pswitch_4
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 96
    .end local v4    # "cp1":Landroid/graphics/PointF;
    .local v0, "cp1":Landroid/graphics/PointF;
    goto/16 :goto_0

    .line 92
    .end local v0    # "cp1":Landroid/graphics/PointF;
    .restart local v4    # "cp1":Landroid/graphics/PointF;
    :pswitch_5
    invoke-interface {v3, v1, v2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .end local v7    # "endValue":Ljava/lang/Object;, "TT;"
    .local v0, "endValue":Ljava/lang/Object;, "TT;"
    nop

    .line 83
    move-object v7, v0

    goto/16 :goto_1

    .line 89
    .end local v0    # "endValue":Ljava/lang/Object;, "TT;"
    .restart local v7    # "endValue":Ljava/lang/Object;, "TT;"
    :pswitch_6
    invoke-interface {v3, v1, v2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .end local v6    # "startValue":Ljava/lang/Object;, "TT;"
    .local v0, "startValue":Ljava/lang/Object;, "TT;"
    nop

    .line 83
    move-object v6, v0

    goto/16 :goto_1

    .line 86
    .end local v0    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v6    # "startValue":Ljava/lang/Object;, "TT;"
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v0, v10

    .line 87
    .end local v17    # "startFrame":F
    .local v0, "startFrame":F
    nop

    .line 83
    move/from16 v17, v0

    goto/16 :goto_1

    .line 113
    .end local v0    # "startFrame":F
    .restart local v17    # "startFrame":F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 115
    if-eqz v8, :cond_3

    .line 116
    move-object v0, v6

    .line 118
    .end local v7    # "endValue":Ljava/lang/Object;, "TT;"
    .local v0, "endValue":Ljava/lang/Object;, "TT;"
    sget-object v7, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 146
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v18, v7

    move-object v7, v0

    move-object/from16 v0, v18

    goto :goto_4

    .line 119
    .end local v0    # "endValue":Ljava/lang/Object;, "TT;"
    .local v7, "endValue":Ljava/lang/Object;, "TT;"
    .restart local v9    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 120
    iget v0, v4, Landroid/graphics/PointF;->x:F

    neg-float v10, v2

    invoke-static {v0, v10, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 121
    iget v0, v4, Landroid/graphics/PointF;->y:F

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v11, -0x3d380000    # -100.0f

    invoke-static {v0, v11, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 122
    iget v0, v5, Landroid/graphics/PointF;->x:F

    neg-float v12, v2

    invoke-static {v0, v12, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 123
    iget v0, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v11, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v5, Landroid/graphics/PointF;->y:F

    .line 124
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->y:F

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v10, v11, v12}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v10

    .line 125
    .local v10, "hash":I
    invoke-static {v10}, Lcom/airbnb/lottie/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v11

    .line 126
    .local v11, "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    if-eqz v11, :cond_4

    .line 127
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/animation/Interpolator;

    .line 129
    :cond_4
    if-eqz v11, :cond_5

    if-nez v9, :cond_6

    .line 130
    :cond_5
    iget v0, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v2

    iget v12, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v12, v2

    iget v13, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v2

    iget v1, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v2

    invoke-static {v0, v12, v13, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 133
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v10, v0}, Lcom/airbnb/lottie/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_3

    .line 134
    :catch_0
    move-exception v0

    .line 142
    .end local v10    # "hash":I
    .end local v11    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :cond_6
    :goto_3
    nop

    .line 146
    move-object v0, v9

    goto :goto_4

    .line 143
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 146
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    :goto_4
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v16, 0x0

    move-object v10, v1

    move-object/from16 v11, p0

    move-object v12, v6

    move-object v13, v7

    move-object v9, v14

    move-object v14, v0

    .line 146
    .end local v14    # "pathCp2":Landroid/graphics/PointF;
    .local v9, "pathCp2":Landroid/graphics/PointF;
    move-object v2, v15

    move/from16 v15, v17

    .line 146
    .end local v15    # "pathCp1":Landroid/graphics/PointF;
    .local v2, "pathCp1":Landroid/graphics/PointF;
    invoke-direct/range {v10 .. v16}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 148
    .local v1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    iput-object v2, v1, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 149
    iput-object v9, v1, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 150
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_7
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6f -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0xe75 -> :sswitch_1
        0xe7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static parseStaticValue(Landroid/util/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    .local p2, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    invoke-interface {p2, p0, p1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, "value":Ljava/lang/Object;, "TT;"
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method private static pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    .line 34
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .param p0, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "interpolator":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
