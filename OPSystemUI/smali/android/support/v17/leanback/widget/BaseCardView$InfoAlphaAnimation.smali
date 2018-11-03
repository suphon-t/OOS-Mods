.class final Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;
.super Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InfoAlphaAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseCardView;
    .param p2, "start"    # F
    .param p3, "end"    # F

    .line 957
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    .line 958
    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 959
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 960
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 964
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 965
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 966
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v2, v2, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
