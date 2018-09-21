.class Lcom/android/systemui/recents/views/TaskView$6;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$animListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskView;

    .line 517
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$animListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$animListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$6;->val$animListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$6;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskView;->access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    return-void
.end method
