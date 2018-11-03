.class public Lcom/android/settingslib/graph/SignalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;
    }
.end annotation


# static fields
.field private static final FIT:[F

.field private static final INV_TAN:F

.field private static X_PATH:[[F


# instance fields
.field private mAnimating:Z

.field private final mAppliedCornerInset:F

.field private final mChangeDot:Ljava/lang/Runnable;

.field private mCurrentDot:I

.field private final mCutPath:Landroid/graphics/Path;

.field private final mDarkModeBackgroundColor:I

.field private final mDarkModeFillColor:I

.field private final mForegroundPaint:Landroid/graphics/Paint;

.field private final mForegroundPath:Landroid/graphics/Path;

.field private final mFullPath:Landroid/graphics/Path;

.field private final mHandler:Landroid/os/Handler;

.field private mIntrinsicSize:I

.field private mLevel:I

.field private final mLightModeBackgroundColor:I

.field private final mLightModeFillColor:I

.field private mNumLevels:F

.field private mOldDarkIntensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

.field private mState:I

.field private final mVirtualLeft:Landroid/graphics/PointF;

.field private final mVirtualTop:Landroid/graphics/PointF;

.field private mVisible:Z

.field private final mXPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/graph/SignalDrawable;->FIT:[F

    .line 72
    const/16 v1, 0xc

    new-array v1, v1, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    aput-object v3, v1, v0

    new-array v0, v2, [F

    fill-array-data v0, :array_5

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_6

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_7

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_8

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_9

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_a

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_b

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_c

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    .line 103
    const-wide v0, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    sput v1, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    return-void

    nop

    :array_0
    .array-data 4
        0x4010a3d7    # 2.26f
        -0x3fbeb852    # -3.02f
        0x3fe147ae    # 1.76f
    .end array-data

    :array_1
    .array-data 4
        0x3f699999    # 0.91249996f
        0x3f355555
    .end array-data

    :array_2
    .array-data 4
        -0x42c44444
        -0x42c44444
    .end array-data

    :array_3
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_4
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data

    :array_5
    .array-data 4
        -0x42c44444
        0x3d3bbbbc
    .end array-data

    :array_6
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_7
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_8
    .array-data 4
        0x3d3bbbbc
        0x3d3bbbbc
    .end array-data

    :array_9
    .array-data 4
        0x3da22222
        -0x425dddde
    .end array-data

    :array_a
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_b
    .array-data 4
        0x3d3bbbbc
        -0x42c44444
    .end array-data

    :array_c
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    .line 108
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    .line 117
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    .line 120
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    .line 122
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;-><init>(Lcom/android/settingslib/graph/SignalDrawable;Lcom/android/settingslib/graph/SignalDrawable$1;)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    .line 124
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    .line 125
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    .line 418
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/SignalDrawable$1;-><init>(Lcom/android/settingslib/graph/SignalDrawable;)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    .line 134
    sget v0, Lcom/android/settingslib/R$color;->dark_mode_icon_color_dual_tone_background:I

    .line 135
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeBackgroundColor:I

    .line 136
    sget v0, Lcom/android/settingslib/R$color;->dark_mode_icon_color_dual_tone_fill:I

    .line 137
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeFillColor:I

    .line 138
    sget v0, Lcom/android/settingslib/R$color;->light_mode_icon_color_dual_tone_background:I

    .line 139
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeBackgroundColor:I

    .line 140
    sget v0, Lcom/android/settingslib/R$color;->light_mode_icon_color_dual_tone_fill:I

    .line 141
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeFillColor:I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->signal_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->stat_sys_mobile_signal_circle_inset:I

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    .line 149
    return-void
.end method

.method static synthetic access$102(Lcom/android/settingslib/graph/SignalDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/graph/SignalDrawable;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    return p1
.end method

.method static synthetic access$104(Lcom/android/settingslib/graph/SignalDrawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/graph/SignalDrawable;

    .line 40
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settingslib/graph/SignalDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/graph/SignalDrawable;

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/graph/SignalDrawable;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/graph/SignalDrawable;

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calcFit(F)F
    .locals 4
    .param p1, "v"    # F

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "ret":F
    move v1, p1

    .line 382
    .local v1, "t":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/settingslib/graph/SignalDrawable;->FIT:[F

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 383
    sget-object v3, Lcom/android/settingslib/graph/SignalDrawable;->FIT:[F

    aget v3, v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 384
    mul-float/2addr v1, p1

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method private drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V
    .locals 7
    .param p1, "fullPath"    # Landroid/graphics/Path;
    .param p2, "foregroundPath"    # Landroid/graphics/Path;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "dotSize"    # F
    .param p6, "i"    # I

    .line 369
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    if-ne p6, v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 370
    .local v1, "p":Landroid/graphics/Path;
    :goto_0
    add-float v4, p3, p5

    add-float v5, p4, p5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, p3

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 371
    return-void
.end method

.method public static getAirplaneModeState(I)I
    .locals 2
    .param p0, "numLevels"    # I

    .line 456
    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    return v0
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .line 222
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getCarrierChangeState(I)I
    .locals 2
    .param p0, "numLevels"    # I

    .line 448
    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x30000

    or-int/2addr v0, v1

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .line 227
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .line 217
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getLevel(I)I
    .locals 1
    .param p0, "fullState"    # I

    .line 430
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getNumLevels(I)I
    .locals 1
    .param p0, "fullState"    # I

    .line 438
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getState(I)I
    .locals 1
    .param p0, "fullState"    # I

    .line 434
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static getState(IIZ)I
    .locals 2
    .param p0, "level"    # I
    .param p1, "numLevels"    # I
    .param p2, "cutOut"    # Z

    .line 442
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0
.end method

.method private setSignalState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 172
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 173
    :cond_0
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    .line 174
    invoke-direct {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    .line 176
    return-void
.end method

.method private updateAnimation()V
    .locals 3

    .line 179
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 180
    .local v0, "shouldAnimate":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 181
    :cond_1
    iput-boolean v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    .line 182
    if-eqz v0, :cond_2

    .line 183
    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v7, p0

    .line 238
    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    .line 239
    .local v9, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v10, v0

    .line 241
    .local v10, "height":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getLayoutDirection()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    .line 242
    .local v13, "isRtl":Z
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz v13, :cond_1

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    invoke-virtual {v8, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v8, v1, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 248
    :cond_1
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 249
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 251
    const v15, 0x3daaaaab

    mul-float v1, v15, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    .line 252
    .local v6, "padding":F
    const v1, 0x3d34b4b5

    mul-float v22, v1, v10

    .line 254
    .local v22, "cornerRadius":F
    const v1, 0x3f3504f7

    mul-float v23, v1, v22

    .line 257
    .local v23, "diagOffset":F
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    sub-float v3, v10, v6

    sub-float v3, v3, v22

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    add-float v3, v6, v22

    iget v4, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v3, v16, v22

    sub-float v25, v2, v3

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v26, v6, v2

    sub-float v27, v9, v6

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v2, v6

    mul-float v3, v16, v22

    add-float v28, v2, v3

    const/16 v29, 0x0

    const/high16 v30, -0x3cf90000    # -135.0f

    const/16 v31, 0x0

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 269
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v2, v6

    add-float v2, v2, v22

    sub-float v2, v2, v23

    sub-float v3, v10, v6

    sub-float v3, v3, v22

    sub-float v3, v3, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v25, v6, v2

    sub-float v2, v10, v6

    mul-float v3, v16, v22

    sub-float v26, v2, v3

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v2, v6

    mul-float v3, v16, v22

    add-float v27, v2, v3

    sub-float v28, v10, v6

    const/high16 v29, -0x3cf90000    # -135.0f

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 280
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    sub-float v2, v2, v22

    sub-float v3, v10, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    mul-float v3, v16, v22

    sub-float v25, v2, v3

    sub-float v2, v10, v6

    mul-float v3, v16, v22

    sub-float v26, v2, v3

    sub-float v27, v9, v6

    sub-float v28, v10, v6

    const/high16 v29, 0x42b40000    # 90.0f

    const/high16 v30, -0x3d4c0000    # -90.0f

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 290
    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 291
    const v1, 0x3f155556

    mul-float v3, v1, v9

    .line 292
    .local v3, "cutWidth":F
    const v1, 0x3e2aaaab

    mul-float v2, v1, v9

    .line 293
    .local v2, "cutHeight":F
    const/high16 v1, 0x3e000000    # 0.125f

    mul-float v17, v1, v10

    .line 294
    .local v17, "dotSize":F
    const v1, 0x3d2aaaab

    mul-float v18, v1, v10

    .line 296
    .local v18, "dotPadding":F
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v4, v9, v6

    sub-float v5, v10, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 297
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v4, v3

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 298
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v4, v2

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 299
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 300
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 301
    mul-float v0, v18, v16

    add-float v19, v0, v17

    .line 302
    .local v19, "dotSpacing":F
    sub-float v0, v9, v6

    sub-float v20, v0, v17

    .line 303
    .local v20, "x":F
    sub-float v0, v10, v6

    sub-float v21, v0, v17

    .line 304
    .local v21, "y":F
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 305
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v4, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/16 v24, 0x2

    move-object v0, v7

    move/from16 v25, v2

    move-object v2, v4

    .end local v2    # "cutHeight":F
    .local v25, "cutHeight":F
    move/from16 v26, v3

    move/from16 v3, v20

    .end local v3    # "cutWidth":F
    .local v26, "cutWidth":F
    const/4 v5, 0x3

    move/from16 v4, v21

    move v11, v5

    const/4 v14, 0x2

    move/from16 v5, v17

    move/from16 v27, v6

    move/from16 v6, v24

    .end local v6    # "padding":F
    .local v27, "padding":F
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 306
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    sub-float v3, v20, v19

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 307
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    mul-float v0, v19, v16

    sub-float v3, v20, v0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 308
    .end local v17    # "dotSize":F
    .end local v18    # "dotPadding":F
    .end local v19    # "dotSpacing":F
    .end local v20    # "x":F
    .end local v21    # "y":F
    .end local v25    # "cutHeight":F
    .end local v26    # "cutWidth":F
    goto :goto_1

    .end local v27    # "padding":F
    .restart local v6    # "padding":F
    :cond_2
    move v11, v4

    move/from16 v27, v6

    const/4 v14, 0x2

    .end local v6    # "padding":F
    .restart local v27    # "padding":F
    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne v1, v14, :cond_3

    .line 309
    const v1, 0x3ea88889

    mul-float/2addr v1, v9

    .line 310
    .local v1, "cut":F
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v3, v9, v27

    sub-float v4, v10, v27

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 311
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v3, v1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 312
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 313
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 314
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 317
    .end local v1    # "cut":F
    :cond_3
    :goto_1
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne v0, v12, :cond_4

    .line 319
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    sub-float v1, v9, v27

    add-float v6, v27, v22

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v6, v2

    sget v2, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float v2, v2, v22

    sub-float/2addr v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 322
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    add-float v6, v27, v22

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v6, v1

    sget v1, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float v1, v1, v22

    sub-float/2addr v6, v1

    sub-float v1, v10, v27

    invoke-virtual {v0, v6, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 326
    mul-float/2addr v15, v10

    .line 327
    .local v15, "cutWidth":F
    sget v0, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float/2addr v0, v15

    .line 330
    .local v0, "cutDiagInset":F
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 331
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 332
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v9, v27

    sub-float/2addr v2, v15

    sub-float v3, v10, v27

    sub-float/2addr v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 333
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v9, v27

    sub-float/2addr v2, v15

    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 334
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v0

    sub-float v3, v10, v27

    sub-float/2addr v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 335
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v9, v27

    sub-float/2addr v2, v15

    sub-float v3, v10, v27

    sub-float/2addr v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 338
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 339
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 340
    .end local v0    # "cutDiagInset":F
    .end local v15    # "cutWidth":F
    goto :goto_2

    :cond_4
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 342
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 343
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    float-to-int v1, v10

    float-to-int v2, v9

    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 344
    :cond_5
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-eq v0, v11, :cond_6

    .line 345
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 346
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    int-to-float v0, v0

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-direct {v7, v0}, Lcom/android/settingslib/graph/SignalDrawable;->calcFit(F)F

    move-result v0

    mul-float v16, v16, v27

    sub-float v1, v9, v16

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 347
    .local v0, "sigWidth":I
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    int-to-float v2, v0

    add-float v19, v27, v2

    sub-float v20, v10, v27

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v16, v1

    move/from16 v17, v27

    move/from16 v18, v27

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 349
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 352
    .end local v0    # "sigWidth":I
    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 353
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 354
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne v0, v14, :cond_8

    .line 355
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 356
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    mul-float/2addr v1, v9

    sget-object v3, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    aget-object v3, v3, v2

    aget v2, v3, v12

    mul-float/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 357
    move v0, v12

    .local v0, "i":I
    :goto_3
    sget-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 358
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v2, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v2, v9

    sget-object v4, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    aget-object v4, v4, v0

    aget v4, v4, v12

    mul-float/2addr v4, v10

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 360
    .end local v0    # "i":I
    :cond_7
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 362
    :cond_8
    if-eqz v13, :cond_9

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 365
    :cond_9
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 408
    const/16 v0, 0xff

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 232
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    .line 234
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "state"    # I

    .line 191
    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getNumLevels(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setNumLevels(I)V

    .line 192
    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setSignalState(I)V

    .line 193
    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getLevel(I)I

    move-result v0

    .line 194
    .local v0, "level":I
    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    if-eq v0, v1, :cond_0

    .line 195
    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    .line 196
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    .line 198
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 396
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 397
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 402
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 403
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 404
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2
    .param p1, "darkIntensity"    # F

    .line 207
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->getBackgroundColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->getFillColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    .line 213
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    .line 214
    return-void
.end method

.method public setNumLevels(I)V
    .locals 2
    .param p1, "levels"    # I

    .line 166
    int-to-float v0, p1

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    .line 168
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    .line 169
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 413
    iput-boolean p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVisible:Z

    .line 414
    invoke-direct {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    .line 415
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
