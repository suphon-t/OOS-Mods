.class Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BluetoothDeviceLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothDeviceLayerDrawableState"
.end annotation


# instance fields
.field batteryLevel:I

.field context:Landroid/content/Context;

.field iconScale:F

.field resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "batteryLevel"    # I
    .param p4, "iconScale"    # F

    .line 148
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->context:Landroid/content/Context;

    .line 150
    iput p2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->resId:I

    .line 151
    iput p3, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->batteryLevel:I

    .line 152
    iput p4, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->iconScale:F

    .line 153
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->resId:I

    iget v2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->batteryLevel:I

    iget v3, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->iconScale:F

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object v0

    return-object v0
.end method
