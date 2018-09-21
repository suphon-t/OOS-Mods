.class Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;
.super Landroid/content/BroadcastReceiver;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 349
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-static {v1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->access$500(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v0, v0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V

    .line 358
    :cond_2
    :goto_0
    return-void
.end method
