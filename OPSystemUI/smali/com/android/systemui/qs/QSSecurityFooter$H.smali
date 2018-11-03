.class Lcom/android/systemui/qs/QSSecurityFooter$H;
.super Landroid/os/Handler;
.source "QSSecurityFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 472
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 473
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 474
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/systemui/qs/QSSecurityFooter$1;

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 481
    const-string v1, "handleRefreshState"

    move-object v0, v1

    .line 482
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$900(Lcom/android/systemui/qs/QSSecurityFooter;)V

    goto :goto_0

    .line 483
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 484
    const-string v1, "handleClick"

    move-object v0, v1

    .line 485
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$1000(Lcom/android/systemui/qs/QSSecurityFooter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_1
    :goto_0
    goto :goto_1

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "error":Ljava/lang/String;
    const-string v3, "QSSecurityFooter"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->access$1100(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/qs/QSTileHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "error":Ljava/lang/String;
    :goto_1
    return-void
.end method
