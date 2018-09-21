.class Lcom/android/systemui/SwipeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SwipeHelper;

    .line 422
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$3;->val$canBeDismissed:Z

    iput-object p4, p0, Lcom/android/systemui/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper$3;->mCancelled:Z

    .line 428
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper$3;->val$canBeDismissed:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->access$300(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$400(Lcom/android/systemui/SwipeHelper;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "wasRemoved":Z
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 437
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    .line 439
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper$3;->mCancelled:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v1}, Lcom/android/systemui/SwipeHelper;->access$500(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/systemui/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 445
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v1}, Lcom/android/systemui/SwipeHelper;->access$600(Lcom/android/systemui/SwipeHelper;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 446
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 448
    :cond_4
    return-void
.end method
