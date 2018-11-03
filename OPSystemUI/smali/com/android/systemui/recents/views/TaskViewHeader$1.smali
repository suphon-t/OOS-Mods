.class Lcom/android/systemui/recents/views/TaskViewHeader$1;
.super Landroid/os/CountDownTimer;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskViewHeader;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 378
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$1;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 385
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .line 380
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$1;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 381
    return-void
.end method
