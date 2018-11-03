.class Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;
.super Ljava/lang/Object;
.source "OPWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 274
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 303
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setVisibility(I)V

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "scaleT":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$000(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    move-result-object v1

    const/16 v2, 0x67

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;->animationEnd(I)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->relaseAsset()V

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$302(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z

    .line 298
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 308
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "scaleT":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    move-result-object v1

    const/16 v2, 0x67

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;->animationStart(I)V

    .line 284
    :cond_0
    return-void
.end method
