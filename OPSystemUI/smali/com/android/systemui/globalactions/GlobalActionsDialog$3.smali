.class Lcom/android/systemui/globalactions/GlobalActionsDialog$3;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->getEmergencyAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "iconResId"    # I
    .param p3, "messageResId"    # I

    .line 661
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 665
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 674
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 669
    const/4 v0, 0x1

    return v0
.end method
