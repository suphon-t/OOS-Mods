.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootloaderAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 1

    .line 1611
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1612
    const p1, 0x7f080446

    const v0, 0x50d0080

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    .line 1614
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "x1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    .line 1610
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 3

    .line 1628
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    const-string v1, "bootloader"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->op_reboot(ZLjava/lang/String;Z)V

    .line 1629
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 1623
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 1618
    const/4 v0, 0x0

    return v0
.end method
