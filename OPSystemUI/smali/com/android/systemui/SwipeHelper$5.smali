.class Lcom/android/systemui/SwipeHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$targetLeft:F

.field wasCancelled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SwipeHelper;

    .line 478
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$5;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$5;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$5;->val$canBeDismissed:Z

    iput p4, p0, Lcom/android/systemui/SwipeHelper$5;->val$targetLeft:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 479
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/SwipeHelper$5;->wasCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper$5;->wasCancelled:Z

    .line 484
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$5;->this$0:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SwipeHelper;->access$702(Lcom/android/systemui/SwipeHelper;Z)Z

    .line 489
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper$5;->wasCancelled:Z

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$5;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$5;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper$5;->val$canBeDismissed:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->access$300(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$5;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$500(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$5;->val$animView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/SwipeHelper$5;->val$targetLeft:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/SwipeHelper$Callback;->onChildSnappedBack(Landroid/view/View;F)V

    .line 493
    :cond_0
    return-void
.end method
