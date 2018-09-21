.class Lcom/android/systemui/statusbar/policy/Clock$3;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/Clock;

    .line 457
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 460
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Clock;->access$500(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Clock;->access$500(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Clock;->access$600(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 465
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Clock;->access$500(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Clock;->access$500(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Clock;->access$600(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;

    move-result-object v2

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    add-long/2addr v3, v5

    .line 467
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 471
    :cond_1
    :goto_0
    return-void
.end method
