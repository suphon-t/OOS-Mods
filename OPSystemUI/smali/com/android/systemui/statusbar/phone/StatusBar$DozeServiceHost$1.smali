.class Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

.field final synthetic val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 5714
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setPulsing(Z)V
    .locals 2
    .param p1, "pulsing"    # Z

    .line 5732
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPulsing(Z)V

    .line 5733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPulsing(Z)V

    .line 5734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->access$2502(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;Z)Z

    .line 5735
    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 1

    .line 5727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 5728
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->setPulsing(Z)V

    .line 5729
    return-void
.end method

.method public onPulseStarted()V
    .locals 1

    .line 5717
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 5718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasHeadsUpNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5721
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->setPulsing(Z)V

    .line 5723
    :cond_0
    return-void
.end method
