.class final Lcom/android/systemui/charging/WirelessChargingView;
.super Landroid/view/View;
.source "WirelessChargingView.java"


# instance fields
.field private mAngleOffset:D

.field private mAnimationStartTime:J

.field private mCenterX:I

.field private mCenterY:I

.field private mContext:Landroid/content/Context;

.field private mCurrAngleOffset:D

.field private mCurrDotRadius:I

.field private mDotsRadiusEnd:I

.field private mDotsRadiusStart:I

.field private mFinishedAnimatingDots:Z

.field private mInterpolatedPathGone:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMainCircleCurrentRadius:I

.field private mMainCircleEndRadius:I

.field private mMainCircleStartRadius:I

.field private mNumDots:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPathGone:F

.field private mScaleDotsDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mFinishedAnimatingDots:Z

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/charging/WirelessChargingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mFinishedAnimatingDots:Z

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/charging/WirelessChargingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "styleAttr"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mFinishedAnimatingDots:Z

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/charging/WirelessChargingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCenterX:I

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCenterY:I

    .line 131
    const/4 v0, 0x0

    .local v0, "circle":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/charging/WirelessChargingView;->mNumDots:I

    if-ge v0, v1, :cond_0

    .line 132
    iget-wide v1, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCurrAngleOffset:D

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    int-to-double v3, v0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    iget v7, p0, Lcom/android/systemui/charging/WirelessChargingView;->mNumDots:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 135
    .local v1, "angle":D
    iget v3, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCenterX:I

    int-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget v7, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleCurrentRadius:I

    iget v8, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCurrDotRadius:I

    add-int/2addr v7, v8

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 137
    .local v3, "x":I
    iget v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCenterY:I

    int-to-double v4, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v8, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleCurrentRadius:I

    iget v9, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCurrDotRadius:I

    add-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 140
    .local v4, "y":I
    int-to-float v5, v3

    int-to-float v6, v4

    iget v7, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCurrDotRadius:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/charging/WirelessChargingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    .end local v1    # "angle":D
    .end local v3    # "x":I
    .end local v4    # "y":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "circle":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleCurrentRadius:I

    iget v1, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleEndRadius:I

    if-lt v0, v1, :cond_1

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mFinishedAnimatingDots:Z

    .line 146
    :cond_1
    return-void
.end method

.method private getPathGone(J)F
    .locals 2
    .param p1, "now"    # J

    .line 180
    iget-wide v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mAnimationStartTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const v1, 0x448da000    # 1133.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private setupPaint()V
    .locals 3

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingView;->mContext:Landroid/content/Context;

    const v2, 0x7f040456

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    return-void
.end method

.method private updateDrawingParameters()V
    .locals 9

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 150
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/systemui/charging/WirelessChargingView;->mAnimationStartTime:J

    sub-long v2, v0, v2

    .line 151
    .local v2, "timeSinceStart":J
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/charging/WirelessChargingView;->getPathGone(J)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mPathGone:F

    .line 152
    iget-object v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/android/systemui/charging/WirelessChargingView;->mPathGone:F

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mInterpolatedPathGone:F

    .line 155
    iget v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mPathGone:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 156
    iget v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleStartRadius:I

    iget v5, p0, Lcom/android/systemui/charging/WirelessChargingView;->mInterpolatedPathGone:F

    iget v6, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleEndRadius:I

    iget v7, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleStartRadius:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleCurrentRadius:I

    goto :goto_0

    .line 159
    :cond_0
    iget v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleEndRadius:I

    iput v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleCurrentRadius:I

    .line 163
    :goto_0
    iget-wide v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mScaleDotsDuration:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 164
    iget v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mDotsRadiusStart:I

    iget-object v5, p0, Lcom/android/systemui/charging/WirelessChargingView;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v2

    iget-wide v7, p0, Lcom/android/systemui/charging/WirelessChargingView;->mScaleDotsDuration:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/charging/WirelessChargingView;->mDotsRadiusEnd:I

    iget v7, p0, Lcom/android/systemui/charging/WirelessChargingView;->mDotsRadiusStart:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCurrDotRadius:I

    goto :goto_1

    .line 167
    :cond_1
    iget v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mDotsRadiusEnd:I

    iput v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCurrDotRadius:I

    .line 171
    :goto_1
    iget-wide v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mAngleOffset:D

    iget v6, p0, Lcom/android/systemui/charging/WirelessChargingView;->mPathGone:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/charging/WirelessChargingView;->mCurrAngleOffset:D

    .line 172
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/charging/WirelessChargingView;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mDotsRadiusStart:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mDotsRadiusEnd:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleStartRadius:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleEndRadius:I

    .line 85
    iget v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleStartRadius:I

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mMainCircleCurrentRadius:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mAngleOffset:D

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mScaleDotsDuration:J

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mNumDots:I

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/charging/WirelessChargingView;->setupPaint()V

    .line 93
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 107
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    iget-wide v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mAnimationStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mAnimationStartTime:J

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/charging/WirelessChargingView;->updateDrawingParameters()V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/charging/WirelessChargingView;->drawCircles(Landroid/graphics/Canvas;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mFinishedAnimatingDots:Z

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/charging/WirelessChargingView;->invalidate()V

    .line 119
    :cond_1
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    return-void
.end method
