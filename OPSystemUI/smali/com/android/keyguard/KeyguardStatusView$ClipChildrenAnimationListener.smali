.class Lcom/android/keyguard/KeyguardStatusView$ClipChildrenAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardStatusView.java"

# interfaces
.implements Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipChildrenAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 1

    .line 500
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$ClipChildrenAnimationListener;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 501
    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$500(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/clock/OPTextClock;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 503
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$ClipChildrenAnimationListener;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$500(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/clock/OPTextClock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 509
    return-void
.end method

.method public shouldFinish(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$ClipChildrenAnimationListener;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
