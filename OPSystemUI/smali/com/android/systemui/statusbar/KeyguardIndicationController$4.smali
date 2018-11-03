.class Lcom/android/systemui/statusbar/KeyguardIndicationController$4;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 213
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->val$height:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 217
    .local v0, "t":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->val$height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 218
    .local v1, "scaleT":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    float-to-int v3, v1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 221
    return-void
.end method
