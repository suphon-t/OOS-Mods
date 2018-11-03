.class Lcom/android/systemui/fingerprint/QLRecyclerView$3;
.super Ljava/lang/Object;
.source "QLRecyclerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;->onEnterCancelView()V
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

    .line 477
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$3;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 481
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$3;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$1100(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 482
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 483
    .local v0, "currentValue":I
    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$3;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$1200(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 484
    .local v1, "currentFraction":F
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$3;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$1300(Lcom/android/systemui/fingerprint/QLRecyclerView;FZ)V

    .line 485
    return-void
.end method
