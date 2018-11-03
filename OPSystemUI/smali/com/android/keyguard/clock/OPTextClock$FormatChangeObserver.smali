.class Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "OPTextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/OPTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/clock/OPTextClock;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/OPTextClock;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 150
    iput-object p1, p0, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    .line 151
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-static {v0}, Lcom/android/keyguard/clock/OPTextClock;->access$000(Lcom/android/keyguard/clock/OPTextClock;)V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-static {v0}, Lcom/android/keyguard/clock/OPTextClock;->access$100(Lcom/android/keyguard/clock/OPTextClock;)V

    .line 158
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-static {v0}, Lcom/android/keyguard/clock/OPTextClock;->access$000(Lcom/android/keyguard/clock/OPTextClock;)V

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-static {v0}, Lcom/android/keyguard/clock/OPTextClock;->access$100(Lcom/android/keyguard/clock/OPTextClock;)V

    .line 164
    return-void
.end method
