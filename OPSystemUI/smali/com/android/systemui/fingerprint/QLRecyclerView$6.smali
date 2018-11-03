.class Lcom/android/systemui/fingerprint/QLRecyclerView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;->onLeaveCancelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 547
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$6;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 550
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLRecyclerView"

    const-string v1, "mLeaveAnimator end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$6;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$1502(Lcom/android/systemui/fingerprint/QLRecyclerView;Z)Z

    .line 552
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$6;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$1300(Lcom/android/systemui/fingerprint/QLRecyclerView;FZ)V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$6;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$1602(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 554
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$6;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$800(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    .line 555
    return-void
.end method
