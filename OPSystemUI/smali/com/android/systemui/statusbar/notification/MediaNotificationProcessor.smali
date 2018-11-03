.class public Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
.super Ljava/lang/Object;
.source "MediaNotificationProcessor.java"


# instance fields
.field private mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

.field private final mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

.field private final mContext:Landroid/content/Context;

.field private mFilteredBackgroundHsl:[F

.field private final mPackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageContext"    # Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;)V

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageContext"    # Landroid/content/Context;
    .param p3, "colorizer"    # Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$FQ2jqCN-nkK3wF0AhHJdzMEAIb4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$FQ2jqCN-nkK3wF0AhHJdzMEAIb4;-><init>(Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mPackageContext:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    .line 90
    return-void
.end method

.method private findBackgroundColorAndFilter(Landroid/support/v7/graphics/Palette;)I
    .locals 8
    .param p1, "palette"    # Landroid/support/v7/graphics/Palette;

    .line 248
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 249
    .local v0, "dominantSwatch":Landroid/support/v7/graphics/Palette$Swatch;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 251
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 252
    const/4 v1, -0x1

    return v1

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 257
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 260
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    .line 261
    .local v2, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    const/high16 v3, -0x40800000    # -1.0f

    .line 262
    .local v3, "highestNonWhitePopulation":F
    const/4 v4, 0x0

    .line 263
    .local v4, "second":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/graphics/Palette$Swatch;

    .line 264
    .local v6, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eq v6, v0, :cond_2

    .line 265
    invoke-virtual {v6}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_2

    .line 266
    invoke-virtual {v6}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v7

    if-nez v7, :cond_2

    .line 267
    move-object v4, v6

    .line 268
    invoke-virtual {v6}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v7

    int-to-float v3, v7

    .line 270
    .end local v6    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_2
    goto :goto_0

    .line 271
    :cond_3
    if-nez v4, :cond_4

    .line 273
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 274
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 276
    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/high16 v6, 0x40200000    # 2.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 280
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 281
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 283
    :cond_5
    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 284
    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1
.end method

.method private hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z
    .locals 4
    .param p1, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;

    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x46afc800    # 22500.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0
.end method

.method private isBlack([F)Z
    .locals 2
    .param p1, "hslColor"    # [F

    .line 297
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3da3d70a    # 0.08f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWhite([F)Z
    .locals 2
    .param p1, "hslColor"    # [F

    .line 304
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWhiteOrBlack([F)Z
    .locals 1
    .param p1, "hsl"    # [F

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhite([F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;I[F)Z
    .locals 1
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .line 72
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$processNotification$1(Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;I[F)Z
    .locals 3
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .line 139
    const/4 v0, 0x0

    aget v1, p2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    aget v2, v2, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 140
    .local v1, "diff":F
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x43af0000    # 350.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method private selectForegroundColor(ILandroid/support/v7/graphics/Palette;)I
    .locals 8
    .param p1, "backgroundColor"    # I
    .param p2, "palette"    # Landroid/support/v7/graphics/Palette;

    .line 158
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->isColorLight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 160
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    .line 161
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v4

    .line 162
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v5

    .line 163
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v6

    const/high16 v7, -0x1000000

    .line 159
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I

    move-result v0

    return v0

    .line 166
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 167
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    .line 168
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v4

    .line 169
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v5

    .line 170
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v6

    const/4 v7, -0x1

    .line 166
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I

    move-result v0

    return v0
.end method

.method private selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I
    .locals 3
    .param p1, "moreVibrant"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "vibrant"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p3, "moreMutedSwatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p4, "mutedSwatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p5, "dominantSwatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p6, "fallbackColor"    # I

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectVibrantCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 179
    .local v0, "coloredCandidate":Landroid/support/v7/graphics/Palette$Swatch;
    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0, p4, p3}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectMutedCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 182
    :cond_0
    if-eqz v0, :cond_3

    .line 183
    if-ne p5, v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 185
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 187
    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    const v2, 0x3e428f5c    # 0.19f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 188
    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 190
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 192
    :cond_3
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 195
    :cond_4
    return p6
.end method

.method private selectMutedCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 6
    .param p1, "first"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "second"    # Landroid/support/v7/graphics/Palette$Swatch;

    .line 201
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v0

    .line 202
    .local v0, "firstValid":Z
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    .line 203
    .local v1, "secondValid":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 205
    .local v2, "firstSaturation":F
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v4

    aget v3, v4, v3

    .line 206
    .local v3, "secondSaturation":F
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 207
    .local v4, "populationFraction":F
    mul-float v5, v2, v4

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    .line 208
    return-object p1

    .line 210
    :cond_0
    return-object p2

    .line 212
    .end local v2    # "firstSaturation":F
    .end local v3    # "secondSaturation":F
    .end local v4    # "populationFraction":F
    :cond_1
    if-eqz v0, :cond_2

    .line 213
    return-object p1

    .line 214
    :cond_2
    if-eqz v1, :cond_3

    .line 215
    return-object p2

    .line 217
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private selectVibrantCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 6
    .param p1, "first"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "second"    # Landroid/support/v7/graphics/Palette$Swatch;

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v0

    .line 222
    .local v0, "firstValid":Z
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    .line 223
    .local v1, "secondValid":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    .line 225
    .local v2, "firstPopulation":I
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v3

    .line 226
    .local v3, "secondPopulation":I
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 228
    return-object p2

    .line 230
    :cond_0
    return-object p1

    .line 232
    .end local v2    # "firstPopulation":I
    .end local v3    # "secondPopulation":I
    :cond_1
    if-eqz v0, :cond_2

    .line 233
    return-object p1

    .line 234
    :cond_2
    if-eqz v1, :cond_3

    .line 235
    return-object p2

    .line 237
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V
    .locals 17
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "builder"    # Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    .line 100
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 101
    .local v2, "largeIcon":Landroid/graphics/drawable/Icon;
    const/4 v3, 0x0

    .line 102
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 103
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 106
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setRebuildStyledRemoteViews(Z)V

    .line 107
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 108
    const/4 v6, 0x0

    .line 109
    .local v6, "backgroundColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification;->isColorizedMedia()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 110
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 111
    .local v7, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 112
    .local v9, "height":I
    mul-int v10, v7, v9

    .line 113
    .local v10, "area":I
    const/16 v11, 0x57e4

    if-le v10, v11, :cond_0

    .line 114
    const v12, 0x46afc800    # 22500.0f

    int-to-float v13, v10

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 115
    .local v12, "factor":D
    int-to-double v14, v7

    mul-double/2addr v14, v12

    double-to-int v7, v14

    .line 116
    int-to-double v14, v9

    mul-double/2addr v14, v12

    double-to-int v9, v14

    .line 118
    .end local v12    # "factor":D
    :cond_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 119
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    .local v12, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v8, v8, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    invoke-static {v3}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v13

    .line 126
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v13, v8, v8, v14, v15}, Landroid/support/v7/graphics/Palette$Builder;->setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v13

    .line 127
    invoke-virtual {v13}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v13

    .line 128
    invoke-virtual {v13, v11}, Landroid/support/v7/graphics/Palette$Builder;->resizeBitmapArea(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v11

    .line 129
    .local v11, "paletteBuilder":Landroid/support/v7/graphics/Palette$Builder;
    invoke-virtual {v11}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v13

    .line 130
    .local v13, "palette":Landroid/support/v7/graphics/Palette;
    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundColorAndFilter(Landroid/support/v7/graphics/Palette;)I

    move-result v6

    .line 132
    const v14, 0x3ecccccd    # 0.4f

    .line 133
    .local v14, "textColorStartWidthFraction":F
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v15, v15

    .line 134
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 135
    move-object/from16 v16, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 133
    .end local v2    # "largeIcon":Landroid/graphics/drawable/Icon;
    .local v16, "largeIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v11, v15, v8, v5, v2}, Landroid/support/v7/graphics/Palette$Builder;->setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;

    .line 136
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    if-eqz v2, :cond_1

    .line 137
    new-instance v2, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$G1QdSAb4RmghAdo10Gv3JWJ8lmw;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$G1QdSAb4RmghAdo10Gv3JWJ8lmw;-><init>(Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;)V

    invoke-virtual {v11, v2}, Landroid/support/v7/graphics/Palette$Builder;->addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;

    .line 143
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

    invoke-virtual {v11, v2}, Landroid/support/v7/graphics/Palette$Builder;->addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;

    .line 144
    invoke-virtual {v11}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v2

    .line 145
    .end local v13    # "palette":Landroid/support/v7/graphics/Palette;
    .local v2, "palette":Landroid/support/v7/graphics/Palette;
    invoke-direct {v0, v6, v2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColor(ILandroid/support/v7/graphics/Palette;)I

    move-result v5

    .line 146
    .local v5, "foregroundColor":I
    invoke-virtual {v1, v6, v5}, Landroid/app/Notification$Builder;->setColorPalette(II)V

    .line 147
    .end local v2    # "palette":Landroid/support/v7/graphics/Palette;
    .end local v5    # "foregroundColor":I
    .end local v7    # "width":I
    .end local v9    # "height":I
    .end local v10    # "area":I
    .end local v11    # "paletteBuilder":Landroid/support/v7/graphics/Palette$Builder;
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "textColorStartWidthFraction":F
    goto :goto_0

    .line 148
    .end local v16    # "largeIcon":Landroid/graphics/drawable/Icon;
    .local v2, "largeIcon":Landroid/graphics/drawable/Icon;
    :cond_2
    move-object/from16 v16, v2

    .end local v2    # "largeIcon":Landroid/graphics/drawable/Icon;
    .restart local v16    # "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    const v5, 0x7f0602e3

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 150
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    goto :goto_1

    .line 150
    :cond_3
    move v7, v8

    :goto_1
    invoke-virtual {v2, v4, v6, v7}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;->colorize(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 153
    .local v2, "colorized":Landroid/graphics/Bitmap;
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .end local v2    # "colorized":Landroid/graphics/Bitmap;
    .end local v6    # "backgroundColor":I
    goto :goto_2

    .line 155
    .end local v16    # "largeIcon":Landroid/graphics/drawable/Icon;
    .local v2, "largeIcon":Landroid/graphics/drawable/Icon;
    :cond_4
    move-object/from16 v16, v2

    .end local v2    # "largeIcon":Landroid/graphics/drawable/Icon;
    .restart local v16    # "largeIcon":Landroid/graphics/drawable/Icon;
    :goto_2
    return-void
.end method
