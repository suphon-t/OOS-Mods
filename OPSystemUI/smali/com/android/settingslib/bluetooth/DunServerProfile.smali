.class public final Lcom/android/settingslib/bluetooth/DunServerProfile;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothDun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/DunServerProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 86
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;-><init>(Lcom/android/settingslib/bluetooth/DunServerProfile;Lcom/android/settingslib/bluetooth/DunServerProfile$1;)V

    const/16 v2, 0x16

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 88
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/settingslib/bluetooth/DunServerProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/DunServerProfile;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/DunServerProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDun;

    .line 47
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/DunServerProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/DunServerProfile;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDun;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .line 156
    sget-boolean v0, Lcom/android/settingslib/bluetooth/DunServerProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "DunServerProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-eqz v0, :cond_1

    .line 159
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DunServerProfile"

    const-string v2, "Error cleaning up DUN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDun;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 152
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_network_pan:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .line 81
    const/16 v0, 0x16

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "DUN Server"

    return-object v0
.end method
