.class Lcom/android/systemui/statusbar/ActivatableNotificationView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V
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

    .line 669
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$702(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$200(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$002(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F

    .line 677
    :cond_0
    return-void
.end method
