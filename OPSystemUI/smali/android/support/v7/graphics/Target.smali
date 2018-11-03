.class public final Landroid/support/v7/graphics/Target;
.super Ljava/lang/Object;
.source "Target.java"


# static fields
.field public static final DARK_MUTED:Landroid/support/v7/graphics/Target;

.field public static final DARK_VIBRANT:Landroid/support/v7/graphics/Target;

.field public static final LIGHT_MUTED:Landroid/support/v7/graphics/Target;

.field public static final LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

.field public static final MUTED:Landroid/support/v7/graphics/Target;

.field public static final VIBRANT:Landroid/support/v7/graphics/Target;


# instance fields
.field mIsExclusive:Z

.field final mLightnessTargets:[F

.field final mSaturationTargets:[F

.field final mWeights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    .line 91
    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultLightLightnessValues(Landroid/support/v7/graphics/Target;)V

    .line 92
    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultVibrantSaturationValues(Landroid/support/v7/graphics/Target;)V

    .line 94
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    .line 95
    sget-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultNormalLightnessValues(Landroid/support/v7/graphics/Target;)V

    .line 96
    sget-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultVibrantSaturationValues(Landroid/support/v7/graphics/Target;)V

    .line 98
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    .line 99
    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultDarkLightnessValues(Landroid/support/v7/graphics/Target;)V

    .line 100
    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultVibrantSaturationValues(Landroid/support/v7/graphics/Target;)V

    .line 102
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    .line 103
    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultLightLightnessValues(Landroid/support/v7/graphics/Target;)V

    .line 104
    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultMutedSaturationValues(Landroid/support/v7/graphics/Target;)V

    .line 106
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    .line 107
    sget-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultNormalLightnessValues(Landroid/support/v7/graphics/Target;)V

    .line 108
    sget-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultMutedSaturationValues(Landroid/support/v7/graphics/Target;)V

    .line 110
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    .line 111
    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultDarkLightnessValues(Landroid/support/v7/graphics/Target;)V

    .line 112
    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setDefaultMutedSaturationValues(Landroid/support/v7/graphics/Target;)V

    .line 113
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    .line 116
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    .line 117
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/graphics/Target;->mIsExclusive:Z

    .line 121
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setTargetDefaultValues([F)V

    .line 122
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    invoke-static {v0}, Landroid/support/v7/graphics/Target;->setTargetDefaultValues([F)V

    .line 123
    invoke-direct {p0}, Landroid/support/v7/graphics/Target;->setDefaultWeights()V

    .line 124
    return-void
.end method

.method private static setDefaultDarkLightnessValues(Landroid/support/v7/graphics/Target;)V
    .locals 3
    .param p0, "target"    # Landroid/support/v7/graphics/Target;

    .line 258
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const v2, 0x3e851eb8    # 0.26f

    aput v2, v0, v1

    .line 259
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    const v2, 0x3ee66666    # 0.45f

    aput v2, v0, v1

    .line 260
    return-void
.end method

.method private static setDefaultLightLightnessValues(Landroid/support/v7/graphics/Target;)V
    .locals 3
    .param p0, "target"    # Landroid/support/v7/graphics/Target;

    .line 269
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    aput v2, v0, v1

    .line 270
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const v2, 0x3f3d70a4    # 0.74f

    aput v2, v0, v1

    .line 271
    return-void
.end method

.method private static setDefaultMutedSaturationValues(Landroid/support/v7/graphics/Target;)V
    .locals 3
    .param p0, "target"    # Landroid/support/v7/graphics/Target;

    .line 279
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    const v2, 0x3e99999a    # 0.3f

    aput v2, v0, v1

    .line 280
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    const v2, 0x3ecccccd    # 0.4f

    aput v2, v0, v1

    .line 281
    return-void
.end method

.method private static setDefaultNormalLightnessValues(Landroid/support/v7/graphics/Target;)V
    .locals 3
    .param p0, "target"    # Landroid/support/v7/graphics/Target;

    .line 263
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    aput v2, v0, v1

    .line 264
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    .line 265
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    const v2, 0x3f333333    # 0.7f

    aput v2, v0, v1

    .line 266
    return-void
.end method

.method private static setDefaultVibrantSaturationValues(Landroid/support/v7/graphics/Target;)V
    .locals 3
    .param p0, "target"    # Landroid/support/v7/graphics/Target;

    .line 274
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    const v2, 0x3eb33333    # 0.35f

    aput v2, v0, v1

    .line 275
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 276
    return-void
.end method

.method private setDefaultWeights()V
    .locals 4

    .line 235
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const v1, 0x3e75c28f    # 0.24f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 236
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v2, 0x1

    const v3, 0x3f051eb8    # 0.52f

    aput v3, v0, v2

    .line 237
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 238
    return-void
.end method

.method private static setTargetDefaultValues([F)V
    .locals 2
    .param p0, "values"    # [F

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 230
    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, p0, v0

    .line 231
    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    .line 232
    return-void
.end method


# virtual methods
.method public getLightnessWeight()F
    .locals 2

    .line 205
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumLightness()F
    .locals 2

    .line 179
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumSaturation()F
    .locals 2

    .line 155
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumLightness()F
    .locals 2

    .line 163
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumSaturation()F
    .locals 2

    .line 139
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPopulationWeight()F
    .locals 2

    .line 216
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getSaturationWeight()F
    .locals 2

    .line 192
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTargetLightness()F
    .locals 2

    .line 171
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getTargetSaturation()F
    .locals 2

    .line 147
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Landroid/support/v7/graphics/Target;->mIsExclusive:Z

    return v0
.end method

.method normalizeWeights()V
    .locals 6

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    array-length v2, v2

    .local v2, "z":I
    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 243
    iget-object v4, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v4, v4, v1

    .line 244
    .local v4, "weight":F
    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 245
    add-float/2addr v0, v4

    .line 242
    .end local v4    # "weight":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3

    .line 249
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    array-length v2, v2

    .restart local v2    # "z":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 250
    iget-object v4, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v3

    if-lez v4, :cond_2

    .line 251
    iget-object v4, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v5, v4, v1

    div-float/2addr v5, v0

    aput v5, v4, v1

    .line 249
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_3
    return-void
.end method
