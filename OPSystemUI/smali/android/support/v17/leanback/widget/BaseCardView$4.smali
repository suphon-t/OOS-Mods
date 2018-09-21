.class Landroid/support/v17/leanback/widget/BaseCardView$4;
.super Ljava/lang/Object;
.source "BaseCardView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoAlpha(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseCardView;

    .line 796
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$4;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 803
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$4;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v0, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$4;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 805
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$4;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 812
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 799
    return-void
.end method
