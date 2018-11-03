.class Lcom/android/systemui/qs/QSFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFragment;->animateHeaderSlidingOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFragment;

    .line 408
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 413
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/qs/QSFragment;->access$002(Lcom/android/systemui/qs/QSFragment;Z)Z

    .line 417
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v1}, Lcom/android/systemui/qs/QSFragment;->access$100(Lcom/android/systemui/qs/QSFragment;)V

    .line 418
    return-void
.end method
