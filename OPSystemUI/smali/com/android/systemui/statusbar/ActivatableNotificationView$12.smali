.class Lcom/android/systemui/statusbar/ActivatableNotificationView$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field final synthetic val$isAppearing:Z

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 841
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->val$onFinishedRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->val$isAppearing:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->mWasCancelled:Z

    .line 863
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 849
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->mWasCancelled:Z

    if-nez v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$1100(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->val$isAppearing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    .line 853
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;->mWasCancelled:Z

    .line 858
    return-void
.end method
