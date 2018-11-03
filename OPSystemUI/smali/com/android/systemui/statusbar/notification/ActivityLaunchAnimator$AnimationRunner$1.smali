.class Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->lambda$onAnimationStart$0([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

.field final synthetic val$notificationHeight:I

.field final synthetic val$notificationWidth:I

.field final synthetic val$primary:Landroid/view/RemoteAnimationTarget;

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;IILandroid/view/RemoteAnimationTarget;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$notificationWidth:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$targetWidth:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$primary:Landroid/view/RemoteAnimationTarget;

    iput p5, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$notificationHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->linearProgress:F

    .line 171
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    .line 173
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->linearProgress:F

    .line 172
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 174
    .local v0, "progress":F
    iget v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$notificationWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$targetWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 176
    .local v1, "newWidth":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$targetWidth:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->left:I

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->right:I

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startPosition:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$primary:Landroid/view/RemoteAnimationTarget;

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-static {v3, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->top:I

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startPosition:[I

    aget v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$notificationHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$primary:Landroid/view/RemoteAnimationTarget;

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$primary:Landroid/view/RemoteAnimationTarget;

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v3, v4, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->bottom:I

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->val$primary:Landroid/view/RemoteAnimationTarget;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$600(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/RemoteAnimationTarget;)V

    .line 185
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$700(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$800(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 187
    return-void
.end method
