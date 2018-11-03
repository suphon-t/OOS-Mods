.class Lcom/android/systemui/statusbar/phone/StatusBar$12;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 3715
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3719
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3720
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3721
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 3722
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3723
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 3725
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$12;->getSendingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3726
    const/4 v1, 0x0

    .line 3727
    .local v1, "flags":I
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3728
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3729
    or-int/lit8 v1, v1, 0x2

    .line 3731
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 3732
    .end local v1    # "flags":I
    .end local v2    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 3734
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3735
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3736
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    .line 3738
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideNavigationBarGuide()V

    goto :goto_0

    .line 3741
    :cond_3
    const-string v1, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3742
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->showDeviceMonitoringDialog()V

    .line 3744
    :cond_4
    :goto_0
    return-void
.end method
