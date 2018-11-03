.class Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 772
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 776
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v14/preference/PreferenceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "x1"    # Landroid/support/v14/preference/PreferenceFragment$1;

    .line 772
    invoke-direct {p0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 804
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 805
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v1, v0, Landroid/support/v7/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/preference/PreferenceViewHolder;

    .line 806
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 807
    .local v1, "dividerAllowedBelow":Z
    :goto_0
    if-nez v1, :cond_1

    .line 808
    return v2

    .line 810
    :cond_1
    iget-boolean v4, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 811
    .local v4, "nextAllowed":Z
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 812
    .local v5, "index":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_3

    .line 813
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 814
    .local v6, "nextView":Landroid/view/View;
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 815
    .local v7, "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v8, v7, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Landroid/support/v7/preference/PreferenceViewHolder;

    .line 816
    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v3

    nop

    :cond_2
    move v4, v2

    .line 818
    .end local v6    # "nextView":Landroid/view/View;
    .end local v7    # "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    return v4
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 798
    invoke-direct {p0, p2, p3}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 801
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 780
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 781
    return-void

    .line 783
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 784
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 785
    .local v1, "width":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "childViewIndex":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 786
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 787
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4, p2}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 788
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 789
    .local v5, "top":I
    iget-object v6, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v6, v2, v5, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 790
    iget-object v6, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 785
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "top":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 793
    .end local v3    # "childViewIndex":I
    :cond_2
    return-void
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0
    .param p1, "allowDividerAfterLastItem"    # Z

    .line 837
    iput-boolean p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 838
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 822
    if-eqz p1, :cond_0

    .line 823
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    goto :goto_0

    .line 825
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 827
    :goto_0
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 828
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 829
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "dividerHeight"    # I

    .line 832
    iput p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 833
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 834
    return-void
.end method
