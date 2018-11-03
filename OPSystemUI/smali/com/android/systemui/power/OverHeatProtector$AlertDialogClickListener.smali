.class final Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;
.super Ljava/lang/Object;
.source "OverHeatProtector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/OverHeatProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlertDialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/OverHeatProtector;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/OverHeatProtector;Lcom/android/systemui/power/OverHeatProtector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p2, "x1"    # Lcom/android/systemui/power/OverHeatProtector$1;

    .line 573
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 576
    const/4 v0, -0x2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 578
    .local v0, "negative":Z
    :goto_0
    if-nez v0, :cond_1

    .line 579
    return-void

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1700(Lcom/android/systemui/power/OverHeatProtector;)Landroid/os/CountDownTimer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1700(Lcom/android/systemui/power/OverHeatProtector;)Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$1702(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 586
    :cond_2
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, v2, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, v2, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method
