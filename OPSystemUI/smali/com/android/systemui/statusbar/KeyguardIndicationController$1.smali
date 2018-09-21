.class Lcom/android/systemui/statusbar/KeyguardIndicationController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;->chargingInfoFadeInAnimation()Landroid/animation/ValueAnimator;
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

    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->val$height:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->val$height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 174
    const-string v0, "KeyguardIndication"

    const-string v1, "chargingInfoFadeInAnimation onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    const-string v0, "KeyguardIndication"

    const-string v1, "chargingInfoFadeInAnimation onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method
