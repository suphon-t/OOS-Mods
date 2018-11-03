.class Lcom/android/systemui/statusbar/ActivatableNotificationView$11;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
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

    .line 823
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$802(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$900(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$1000(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    .line 830
    return-void
.end method
