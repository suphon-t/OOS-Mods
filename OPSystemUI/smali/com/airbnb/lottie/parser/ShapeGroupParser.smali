.class Lcom/airbnb/lottie/parser/ShapeGroupParser;
.super Ljava/lang/Object;
.source "ShapeGroupParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;
    .locals 6
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xd2b

    if-eq v4, v5, :cond_1

    const/16 v5, 0xdbf

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "nm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v4, "it"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 38
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 28
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 29
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v2

    .line 31
    .local v2, "newItem":Lcom/airbnb/lottie/model/content/ContentModel;
    if-eqz v2, :cond_3

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v2    # "newItem":Lcom/airbnb/lottie/model/content/ContentModel;
    :cond_3
    goto :goto_2

    .line 35
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 36
    goto :goto_0

    .line 25
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 26
    goto :goto_0

    .line 42
    :cond_5
    new-instance v2, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-direct {v2, v0, v1}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
