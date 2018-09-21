.class Lcom/oneplus/notification/OPNotificationController$1;
.super Landroid/database/ContentObserver;
.source "OPNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OPNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OPNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 241
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 244
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$000(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_oimc_func_disable_headsup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v2, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v2, v1}, Lcom/oneplus/notification/OPNotificationController;->access$502(Lcom/oneplus/notification/OPNotificationController;Z)Z

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1, v2}, Lcom/oneplus/notification/OPNotificationController;->access$502(Lcom/oneplus/notification/OPNotificationController;Z)Z

    .line 251
    :goto_0
    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable block:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$500(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method
