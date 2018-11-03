.class Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    .line 555
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x124

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 562
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 566
    :goto_0
    return-void
.end method
