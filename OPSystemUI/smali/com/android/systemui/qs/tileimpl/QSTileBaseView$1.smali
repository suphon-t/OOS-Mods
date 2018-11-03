.class Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;
.super Ljava/lang/Object;
.source "QSTileBaseView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

.field final synthetic val$animator:Landroid/animation/ValueAnimator;

.field final synthetic val$circleColor:I

.field final synthetic val$state:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile$State;Landroid/animation/ValueAnimator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    .line 253
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$animator:Landroid/animation/ValueAnimator;

    iput p4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$circleColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->isAnimating:Z

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$102(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Z)Z

    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$202(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Z)Z

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$300(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$circleColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 279
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->isAnimating:Z

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$102(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Z)Z

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$202(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Z)Z

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 269
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 284
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->isAnimating:Z

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$102(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Z)Z

    .line 259
    return-void
.end method
