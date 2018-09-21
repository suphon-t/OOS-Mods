.class public final Landroid/support/v17/leanback/widget/ListRowView;
.super Landroid/widget/LinearLayout;
.source "ListRowView.java"


# instance fields
.field private mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ListRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_list_row:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v1, Landroid/support/v17/leanback/R$id;->row_content:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/HorizontalGridView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ListRowView;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 48
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowView;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setHasFixedSize(Z)V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowView;->setOrientation(I)V

    .line 54
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowView;->setDescendantFocusability(I)V

    .line 55
    return-void
.end method
