.class Lcom/android/systemui/globalactions/GlobalActionsDialog$8;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1285
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1289
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1294
    :cond_0
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1297
    const-string v1, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1298
    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1299
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$102(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    .line 1300
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$300(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V

    goto :goto_1

    .line 1290
    :cond_1
    :goto_0
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1291
    .local v1, "reason":Ljava/lang/String;
    const-string v3, "globalactions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1292
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1294
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    nop

    .line 1303
    :cond_3
    :goto_1
    return-void
.end method
