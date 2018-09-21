.class Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;
.super Landroid/os/Handler;
.source "NetworkSpeedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 292
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 293
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 294
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    .line 299
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$102(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$200(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$500(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V

    .line 311
    :cond_2
    :goto_0
    return-void
.end method
