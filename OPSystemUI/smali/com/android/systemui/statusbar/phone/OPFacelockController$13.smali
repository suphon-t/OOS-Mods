.class Lcom/android/systemui/statusbar/phone/OPFacelockController$13;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1224
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->val$show:Z

    if-eq v0, v1, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set light view to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->val$show:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->val$show:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3602(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1231
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4000(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->setAlpha(F)V

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->setVisibility(I)V

    goto :goto_0

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3602(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1237
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 1238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->setVisibility(I)V

    .line 1240
    :goto_0
    return-void
.end method
