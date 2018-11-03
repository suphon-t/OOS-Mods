.class Lcom/android/systemui/power/OverHeatProtector$5;
.super Landroid/os/CountDownTimer;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/OverHeatProtector;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/OverHeatProtector;

.field final synthetic val$button_content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 465
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector$5;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iput-object p6, p0, Lcom/android/systemui/power/OverHeatProtector$5;->val$button_content:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 477
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$5;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v1, v1, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .param p1, "millisUntilFinished"    # J

    .line 468
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$5;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$1600(Lcom/android/systemui/power/OverHeatProtector;)Lcom/android/systemui/power/OverHeatAlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/power/OverHeatProtector$5;->cancel()V

    .line 471
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 472
    .local v0, "time":I
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$5;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1600(Lcom/android/systemui/power/OverHeatProtector;)Lcom/android/systemui/power/OverHeatAlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector$5;->val$button_content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 473
    return-void
.end method
