.class Lcom/android/systemui/statusbar/policy/Clock$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    .line 485
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$5;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$5;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$5;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 491
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/Clock;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTimeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method
