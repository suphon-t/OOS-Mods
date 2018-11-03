.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

.field private final synthetic f$1:[Landroid/view/RemoteAnimationTarget;

.field private final synthetic f$2:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;->f$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;->f$1:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;->f$2:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;->f$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;->f$1:[Landroid/view/RemoteAnimationTarget;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;->f$2:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->lambda$onAnimationStart$0(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
