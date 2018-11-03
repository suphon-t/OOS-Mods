.class Lcom/android/systemui/volume/OutputChooserDialog$2;
.super Ljava/lang/Object;
.source "OutputChooserDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OutputChooserDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 645
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog$2;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothDevicesChanged()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$2;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$200(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    .line 654
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 648
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$2;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$200(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    .line 649
    return-void
.end method
