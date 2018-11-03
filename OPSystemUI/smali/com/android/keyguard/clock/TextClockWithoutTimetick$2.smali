.class Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;
.super Ljava/lang/Object;
.source "TextClockWithoutTimetick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/TextClockWithoutTimetick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;


# direct methods
.method constructor <init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 174
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$100(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 179
    .local v0, "now":J
    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    .line 181
    .local v2, "next":J
    iget-object v4, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v4}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v5}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$400(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 182
    return-void
.end method
