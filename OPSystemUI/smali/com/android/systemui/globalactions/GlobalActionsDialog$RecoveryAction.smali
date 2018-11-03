.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecoveryAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 1

    .line 1586
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1587
    const p1, 0x7f080379

    const v0, 0x50c0064

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    .line 1589
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "x1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    .line 1585
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method

.method public static synthetic lambda$onPress$0(Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;)V
    .locals 3

    .line 1605
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    const-string v1, "recovery"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->op_reboot(ZLjava/lang/String;Z)V

    .line 1606
    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 4

    .line 1604
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$RecoveryAction$odIMTe-NSZ26X-XtvuLjBVfOymY;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$RecoveryAction$odIMTe-NSZ26X-XtvuLjBVfOymY;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1607
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 1598
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 1593
    const/4 v0, 0x0

    return v0
.end method
