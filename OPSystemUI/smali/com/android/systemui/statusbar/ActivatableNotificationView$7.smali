.class Lcom/android/systemui/statusbar/ActivatableNotificationView$7;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 571
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$400(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$500(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I

    move-result v1

    .line 575
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 574
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 576
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 577
    return-void
.end method
