.class Lcom/android/systemui/globalactions/GlobalActionsDialog$1;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "enabledIconResId"    # I
    .param p3, "disabledIconResid"    # I
    .param p4, "message"    # I
    .param p5, "enabledStatusMessageResId"    # I
    .param p6, "disabledStatusMessageResId"    # I

    .line 290
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .line 308
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    const-string v0, "ril.cdma.inecmmode"

    .line 312
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 314
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$402(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 316
    :cond_2
    return-void
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 293
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ril.cdma.inecmmode"

    .line 294
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$102(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 299
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 301
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$300(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V

    .line 304
    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 319
    const/4 v0, 0x1

    return v0
.end method
