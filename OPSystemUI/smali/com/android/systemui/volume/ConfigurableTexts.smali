.class public Lcom/android/systemui/volume/ConfigurableTexts;
.super Ljava/lang/Object;
.source "ConfigurableTexts.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTextLabels:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateAll:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    .line 85
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ConfigurableTexts$2;-><init>(Lcom/android/systemui/volume/ConfigurableTexts;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mUpdateAll:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ConfigurableTexts;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/ConfigurableTexts;->setTextSizeH(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ConfigurableTexts;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ConfigurableTexts;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ConfigurableTexts;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/ConfigurableTexts;->setTextLabelH(Landroid/widget/TextView;I)V

    return-void
.end method

.method private setTextLabelH(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "labelResId"    # I

    .line 77
    if-ltz p2, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    nop

    .line 83
    :goto_1
    return-void
.end method

.method private setTextSizeH(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "sp"    # I

    .line 72
    int-to-float v0, p2

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    return-void
.end method


# virtual methods
.method public add(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "text"    # Landroid/widget/TextView;

    .line 41
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    move-result v0

    return v0
.end method

.method public add(Landroid/widget/TextView;I)I
    .locals 7
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "labelResId"    # I

    .line 45
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 48
    .local v1, "fontScale":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 49
    .local v2, "density":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 50
    .local v3, "px":F
    div-float v4, v3, v1

    div-float/2addr v4, v2

    float-to-int v4, v4

    .line 51
    .local v4, "sp":I
    iget-object v5, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v5, Lcom/android/systemui/volume/ConfigurableTexts$1;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/systemui/volume/ConfigurableTexts$1;-><init>(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 62
    iget-object v5, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return v4
.end method

.method public update()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mUpdateAll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
