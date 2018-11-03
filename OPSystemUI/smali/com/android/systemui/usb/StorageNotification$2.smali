.class Lcom/android/systemui/usb/StorageNotification$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/usb/StorageNotification;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 112
    const-string v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/storage/StorageManager;->setVolumeSnoozed(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method
