.class public Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "BluetoothDeviceLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;,
        Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;
    }
.end annotation


# instance fields
.field private mState:Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;


# direct methods
.method private constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method

.method public static createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "batteryLevel"    # I
    .param p3, "iconScale"    # F

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, "deviceDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;

    sget v2, Lcom/android/settingslib/R$color;->meter_background_color:I

    .line 76
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;-><init>(Landroid/content/Context;II)V

    .line 77
    .local v1, "batteryDrawable":Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$dimen;->bt_battery_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 78
    .local v2, "pad":I
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->setPadding(IIII)V

    .line 80
    new-instance v3, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    invoke-direct {v3, v4}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 83
    .local v3, "drawable":Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
    const v4, 0x800003

    invoke-virtual {v3, v5, v4}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->setLayerGravity(II)V

    .line 85
    nop

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 85
    invoke-virtual {v3, v6, v4}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->setLayerInsetStart(II)V

    .line 87
    nop

    .line 88
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 87
    invoke-virtual {v3, v6, v4}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->setLayerInsetTop(II)V

    .line 90
    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->setConstantState(Landroid/content/Context;IIF)V

    .line 92
    return-object v3
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->mState:Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;

    return-object v0
.end method

.method public setConstantState(Landroid/content/Context;IIF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "batteryLevel"    # I
    .param p4, "iconScale"    # F

    .line 96
    new-instance v0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;-><init>(Landroid/content/Context;IIF)V

    iput-object v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->mState:Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;

    .line 97
    return-void
.end method
