.class public Lcom/airbnb/lottie/parser/ShapeDataParser;
.super Ljava/lang/Object;
.source "ShapeDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/airbnb/lottie/parser/ShapeDataParser;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/ShapeDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/ShapeData;
    .locals 16
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    .local v0, "closed":Z
    const/4 v1, 0x0

    .line 30
    .local v1, "pointsArray":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v2, 0x0

    .line 31
    .local v2, "inTangents":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v3, 0x0

    .line 32
    .local v3, "outTangents":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x63

    if-eq v8, v9, :cond_4

    const/16 v5, 0x69

    if-eq v8, v5, :cond_3

    const/16 v5, 0x6f

    if-eq v8, v5, :cond_2

    const/16 v5, 0x76

    if-eq v8, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v5, v6

    goto :goto_2

    :cond_2
    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :cond_3
    const-string v5, "i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x2

    goto :goto_2

    :cond_4
    const-string v6, "c"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v7

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 46
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 43
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v2

    .line 44
    goto :goto_3

    .line 40
    :pswitch_2
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v1

    .line 41
    goto :goto_3

    .line 37
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    .line 38
    nop

    .line 47
    :goto_3
    goto :goto_0

    .line 51
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v7, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-ne v4, v7, :cond_7

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    .line 57
    :cond_7
    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    .line 61
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 62
    new-instance v4, Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object v4

    .line 65
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 66
    .local v4, "length":I
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 67
    .local v7, "vertex":Landroid/graphics/PointF;
    move-object v8, v7

    .line 68
    .local v8, "initialPoint":Landroid/graphics/PointF;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v9, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    nop

    .line 70
    .local v6, "i":I
    :goto_4
    if-ge v6, v4, :cond_9

    .line 71
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    check-cast v7, Landroid/graphics/PointF;

    .line 72
    add-int/lit8 v10, v6, -0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 73
    .local v10, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v11, v6, -0x1

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 74
    .local v11, "cp1":Landroid/graphics/PointF;
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    .line 75
    .local v12, "cp2":Landroid/graphics/PointF;
    invoke-static {v10, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v13

    .line 76
    .local v13, "shapeCp1":Landroid/graphics/PointF;
    invoke-static {v7, v12}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v14

    .line 77
    .local v14, "shapeCp2":Landroid/graphics/PointF;
    new-instance v15, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v15, v13, v14, v7}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v10    # "previousVertex":Landroid/graphics/PointF;
    .end local v11    # "cp1":Landroid/graphics/PointF;
    .end local v12    # "cp2":Landroid/graphics/PointF;
    .end local v13    # "shapeCp1":Landroid/graphics/PointF;
    .end local v14    # "shapeCp2":Landroid/graphics/PointF;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 80
    .end local v6    # "i":I
    :cond_9
    if-eqz v0, :cond_a

    .line 81
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/graphics/PointF;

    .line 82
    add-int/lit8 v6, v4, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 83
    .local v6, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v10, v4, -0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 84
    .local v10, "cp1":Landroid/graphics/PointF;
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 86
    .local v5, "cp2":Landroid/graphics/PointF;
    invoke-static {v6, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    .line 87
    .local v11, "shapeCp1":Landroid/graphics/PointF;
    invoke-static {v7, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v12

    .line 89
    .local v12, "shapeCp2":Landroid/graphics/PointF;
    new-instance v13, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v13, v11, v12, v7}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v5    # "cp2":Landroid/graphics/PointF;
    .end local v6    # "previousVertex":Landroid/graphics/PointF;
    .end local v10    # "cp1":Landroid/graphics/PointF;
    .end local v11    # "shapeCp1":Landroid/graphics/PointF;
    .end local v12    # "shapeCp2":Landroid/graphics/PointF;
    :cond_a
    new-instance v5, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-direct {v5, v8, v0, v9}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object v5

    .line 58
    .end local v4    # "length":I
    .end local v7    # "vertex":Landroid/graphics/PointF;
    .end local v8    # "initialPoint":Landroid/graphics/PointF;
    .end local v9    # "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Shape data was missing information."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/ShapeDataParser;->parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/ShapeData;

    move-result-object p1

    return-object p1
.end method
