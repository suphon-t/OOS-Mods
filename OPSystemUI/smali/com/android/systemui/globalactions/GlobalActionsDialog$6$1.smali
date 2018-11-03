.class Lcom/android/systemui/globalactions/GlobalActionsDialog$6$1;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$6;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$6;

    .line 734
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/systemui/globalactions/GlobalActionsDialog$6$1;)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$6;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 738
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 740
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 741
    .local v0, "bgHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$6$1$1BpFTjs5a81AxMWdZQ10CAffkio;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$6$1$1BpFTjs5a81AxMWdZQ10CAffkio;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$6$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v0    # "bgHandler":Landroid/os/Handler;
    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GlobalActionsDialog"

    const-string v2, "Error while trying to lock device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
