.class Lcom/android/systemui/statusbar/phone/OPFacelockController$13;
.super Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;
.source "OPFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1150
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginRecognize(I)V
    .locals 2
    .param p1, "faceId"    # I

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1156
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "onBeginRecognize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_1
    return-void
.end method

.method public onCompared(IIIII)V
    .locals 2
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "result"    # I
    .param p4, "compareTimeMillis"    # I
    .param p5, "score"    # I

    .line 1161
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onCompared 2 to remove timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1500(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V

    .line 1169
    :cond_1
    return-void
.end method

.method public onEndRecognize(III)V
    .locals 7
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "result"    # I

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3502(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 1186
    .local v0, "allowed":Z
    const-string v2, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndRecognize, result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyguardShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bouncer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", allowed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSleep:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", simpin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1190
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p3, :cond_8

    .line 1191
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->allowShowingLock()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_2

    .line 1202
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1203
    const-string v3, "lock_unlock_success"

    const-string v5, "face_bright"

    const-string v6, "1"

    invoke-static {v3, v5, v6}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    :cond_3
    const-string v3, "lock_unlock_success"

    const-string v5, "face"

    const-string v6, "1"

    invoke-static {v3, v5, v6}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1213
    :cond_4
    const-string v2, "OPFacelockController"

    const-string v3, "onEndRecognize, result ok to skip bouncer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1215
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1216
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1217
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1500(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V

    .line 1218
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1219
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    goto/16 :goto_4

    .line 1209
    :cond_5
    :goto_1
    const-string v1, "OPFacelockController"

    const-string v3, "onEndRecognize, result ok to unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1211
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1192
    :cond_6
    :goto_2
    const-string v2, "OPFacelockController"

    const-string v4, "not handle recognize"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1194
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1195
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1196
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1197
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 1199
    :cond_7
    return-void

    .line 1223
    :cond_8
    if-ne p3, v3, :cond_9

    .line 1224
    const-string v1, "lock_unlock_failed"

    const-string v2, "face_timeout"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v1, "OPFacelockController"

    const-string v2, "onEndRecognize: no face"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1228
    :cond_9
    if-ne p3, v2, :cond_b

    .line 1229
    const-string v2, "OPFacelockController"

    const-string v3, "onEndRecognize: camera error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1231
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1232
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1500(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V

    .line 1234
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1236
    :cond_b
    const/4 v2, 0x4

    if-ne p3, v2, :cond_d

    .line 1237
    const-string v2, "OPFacelockController"

    const-string v3, "onEndRecognize: no permission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1239
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1240
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1500(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V

    .line 1242
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 1246
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$3900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1247
    const-string v1, "lock_unlock_failed"

    const-string v3, "face_bright"

    const-string v5, "1"

    invoke-static {v1, v3, v5}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1249
    :cond_e
    const-string v1, "lock_unlock_failed"

    const-string v3, "face"

    const-string v5, "1"

    invoke-static {v1, v3, v5}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :goto_3
    const-string v1, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEndRecognize: fail "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$4000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1255
    :cond_f
    :goto_4
    return-void
.end method
