.class Lcom/android/systemui/globalactions/GlobalActionsDialog$12;
.super Landroid/os/Handler;
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

    .line 1338
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1340
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1356
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    goto :goto_1

    .line 1352
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->notifyDataSetChanged()V

    .line 1354
    goto :goto_1

    .line 1342
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1343
    const-string v0, "dream"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissImmediately()V

    goto :goto_0

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    .line 1348
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2302(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 1359
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
