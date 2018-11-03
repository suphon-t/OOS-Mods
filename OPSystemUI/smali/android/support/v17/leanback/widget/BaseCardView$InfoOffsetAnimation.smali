.class final Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;
.super Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InfoOffsetAnimation"
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

    .line 921
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    .line 922
    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    .line 923
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    .line 924
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 928
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 929
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->requestLayout()V

    .line 930
    return-void
.end method
