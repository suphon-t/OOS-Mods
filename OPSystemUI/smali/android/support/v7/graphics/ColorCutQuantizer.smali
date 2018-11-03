.class final Landroid/support/v7/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mColors:[I

.field final mFilters:[Landroid/support/v7/graphics/Palette$Filter;

.field final mHistogram:[I

.field final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field final mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 457
    new-instance v0, Landroid/support/v7/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([II[Landroid/support/v7/graphics/Palette$Filter;)V
    .locals 11
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I
    .param p3, "filters"    # [Landroid/support/v7/graphics/Palette$Filter;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 75
    iput-object p3, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    .line 77
    const v0, 0x8000

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 78
    .local v0, "hist":[I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 79
    aget v3, p1, v2

    invoke-static {v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v3

    .line 81
    .local v3, "quantizedColor":I
    aput v3, p1, v2

    .line 83
    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    .line 78
    .end local v3    # "quantizedColor":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 92
    .local v2, "distinctColorCount":I
    move v3, v2

    move v2, v1

    .local v2, "color":I
    .local v3, "distinctColorCount":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 93
    aget v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    aput v1, v0, v2

    .line 97
    :cond_1
    aget v4, v0, v2

    if-lez v4, :cond_2

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 92
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v2    # "color":I
    :cond_3
    new-array v2, v3, [I

    iput-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    .line 109
    .local v2, "colors":[I
    const/4 v4, 0x0

    .line 110
    .local v4, "distinctColorIndex":I
    move v5, v4

    move v4, v1

    .local v4, "color":I
    .local v5, "distinctColorIndex":I
    :goto_2
    array-length v6, v0

    if-ge v4, v6, :cond_5

    .line 111
    aget v6, v0, v4

    if-lez v6, :cond_4

    .line 112
    add-int/lit8 v6, v5, 0x1

    .local v6, "distinctColorIndex":I
    aput v4, v2, v5

    .line 110
    .end local v5    # "distinctColorIndex":I
    move v5, v6

    .end local v6    # "distinctColorIndex":I
    .restart local v5    # "distinctColorIndex":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 120
    .end local v4    # "color":I
    :cond_5
    if-gt v3, p2, :cond_6

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 123
    array-length v4, v2

    :goto_3
    if-ge v1, v4, :cond_7

    aget v6, v2, v1

    .line 124
    .local v6, "color":I
    iget-object v7, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v8, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v6}, Landroid/support/v7/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v9

    aget v10, v0, v6

    invoke-direct {v8, v9, v10}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v6    # "color":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 133
    :cond_6
    invoke-direct {p0, p2}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 140
    :cond_7
    return-void
.end method

.method private static approximateToRgb888(I)I
    .locals 3
    .param p0, "color"    # I

    .line 484
    invoke-static {p0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    return v0
.end method

.method static approximateToRgb888(III)I
    .locals 4
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 478
    const/16 v0, 0x8

    const/4 v1, 0x5

    invoke-static {p0, v1, v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    .line 479
    invoke-static {p1, v1, v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 480
    invoke-static {p2, v1, v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 478
    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 199
    .local p1, "vboxes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v0, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/graphics/Palette$Swatch;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    .line 201
    .local v2, "vbox":Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    invoke-virtual {v2}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getAverageColor()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    .line 202
    .local v3, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-direct {p0, v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v2    # "vbox":Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    .end local v3    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    return-object v0
.end method

.method static modifySignificantOctet([IIII)V
    .locals 4
    .param p0, "a"    # [I
    .param p1, "dimension"    # I
    .param p2, "lower"    # I
    .param p3, "upper"    # I

    .line 408
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 423
    :pswitch_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_1

    .line 424
    aget v1, p0, v0

    .line 425
    .local v1, "color":I
    invoke-static {v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 426
    invoke-static {v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 427
    invoke-static {v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 423
    .end local v1    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "i":I
    :pswitch_1
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-gt v0, p3, :cond_0

    .line 415
    aget v1, p0, v0

    .line 416
    .restart local v1    # "color":I
    invoke-static {v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 417
    invoke-static {v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 418
    invoke-static {v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 414
    .end local v1    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 411
    :pswitch_2
    nop

    .line 431
    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static modifyWordWidth(III)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "currentWidth"    # I
    .param p2, "targetWidth"    # I

    .line 510
    if-le p2, p1, :cond_0

    .line 512
    sub-int v0, p2, p1

    shl-int v0, p0, v0

    .local v0, "newValue":I
    goto :goto_0

    .line 515
    .end local v0    # "newValue":I
    :cond_0
    sub-int v0, p1, p2

    shr-int v0, p0, v0

    .line 517
    .restart local v0    # "newValue":I
    :goto_0
    const/4 v1, 0x1

    shl-int v2, v1, p2

    sub-int/2addr v2, v1

    and-int v1, v0, v2

    return v1
.end method

.method private static quantizeFromRgb888(I)I
    .locals 5
    .param p0, "color"    # I

    .line 468
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 469
    .local v0, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 470
    .local v3, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4, v1, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    .line 471
    .local v1, "b":I
    shl-int/lit8 v2, v0, 0xa

    shl-int/lit8 v4, v3, 0x5

    or-int/2addr v2, v4

    or-int/2addr v2, v1

    return v2
.end method

.method private quantizePixels(I)Ljava/util/List;
    .locals 4
    .param p1, "maxColors"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Landroid/support/v7/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 155
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;>;"
    new-instance v1, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;-><init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0, v0, p1}, Landroid/support/v7/graphics/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 162
    invoke-direct {p0, v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static quantizedBlue(I)I
    .locals 1
    .param p0, "color"    # I

    .line 505
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static quantizedGreen(I)I
    .locals 1
    .param p0, "color"    # I

    .line 498
    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static quantizedRed(I)I
    .locals 1
    .param p0, "color"    # I

    .line 491
    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private shouldIgnoreColor(I)Z
    .locals 2
    .param p1, "color565"    # I

    .line 434
    invoke-static {p1}, Landroid/support/v7/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v0

    .line 435
    .local v0, "rgb":I
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 436
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, v0, v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v1

    return v1
.end method

.method private shouldIgnoreColor(I[F)Z
    .locals 3
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .line 444
    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    array-length v1, v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 446
    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2}, Landroid/support/v7/graphics/Palette$Filter;->isAllowed(I[F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    const/4 v2, 0x1

    return v2

    .line 445
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldIgnoreColor(Landroid/support/v7/graphics/Palette$Swatch;)Z
    .locals 2
    .param p1, "color"    # Landroid/support/v7/graphics/Palette$Swatch;

    .line 440
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v0

    return v0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 176
    .local p1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 177
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    .line 179
    .local v0, "vbox":Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->splitBox()Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 195
    .end local v0    # "vbox":Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    goto :goto_0

    .line 193
    .restart local v0    # "vbox":Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    :cond_0
    return-void

    .line 196
    .end local v0    # "vbox":Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    :cond_1
    return-void
.end method


# virtual methods
.method getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method
