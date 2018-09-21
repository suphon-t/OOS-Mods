.class Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;
.super Landroid/os/Handler;
.source "ClockCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/plugin/ClockCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/plugin/ClockCtrl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/plugin/ClockCtrl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "nonUILooper"    # Landroid/os/Looper;

    .line 66
    iput-object p1, p0, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->this$0:Lcom/android/keyguard/plugin/ClockCtrl;

    .line 67
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v0, "ClockCtrl"

    const-string v1, "BGHandler: msg null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 76
    .local v0, "what":I
    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->this$0:Lcom/android/keyguard/plugin/ClockCtrl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v3}, Lcom/android/keyguard/plugin/ClockCtrl;->access$000(Lcom/android/keyguard/plugin/ClockCtrl;Z)V

    .line 81
    :goto_1
    return-void
.end method
