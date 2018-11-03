.class Lcom/android/systemui/settings/BrightnessController$2;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 208
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/systemui/settings/BrightnessController$2;)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1300(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "screen_brightness_for_vr"

    .local v0, "setting":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "setting":Ljava/lang/String;
    :cond_0
    const-string v0, "screen_brightness"

    .line 229
    .restart local v0    # "setting":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 230
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$1200(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v2

    const/4 v3, -0x2

    .line 229
    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 231
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$500(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$800(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStopListeningRunnable mTracking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$900(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAutomatic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 217
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNewController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 218
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$1100(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 219
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$1200(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$900(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$2$R7xwW4ZTyw9CTX8R56AsACHdwQs;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$2$R7xwW4ZTyw9CTX8R56AsACHdwQs;-><init>(Lcom/android/systemui/settings/BrightnessController$2;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->access$902(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 235
    :cond_1
    return-void
.end method
