.class Landroid/support/transition/Visibility$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/Visibility;

.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$overlay:Landroid/support/transition/ViewGroupOverlayImpl;


# direct methods
.method constructor <init>(Landroid/support/transition/Visibility;Landroid/support/transition/ViewGroupOverlayImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/transition/Visibility;

    .line 408
    iput-object p1, p0, Landroid/support/transition/Visibility$1;->this$0:Landroid/support/transition/Visibility;

    iput-object p2, p0, Landroid/support/transition/Visibility$1;->val$overlay:Landroid/support/transition/ViewGroupOverlayImpl;

    iput-object p3, p0, Landroid/support/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 411
    iget-object v0, p0, Landroid/support/transition/Visibility$1;->val$overlay:Landroid/support/transition/ViewGroupOverlayImpl;

    iget-object v1, p0, Landroid/support/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    .line 412
    return-void
.end method
