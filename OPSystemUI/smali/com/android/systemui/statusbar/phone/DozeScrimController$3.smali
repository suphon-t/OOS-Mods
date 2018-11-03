.class Lcom/android/systemui/statusbar/phone/DozeScrimController$3;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 170
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$802(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)Z

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$600(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$600(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$700(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse out, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$1000(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeScrimController$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    .line 185
    return-void
.end method
