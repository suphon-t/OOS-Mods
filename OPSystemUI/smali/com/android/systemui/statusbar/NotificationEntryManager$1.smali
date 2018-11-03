.class Lcom/android/systemui/statusbar/NotificationEntryManager$1;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 204
    return-void
.end method
