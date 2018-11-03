.class Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskStackDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field final synthetic val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 701
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;->val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 704
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;->val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 708
    return-void
.end method
