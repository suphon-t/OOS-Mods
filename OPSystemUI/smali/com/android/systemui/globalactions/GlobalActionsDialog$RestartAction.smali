.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 1

    .line 445
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 446
    const p1, 0x10804ca

    const v0, 0x1040267

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    .line 447
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "x1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    .line 444
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 452
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    .line 454
    return v2

    .line 456
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPress()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    .line 472
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 461
    const/4 v0, 0x1

    return v0
.end method
