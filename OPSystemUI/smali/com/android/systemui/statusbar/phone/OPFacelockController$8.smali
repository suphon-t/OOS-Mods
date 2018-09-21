.class Lcom/android/systemui/statusbar/phone/OPFacelockController$8;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateNotifyMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

.field final synthetic val$color:I

.field final synthetic val$msgId:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 990
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$type:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$color:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 993
    const/4 v0, 0x0

    .line 994
    .local v0, "icon":Lcom/android/systemui/statusbar/phone/LockIcon;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    .line 998
    :cond_0
    if-eqz v0, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$type:I

    if-nez v1, :cond_1

    .line 1001
    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFacelockRunning(IZ)V

    goto :goto_0

    .line 1004
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$type:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFacelockRunning(IZ)V

    .line 1008
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1010
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1011
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v1

    const-string v2, " "

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$color:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 1012
    return-void

    .line 1015
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1016
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    .line 1017
    return-void

    .line 1021
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$msgId:I

    if-lez v1, :cond_6

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$msgId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;->val$color:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 1024
    :cond_6
    return-void
.end method
