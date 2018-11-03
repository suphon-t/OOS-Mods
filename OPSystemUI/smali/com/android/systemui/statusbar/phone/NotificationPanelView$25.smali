.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3141
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 1
    .param p1, "bouncer"    # Z

    .line 3144
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->resetTargetedView()V

    .line 3147
    :cond_0
    return-void
.end method
