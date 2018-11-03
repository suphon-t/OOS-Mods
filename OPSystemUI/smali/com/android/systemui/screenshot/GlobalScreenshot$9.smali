.class Lcom/android/systemui/screenshot/GlobalScreenshot$9;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 767
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 770
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 771
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    .line 772
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const v3, 0x3e8ccccc    # 0.27499998f

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    .line 774
    .local v2, "scaleT":F
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 775
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 776
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 777
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 778
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 779
    return-void
.end method
