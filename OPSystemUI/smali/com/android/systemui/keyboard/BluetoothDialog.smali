.class public Lcom/android/systemui/keyboard/BluetoothDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "BluetoothDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/keyboard/BluetoothDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyboard/BluetoothDialog;->setShowForAllUsers(Z)V

    .line 31
    return-void
.end method
