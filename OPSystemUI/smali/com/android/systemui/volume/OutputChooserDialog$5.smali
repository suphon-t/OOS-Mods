.class Lcom/android/systemui/volume/OutputChooserDialog$5;
.super Ljava/lang/Object;
.source "OutputChooserDialog.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 786
    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$800()Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V

    .line 787
    return-void
.end method
