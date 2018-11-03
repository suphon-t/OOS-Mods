.class Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "TextClockWithoutTimetick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/TextClockWithoutTimetick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 146
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 147
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 148
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$000(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$100(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    .line 154
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$000(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->access$100(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    .line 160
    return-void
.end method
