.class Lcom/android/systemui/volume/SafetyWarningDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SafetyWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SafetyWarningDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SafetyWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SafetyWarningDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/volume/SafetyWarningDialog$1;->this$0:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 103
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SafetyWarningDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SafetyWarningDialog$1;->this$0:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->cancel()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/volume/SafetyWarningDialog$1;->this$0:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->cleanUp()V

    .line 108
    :cond_1
    return-void
.end method
