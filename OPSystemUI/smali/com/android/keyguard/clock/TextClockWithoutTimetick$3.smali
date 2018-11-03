.class Lcom/android/keyguard/clock/TextClockWithoutTimetick$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "TextClockWithoutTimetick.java"


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

    .line 554
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$3;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$3;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$100(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    .line 559
    return-void
.end method
