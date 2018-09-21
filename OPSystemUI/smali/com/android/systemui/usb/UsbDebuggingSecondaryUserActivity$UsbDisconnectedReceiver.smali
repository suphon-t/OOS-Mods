.class Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDebuggingSecondaryUserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDisconnectedReceiver"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;->this$0:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "connected"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    .local v1, "connected":Z
    if-nez v1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 69
    .end local v1    # "connected":Z
    :cond_0
    return-void
.end method
