.class Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animationEndTag:I

.field final synthetic val$animationStartTag:I

.field final synthetic val$animatorTag:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;III)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animatorTag:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationStartTag:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationEndTag:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animatorTag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationStartTag:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationEndTag:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 111
    return-void
.end method
