.class final Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;
.super Ljava/lang/Object;
.source "KeyboardUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothDialogDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p2, "x1"    # Lcom/android/systemui/keyboard/KeyboardUI$1;

    .line 523
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 527
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$302(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/BluetoothDialog;)Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 528
    return-void
.end method
