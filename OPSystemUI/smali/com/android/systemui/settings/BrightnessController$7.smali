.class Lcom/android/systemui/settings/BrightnessController$7;
.super Landroid/os/Handler;
.source "BrightnessController.java"


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

    .line 316
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1702(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 321
    const/4 v0, 0x0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 352
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    .line 349
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->access$2100(Lcom/android/systemui/settings/BrightnessController;Z)V

    .line 350
    goto :goto_4

    .line 346
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$2000(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 347
    goto :goto_4

    .line 343
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$2000(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 344
    goto :goto_4

    .line 340
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$2000(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 341
    goto :goto_4

    .line 328
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 329
    .local v2, "noAnim":Ljava/lang/Boolean;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    move-object v2, v3

    .line 332
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v3, v4, v1, v5}, Lcom/android/systemui/settings/BrightnessController;->access$1900(Lcom/android/systemui/settings/BrightnessController;IZZ)V

    .line 336
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/settings/BrightnessController;->access$1800(Lcom/android/systemui/settings/BrightnessController;Z)V

    .line 338
    goto :goto_4

    .line 323
    .end local v2    # "noAnim":Ljava/lang/Boolean;
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1800(Lcom/android/systemui/settings/BrightnessController;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    nop

    .line 355
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1, v0}, Lcom/android/systemui/settings/BrightnessController;->access$1702(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 356
    nop

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$7;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->access$1702(Lcom/android/systemui/settings/BrightnessController;Z)Z

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
