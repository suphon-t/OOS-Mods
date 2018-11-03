.class Lcom/android/systemui/statusbar/phone/StatusBar$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    .line 649
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 2
    .param p1, "dreaming"    # Z

    .line 652
    if-eqz p1, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp(Z)V

    .line 655
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2
    .param p1, "phoneState"    # I

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$302(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    .line 676
    if-nez p1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCallStateIdle(Z)V

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCallStateIdle(Z)V

    .line 681
    :goto_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 659
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 661
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 666
    invoke-static {}, Landroid/widget/DateTimeView;->onTimeChangeByKeyguard()V

    .line 667
    return-void
.end method
