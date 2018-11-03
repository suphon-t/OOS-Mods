.class Lcom/android/systemui/statusbar/ActivatableNotificationView$6;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 397
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;->val$reverse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 400
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 401
    .local v0, "animatedFraction":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;->val$reverse:Z

    if-eqz v1, :cond_0

    .line 402
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    .line 405
    return-void
.end method
