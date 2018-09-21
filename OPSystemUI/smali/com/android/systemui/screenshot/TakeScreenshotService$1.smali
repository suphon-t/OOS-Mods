.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 38
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 39
    .local v0, "callback":Landroid/os/Messenger;
    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 53
    .local v1, "finisher":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const-string v2, "TakeScreenshotService"

    const-string v3, "Skipping screenshot because storage is locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    if-nez v2, :cond_1

    .line 60
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$002(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 63
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 71
    const-string v2, "TakeScreenshotService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid screenshot option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 68
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-lez v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_3

    move v3, v4

    nop

    :cond_3
    invoke-virtual {v2, v1, v5, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    .line 69
    goto :goto_2

    .line 65
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-lez v5, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_5

    move v3, v4

    nop

    :cond_5
    invoke-virtual {v2, v1, v5, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    .line 66
    nop

    .line 73
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
