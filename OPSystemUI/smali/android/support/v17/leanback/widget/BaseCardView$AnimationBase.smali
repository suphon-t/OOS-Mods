.class Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;
.super Landroid/view/animation/Animation;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationBase"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseCardView;

    .line 901
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method final mockEnd()V
    .locals 2

    .line 910
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 911
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->access$000(Landroid/support/v17/leanback/widget/BaseCardView;)V

    .line 912
    return-void
.end method

.method final mockStart()V
    .locals 3

    .line 905
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 906
    return-void
.end method
