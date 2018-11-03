.class Landroid/support/design/transformation/FabTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/transformation/FabTransformationBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/transformation/FabTransformationBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$dependency:Landroid/view/View;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Landroid/support/design/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/transformation/FabTransformationBehavior;

    .line 147
    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->this$0:Landroid/support/design/transformation/FabTransformationBehavior;

    iput-boolean p2, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$expanded:Z

    iput-object p3, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    iput-object p4, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 160
    iget-boolean v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$expanded:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 164
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 150
    iget-boolean v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$expanded:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 154
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_0
    return-void
.end method
