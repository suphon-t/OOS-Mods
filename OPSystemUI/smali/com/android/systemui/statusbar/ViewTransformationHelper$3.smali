.class Lcom/android/systemui/statusbar/ViewTransformationHelper$3;
.super Ljava/lang/Object;
.source "ViewTransformationHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field final synthetic val$notification:Lcom/android/systemui/statusbar/TransformableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;->val$notification:Lcom/android/systemui/statusbar/TransformableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;->val$notification:Lcom/android/systemui/statusbar/TransformableView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 139
    return-void
.end method
