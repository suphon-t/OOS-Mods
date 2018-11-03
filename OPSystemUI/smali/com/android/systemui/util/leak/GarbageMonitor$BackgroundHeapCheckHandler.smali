.class Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;
.super Landroid/os/Handler;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHeapCheckHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor;Landroid/os/Looper;)V
    .locals 1
    .param p2, "onLooper"    # Landroid/os/Looper;

    .line 456
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 457
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 458
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 462
    return-void

    .line 459
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "BackgroundHeapCheckHandler may not run on the ui thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Message;

    .line 466
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$800(Lcom/android/systemui/util/leak/GarbageMonitor;)V

    .line 478
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->removeMessages(I)V

    .line 479
    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$700(Lcom/android/systemui/util/leak/GarbageMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v2, Lcom/android/systemui/util/leak/-$$Lambda$XMHjUeThvUDRPlJmBo9djG71pM8;

    invoke-direct {v2, v0}, Lcom/android/systemui/util/leak/-$$Lambda$XMHjUeThvUDRPlJmBo9djG71pM8;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 472
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->removeMessages(I)V

    .line 473
    const-wide/32 v2, 0xdbba0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 474
    nop

    .line 482
    :goto_0
    return-void
.end method
