.class Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    .line 510
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 517
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->takeOPScreenshot(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GlobalActionsDialog"

    const-string v2, "Error while trying to takeOPScreenshot."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x502

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 524
    return-void
.end method
