.class public Lcom/airbnb/lottie/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/airbnb/lottie/parser/DocumentDataParser;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/DocumentDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 30
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 17
    .local v1, "fontName":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 18
    .local v2, "size":D
    const/4 v4, 0x0

    .line 19
    .local v4, "justification":I
    const/4 v5, 0x0

    .line 20
    .local v5, "tracking":I
    const-wide/16 v6, 0x0

    .line 21
    .local v6, "lineHeight":D
    const-wide/16 v8, 0x0

    .line 22
    .local v8, "baselineShift":D
    const/4 v10, 0x0

    .line 23
    .local v10, "fillColor":I
    const/4 v11, 0x0

    .line 24
    .local v11, "strokeColor":I
    const/4 v12, 0x0

    .line 25
    .local v12, "strokeWidth":I
    const/4 v13, 0x1

    .line 27
    .local v13, "strokeOverFill":Z
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 28
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    move/from16 v29, v13

    .line 29
    .end local v13    # "strokeOverFill":Z
    .local v29, "strokeOverFill":Z
    const/16 v13, 0x66

    if-eq v15, v13, :cond_8

    const/16 v13, 0x6a

    if-eq v15, v13, :cond_7

    const/16 v13, 0xcbd

    if-eq v15, v13, :cond_6

    const/16 v13, 0xd7c

    if-eq v15, v13, :cond_5

    const/16 v13, 0xd87

    if-eq v15, v13, :cond_4

    const/16 v13, 0xdd7

    if-eq v15, v13, :cond_3

    const/16 v13, 0xe50

    if-eq v15, v13, :cond_2

    const/16 v13, 0xe64

    if-eq v15, v13, :cond_1

    const/16 v13, 0xe7e

    if-eq v15, v13, :cond_0

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string/jumbo v13, "t"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v15, 0x0

    goto/16 :goto_2

    :pswitch_1
    const-string v13, "s"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v15, 0x2

    goto :goto_2

    :cond_0
    const-string/jumbo v13, "tr"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v15, 0x4

    goto :goto_2

    :cond_1
    const-string/jumbo v13, "sw"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v15, 0x9

    goto :goto_2

    :cond_2
    const-string v13, "sc"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v15, 0x8

    goto :goto_2

    :cond_3
    const-string v13, "of"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v15, 0xa

    goto :goto_2

    :cond_4
    const-string v13, "ls"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v15, 0x6

    goto :goto_2

    :cond_5
    const-string v13, "lh"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v15, 0x5

    goto :goto_2

    :cond_6
    const-string v13, "fc"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v15, 0x7

    goto :goto_2

    :cond_7
    const-string v13, "j"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v15, 0x3

    goto :goto_2

    :cond_8
    const-string v13, "f"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v15, 0x1

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v15, -0x1

    :goto_2
    packed-switch v15, :pswitch_data_1

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 28
    .end local v29    # "strokeOverFill":Z
    .restart local v13    # "strokeOverFill":Z
    :goto_3
    move/from16 v13, v29

    goto/16 :goto_0

    .line 61
    .end local v13    # "strokeOverFill":Z
    .restart local v29    # "strokeOverFill":Z
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v13

    .line 62
    .end local v29    # "strokeOverFill":Z
    .restart local v13    # "strokeOverFill":Z
    goto/16 :goto_0

    .line 58
    .end local v13    # "strokeOverFill":Z
    .restart local v29    # "strokeOverFill":Z
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    .line 59
    goto :goto_3

    .line 55
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Landroid/util/JsonReader;)I

    move-result v11

    .line 56
    goto :goto_3

    .line 52
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Landroid/util/JsonReader;)I

    move-result v10

    .line 53
    goto :goto_3

    .line 49
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    .line 50
    goto :goto_3

    .line 46
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    .line 47
    goto :goto_3

    .line 43
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    .line 44
    goto :goto_3

    .line 40
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    .line 41
    goto :goto_3

    .line 37
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    .line 38
    goto :goto_3

    .line 34
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 35
    goto :goto_3

    .line 31
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 32
    goto :goto_3

    .line 67
    .end local v29    # "strokeOverFill":Z
    .restart local v13    # "strokeOverFill":Z
    :cond_a
    move/from16 v29, v13

    .line 67
    .end local v13    # "strokeOverFill":Z
    .restart local v29    # "strokeOverFill":Z
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 69
    new-instance v13, Lcom/airbnb/lottie/model/DocumentData;

    move-object v14, v13

    move-object v15, v0

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v29

    invoke-direct/range {v14 .. v28}, Lcom/airbnb/lottie/model/DocumentData;-><init>(Ljava/lang/String;Ljava/lang/String;DIIDDIIIZ)V

    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/DocumentDataParser;->parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p1

    return-object p1
.end method
