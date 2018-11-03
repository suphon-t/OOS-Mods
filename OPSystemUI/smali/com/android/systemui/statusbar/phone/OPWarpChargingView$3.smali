.class Lcom/android/systemui/statusbar/phone/OPWarpChargingView$3;
.super Ljava/lang/Object;
.source "OPWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->getWarpFastChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$3;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 242
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 243
    .local v0, "scaleT":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$3;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$3;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 245
    return-void
.end method
