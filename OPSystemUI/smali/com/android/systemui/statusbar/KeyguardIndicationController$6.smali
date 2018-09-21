.class Lcom/android/systemui/statusbar/KeyguardIndicationController$6;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 610
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/systemui/statusbar/KeyguardIndicationController$6;)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 617
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$6$ZOoitMnwFf-_6c1bie20dwMArDQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$6$ZOoitMnwFf-_6c1bie20dwMArDQ;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 618
    return-void
.end method
