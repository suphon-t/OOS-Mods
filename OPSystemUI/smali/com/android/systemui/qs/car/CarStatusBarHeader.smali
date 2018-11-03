.class public Lcom/android/systemui/qs/car/CarStatusBarHeader;
.super Landroid/widget/LinearLayout;
.source "CarStatusBarHeader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "tintArea"    # Landroid/graphics/Rect;
    .param p3, "intensity"    # F
    .param p4, "color"    # I

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v1, :cond_0

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    .line 44
    .local v0, "colorForeground":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    .local v1, "intensity":F
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    .local v2, "tintArea":Landroid/graphics/Rect;
    const v3, 0x7f0a007e

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 48
    const v4, 0x7f0a00be

    invoke-direct {p0, v4, v2, v1, v0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 50
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/BatteryMeterView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 51
    return-void
.end method
