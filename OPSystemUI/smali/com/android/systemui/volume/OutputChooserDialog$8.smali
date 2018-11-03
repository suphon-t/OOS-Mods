.class Lcom/android/systemui/volume/OutputChooserDialog$8;
.super Ljava/lang/Object;
.source "OutputChooserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1016
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog$8;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1019
    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " CheckActiveDevice again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$8;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$1202(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$8;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$400(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    .line 1022
    return-void
.end method
