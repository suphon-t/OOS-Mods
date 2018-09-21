.class Lcom/android/systemui/statusbar/KeyguardIndicationController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;->chargingInfoFadeOutAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field final synthetic val$height:I

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 197
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->val$height:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setCharging(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->val$height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 210
    const-string v0, "KeyguardIndication"

    const-string v1, "chargingInfoFadeOutAnimation onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 200
    const-string v0, "KeyguardIndication"

    const-string v1, "chargingInfoFadeOutAnimation onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method
