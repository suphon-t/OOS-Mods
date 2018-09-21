.class Lcom/android/systemui/settings/BrightnessController$9;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p2, "context"    # Landroid/content/Context;

    .line 381
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .line 384
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$100(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method
