.class Lcom/android/systemui/statusbar/phone/OPWarpChargingView$1;
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

    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$1;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$1;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$000(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$1;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    return-void
.end method
