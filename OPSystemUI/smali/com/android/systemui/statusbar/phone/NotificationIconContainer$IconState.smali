.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconState"
.end annotation


# instance fields
.field public clampedAppearAmount:F

.field public customTransformHeight:I

.field public iconAppearAmount:F

.field public iconColor:I

.field public isLastExpandIcon:Z

.field public justAdded:Z

.field private justReplaced:Z

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public translateContent:Z

.field public useFullTransitionAmount:Z

.field public useLinearTransitionAmount:Z

.field public visibleState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 671
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 673
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 674
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 682
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 685
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .param p1, "x1"    # Z

    .line 671
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    return p1
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .line 689
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 690
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 691
    .local v0, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v2, 0x0

    .line 692
    .local v2, "animate":Z
    const/4 v3, 0x0

    .line 693
    .local v3, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$200(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    .line 695
    .local v4, "animationsAllowed":Z
    :goto_0
    if-eqz v4, :cond_d

    .line 696
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    const/4 v7, 0x2

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v6, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v8

    if-eq v6, v8, :cond_3

    .line 706
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$400()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v3

    .line 707
    const/4 v2, 0x1

    goto :goto_2

    .line 697
    :cond_2
    :goto_1
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 698
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_3

    .line 699
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    .line 700
    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 702
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$300()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v3

    .line 703
    const/4 v2, 0x1

    .line 709
    :cond_3
    :goto_2
    if-nez v2, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v6

    if-ltz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 710
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v8

    if-lt v6, v8, :cond_5

    .line 711
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v6

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v6, v7, :cond_5

    .line 713
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$400()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v3

    .line 714
    const/4 v2, 0x1

    .line 716
    :cond_5
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    const-wide/16 v8, 0x64

    if-eqz v6, :cond_7

    .line 717
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    .line 718
    .local v6, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 719
    nop

    .line 720
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$700()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 719
    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 721
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 722
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v10

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$700()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 723
    if-eqz v3, :cond_6

    .line 724
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 725
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 727
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v3

    .line 728
    invoke-virtual {v3, v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 729
    const/4 v2, 0x1

    .line 730
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$802(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    .line 732
    .end local v6    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    :cond_7
    if-nez v2, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v6

    if-ltz v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 733
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v10

    if-le v6, v10, :cond_9

    .line 734
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v6

    if-ne v6, v7, :cond_8

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v6, v7, :cond_9

    .line 736
    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    .line 737
    .restart local v6    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 738
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 739
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 740
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v3

    .line 741
    invoke-virtual {v3, v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 742
    const/4 v2, 0x1

    .line 744
    .end local v6    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 745
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;

    move-result-object v6

    const-wide/16 v10, 0x0

    if-ne p1, v6, :cond_b

    .line 746
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1000()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v3

    .line 747
    nop

    .line 748
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v6

    if-eqz v6, :cond_a

    goto :goto_3

    .line 747
    :cond_a
    move-wide v8, v10

    :goto_3
    invoke-virtual {v3, v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    goto :goto_5

    .line 750
    :cond_b
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1200()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v3

    .line 751
    nop

    .line 752
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_4

    .line 751
    :cond_c
    move-wide v8, v10

    :goto_4
    invoke-virtual {v3, v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 754
    :goto_5
    const/4 v2, 0x1

    .line 757
    :cond_d
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v0, v6, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 758
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    move v7, v5

    goto :goto_6

    :cond_e
    move v7, v1

    :goto_6
    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 759
    if-eqz v2, :cond_f

    .line 760
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_7

    .line 762
    :cond_f
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 764
    :goto_7
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_10

    goto :goto_8

    :cond_10
    move v5, v1

    .line 765
    .local v5, "inShelf":Z
    :goto_8
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIsInShelf(Z)V

    .line 767
    .end local v0    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v2    # "animate":Z
    .end local v3    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .end local v4    # "animationsAllowed":Z
    .end local v5    # "inShelf":Z
    :cond_11
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 768
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 769
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 770
    return-void
.end method

.method public hasCustomTransformHeight()Z
    .locals 2

    .line 773
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 778
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 779
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 780
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 782
    :cond_0
    return-void
.end method
