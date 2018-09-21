.class Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;
.super Landroid/os/Handler;
.source "OPFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacelockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 231
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 236
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    packed-switch v0, :pswitch_data_0

    .line 305
    :pswitch_0
    const-string v0, "OPFacelockController"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 301
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 302
    goto/16 :goto_2

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$500(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 298
    goto/16 :goto_2

    .line 285
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$500(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 290
    goto/16 :goto_2

    .line 280
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 281
    goto/16 :goto_2

    .line 274
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 276
    goto/16 :goto_2

    .line 274
    :cond_4
    :goto_0
    return-void

    .line 270
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 271
    goto :goto_2

    .line 262
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$500(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 267
    goto :goto_2

    .line 257
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 258
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 259
    goto :goto_2

    .line 251
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    .line 253
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 254
    goto :goto_2

    .line 251
    :cond_8
    :goto_1
    return-void

    .line 245
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 246
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$500(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 248
    goto :goto_2

    .line 240
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 242
    nop

    .line 308
    :goto_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "OPFacelockController"

    const-string v1, "handleMessage: done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
