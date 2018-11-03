.class Lcom/android/systemui/pip/phone/PipMenuActivityController$1;
.super Landroid/os/Handler;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0
    .param p0, "l"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .line 147
    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipExpand()V

    return-void
.end method

.method static synthetic lambda$handleMessage$1(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0
    .param p0, "l"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .line 151
    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMinimize()V

    return-void
.end method

.method static synthetic lambda$handleMessage$2(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0
    .param p0, "l"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .line 155
    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipDismiss()V

    return-void
.end method

.method static synthetic lambda$handleMessage$3(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0
    .param p0, "l"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .line 159
    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipShowMenu()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 160
    goto/16 :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    .line 168
    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    .line 164
    goto :goto_0

    .line 171
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$302(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$400(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$502(Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$300(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0, v2, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    goto :goto_0

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 156
    goto :goto_0

    .line 151
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$o9fLqvuiKIYwdsSexRT0X4Ty0V4;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$o9fLqvuiKIYwdsSexRT0X4Ty0V4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 152
    goto :goto_0

    .line 147
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$8btqC3E6FFjbjLWUhiNmbnKUlfI;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$8btqC3E6FFjbjLWUhiNmbnKUlfI;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 148
    goto :goto_0

    .line 142
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 143
    .local v0, "menuState":I
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    .line 144
    nop

    .line 184
    .end local v0    # "menuState":I
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
