.class public Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;
.super Ljava/lang/Object;
.source "OpBluetoothHeadsetReflectUtil.java"


# static fields
.field static obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    return-void
.end method

.method public static isOpBluetoothHeadset(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 14
    const/4 v0, 0x0

    move v1, v0

    .line 16
    .local v1, "isSupport":Z
    :try_start_0
    const-string v2, "android.bluetooth.oneplus.OpBluetoothHeadset"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 17
    .local v2, "cla":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    .line 18
    .local v4, "parameterTypes":[Ljava/lang/Class;
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 19
    .local v5, "constructor":Ljava/lang/reflect/Constructor;
    sget-object v6, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 20
    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    .line 22
    :cond_0
    const-string v6, "isOpBluetoothHeadset"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, [I

    aput-object v8, v7, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 23
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 24
    sget-object v7, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v6, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 26
    .end local v2    # "cla":Ljava/lang/Class;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 27
    :goto_0
    return v1
.end method
