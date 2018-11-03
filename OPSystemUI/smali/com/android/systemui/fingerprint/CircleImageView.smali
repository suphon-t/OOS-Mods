.class public Lcom/android/systemui/fingerprint/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsHighlight:Z

.field public mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-string v0, "CircleImageView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->TAG:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/CircleImageView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    const-string v3, "#00FF00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getId()I

    move-result v0

    const v3, 0x7f0a02cf

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mIsHighlight:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getId()I

    move-result v0

    const v3, 0x7f0a02ce

    if-ne v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    .line 54
    .local v0, "isDisable":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07049d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 55
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07049e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 57
    .local v2, "y":I
    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mIsHighlight:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 58
    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    goto :goto_1

    .line 59
    :cond_2
    if-nez v0, :cond_3

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070497

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070498

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 64
    :cond_3
    :goto_1
    int-to-float v3, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/CircleImageView;->setX(F)V

    .line 65
    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/CircleImageView;->setY(F)V

    .line 67
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "cns"    # Landroid/graphics/Canvas;

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/CircleImageView;->mIsHighlight:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 75
    .local v0, "h":F
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/CircleImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 76
    .local v1, "w":F
    iget-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->path:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->path:Landroid/graphics/Path;

    .line 78
    iget-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->path:Landroid/graphics/Path;

    div-float v4, v1, v3

    div-float v5, v0, v3

    div-float v6, v1, v3

    float-to-double v6, v6

    float-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    .line 81
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 78
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 83
    iget-object v2, p0, Lcom/android/systemui/fingerprint/CircleImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 85
    :cond_0
    div-float v2, v1, v3

    div-float v3, v0, v3

    const/high16 v4, 0x42be0000    # 95.0f

    iget-object v5, p0, Lcom/android/systemui/fingerprint/CircleImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    .end local v0    # "h":F
    .end local v1    # "w":F
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method
