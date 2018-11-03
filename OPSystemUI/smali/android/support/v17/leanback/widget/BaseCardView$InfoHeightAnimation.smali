.class final Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;
.super Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InfoHeightAnimation"
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

    .line 939
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    .line 940
    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->mStartValue:F

    .line 941
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->mDelta:F

    .line 942
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 946
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->mStartValue:F

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->mDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 947
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->requestLayout()V

    .line 948
    return-void
.end method
