.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static CLOCK_HEIGHT_WEIGHT:F


# instance fields
.field private mBouncerTop:I

.field private mBurnInPreventionOffsetX:I

.field private mBurnInPreventionOffsetY:I

.field private mClockNotificationsMargin:I

.field private mContainerTopPadding:I

.field private mCurrentlySecure:Z

.field private mDarkAmount:F

.field private mHeight:I

.field private mKeyguardClockY:I

.field private mKeyguardClockYRegular:I

.field private mKeyguardStatusHeight:I

.field private mMaxShadeBottom:I

.field private mMinTopMargin:I

.field private mNotificationStackHeight:I

.field private mPanelExpansion:F

.field private mPulsing:Z

.field private mPulsingPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const v0, 0x3f333333    # 0.7f

    sput v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_HEIGHT_WEIGHT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private burnInPreventionOffsetX()F
    .locals 4

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x42a60000    # 83.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->zigzag(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private burnInPreventionOffsetY()F
    .locals 4

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x44024000    # 521.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->zigzag(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getClockAlpha(I)F
    .locals 5
    .param p1, "y"    # I

    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCurrentlySecure:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 242
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "alphaKeyguard":F
    goto :goto_2

    .line 246
    .end local v0    # "alphaKeyguard":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    goto :goto_0

    .line 248
    .local v0, "maxClockAlpha":F
    :goto_1
    const/4 v2, 0x0

    int-to-float v3, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 250
    .local v2, "alphaKeyguard":F
    sget-object v3, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 252
    .end local v2    # "alphaKeyguard":F
    .local v0, "alphaKeyguard":F
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    return v1
.end method

.method private getClockY()I
    .locals 8

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    .line 207
    .local v0, "clockYDark":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPulsing:Z

    if-eqz v1, :cond_0

    .line 208
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPulsingPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v1

    int-to-float v1, v1

    .line 212
    .local v1, "clockYRegular":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBouncerTop:I

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 213
    .local v2, "hasEnoughSpace":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCurrentlySecure:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 214
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    neg-int v3, v3

    :goto_1
    int-to-float v3, v3

    .line 217
    .local v3, "clockYTarget":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardClockYRegular:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardClockYRegular:I

    int-to-float v4, v4

    :goto_2
    move v1, v4

    .line 220
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 221
    .local v4, "shadeExpansion":F
    invoke-static {v3, v1, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    .line 225
    .local v5, "clockY":F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v5, v0, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    .line 226
    .local v6, "y":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    if-ge v6, v7, :cond_4

    move v7, v6

    goto :goto_3

    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    :goto_3
    return v7
.end method

.method private getMaxClockY()I
    .locals 2

    .line 177
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private zigzag(FFF)F
    .locals 3
    .param p1, "x"    # F
    .param p2, "amplitude"    # F
    .param p3, "period"    # F

    .line 279
    rem-float v0, p1, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    div-float/2addr v0, v2

    .line 280
    .local v0, "xprime":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v0

    .line 281
    .local v1, "interpolationAmount":F
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2, p2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    return v2
.end method


# virtual methods
.method public getExpandedClockPosition()I
    .locals 5

    .line 186
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    sub-int/2addr v0, v1

    .line 187
    .local v0, "availableHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 189
    .local v1, "containerCenter":I
    int-to-float v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v3, v3

    sget v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_HEIGHT_WEIGHT:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 191
    .local v2, "y":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 192
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    int-to-float v2, v3

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result v3

    int-to-float v3, v3

    .line 197
    .local v3, "maxClockY":F
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 198
    move v2, v3

    .line 201
    :cond_1
    float-to-int v4, v2

    return v4
.end method

.method public getMinStackScrollerPadding()F
    .locals 2

    .line 173
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 129
    const v0, 0x7f070202

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    .line 131
    const v0, 0x7f070203

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    .line 133
    const v0, 0x7f070099

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    .line 135
    const v0, 0x7f07009a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    .line 137
    const v0, 0x7f0706a7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPulsingPadding:I

    .line 140
    const v0, 0x7f0704af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    .line 141
    const v0, 0x7f0704ae

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardClockYRegular:I

    .line 143
    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY()I

    move-result v0

    .line 166
    .local v0, "y":I
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 167
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(I)F

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 168
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPulsing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    :goto_0
    add-int/2addr v1, v0

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 169
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 170
    return-void
.end method

.method public setup(IIIFIIFZZI)V
    .locals 1
    .param p1, "minTopMargin"    # I
    .param p2, "maxShadeBottom"    # I
    .param p3, "notificationStackHeight"    # I
    .param p4, "panelExpansion"    # F
    .param p5, "parentHeight"    # I
    .param p6, "keyguardStatusHeight"    # I
    .param p7, "dark"    # F
    .param p8, "secure"    # Z
    .param p9, "pulsing"    # Z
    .param p10, "bouncerTop"    # I

    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    .line 150
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    .line 151
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    .line 152
    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    .line 153
    iput p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    .line 154
    iput p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 155
    iput p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 160
    iput-boolean p9, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPulsing:Z

    .line 161
    iput p10, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBouncerTop:I

    .line 162
    return-void
.end method
