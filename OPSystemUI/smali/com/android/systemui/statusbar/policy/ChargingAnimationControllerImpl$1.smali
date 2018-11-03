.class Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;
.super Landroid/os/Handler;
.source "ChargingAnimationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->relaseAsset()V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "relaseAsset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void
.end method
