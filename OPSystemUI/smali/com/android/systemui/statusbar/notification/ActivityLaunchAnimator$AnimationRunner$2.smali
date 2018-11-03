.class Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->lambda$onAnimationStart$0([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

.field final synthetic val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$900(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Z)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$1000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$400(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel(Z)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$1100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 197
    return-void
.end method
