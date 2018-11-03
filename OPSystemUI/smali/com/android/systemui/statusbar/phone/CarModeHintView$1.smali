.class Lcom/android/systemui/statusbar/phone/CarModeHintView$1;
.super Ljava/lang/Object;
.source "CarModeHintView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CarModeHintView;->getShowAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarModeHintView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/CarModeHintView;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$1;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 192
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 193
    .local v0, "alphaT":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$1;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->setAlpha(F)V

    .line 194
    return-void
.end method
