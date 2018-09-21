.class Lcom/android/systemui/settings/BrightnessController$4;
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

    .line 268
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1300(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v0

    .line 273
    .local v0, "inVrMode":Z
    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_for_vr"

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 275
    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->access$1500(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v4

    .line 274
    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, "val":I
    goto :goto_0

    .line 278
    .end local v1    # "val":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 279
    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->access$1600(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v4

    .line 278
    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 282
    .restart local v1    # "val":I
    :goto_0
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    const-string v2, "StatusBar.BrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateSliderTask: val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", auto="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$800(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 284
    return-void
.end method
