.class public Lcom/android/settingslib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    }
.end annotation


# static fields
.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;


# direct methods
.method public static getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "batteryLevel"    # I
    .param p3, "iconScale"    # F

    .line 118
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 119
    invoke-static {p0, p1, p2, p3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "iconScale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "F)",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 59
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v1

    .line 60
    .local v1, "level":I
    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_3

    const/16 v3, 0x200

    if-eq v2, v3, :cond_2

    const/16 v3, 0x500

    if-eq v2, v3, :cond_1

    const/16 v3, 0x600

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/android/settingslib/R$drawable;->ic_settings_print:I

    .line 81
    invoke-static {p0, v3, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    .line 83
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-object v2

    .line 74
    :cond_1
    new-instance v2, Landroid/util/Pair;

    .line 75
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v3

    invoke-static {p0, v3, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    .line 77
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-object v2

    .line 68
    :cond_2
    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    .line 69
    invoke-static {p0, v3, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    .line 71
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-object v2

    .line 63
    :cond_3
    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/android/settingslib/R$drawable;->ic_bt_laptop:I

    invoke-static {p0, v3, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    .line 65
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-object v2

    .line 90
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 92
    .local v4, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v4, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v5

    .line 93
    .local v5, "resId":I
    if-eqz v5, :cond_5

    .line 94
    new-instance v3, Landroid/util/Pair;

    invoke-static {p0, v5, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 96
    .end local v4    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v5    # "resId":I
    :cond_5
    goto :goto_1

    .line 97
    :cond_6
    if-eqz v0, :cond_8

    .line 98
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    new-instance v3, Landroid/util/Pair;

    sget v4, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    .line 100
    invoke-static {p0, v4, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 102
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-object v3

    .line 104
    :cond_7
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 105
    new-instance v3, Landroid/util/Pair;

    sget v4, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    .line 106
    invoke-static {p0, v4, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    .line 108
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    return-object v3

    .line 111
    :cond_8
    new-instance v3, Landroid/util/Pair;

    sget v4, Lcom/android/settingslib/R$drawable;->ic_settings_bluetooth:I

    .line 112
    invoke-static {p0, v4, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 113
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    return-object v3
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 44
    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 45
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .line 38
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 41
    :cond_0
    return-void
.end method
