.class public Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;
.super Ljava/lang/Object;
.source "BluetoothA2dpWrapper.java"


# instance fields
.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0
    .param p1, "service"    # Landroid/bluetooth/BluetoothA2dp;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 34
    return-void
.end method
