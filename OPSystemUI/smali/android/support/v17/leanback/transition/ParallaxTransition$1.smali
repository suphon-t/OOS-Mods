.class Landroid/support/v17/leanback/transition/ParallaxTransition$1;
.super Ljava/lang/Object;
.source "ParallaxTransition.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/transition/ParallaxTransition;->createAnimator(Landroid/view/View;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/transition/ParallaxTransition;

.field final synthetic val$source:Landroid/support/v17/leanback/widget/Parallax;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/transition/ParallaxTransition;Landroid/support/v17/leanback/widget/Parallax;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/transition/ParallaxTransition;

    .line 65
    iput-object p1, p0, Landroid/support/v17/leanback/transition/ParallaxTransition$1;->this$0:Landroid/support/v17/leanback/transition/ParallaxTransition;

    iput-object p2, p0, Landroid/support/v17/leanback/transition/ParallaxTransition$1;->val$source:Landroid/support/v17/leanback/widget/Parallax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Landroid/support/v17/leanback/transition/ParallaxTransition$1;->val$source:Landroid/support/v17/leanback/widget/Parallax;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Parallax;->updateValues()V

    .line 69
    return-void
.end method
