.class Lcom/android/systemui/statusbar/phone/StatusBar$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


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

    .line 492
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSetupChanged()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 496
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v1

    .line 495
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isUserSetup(I)Z

    move-result v0

    .line 502
    .local v0, "userSetup":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-eq v0, v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    .line 504
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapseQuickSettings()V

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setUserSetupComplete(Z)V

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 511
    :cond_2
    return-void
.end method
