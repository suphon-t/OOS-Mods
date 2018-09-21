.class public final Landroid/support/v17/leanback/widget/ListRowHoverCardView;
.super Landroid/widget/LinearLayout;
.source "ListRowHoverCardView.java"


# instance fields
.field private final mDescriptionView:Landroid/widget/TextView;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ListRowHoverCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_list_row_hovercard:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v1, Landroid/support/v17/leanback/R$id;->title:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowHoverCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ListRowHoverCardView;->mTitleView:Landroid/widget/TextView;

    .line 47
    sget v1, Landroid/support/v17/leanback/R$id;->description:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowHoverCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ListRowHoverCardView;->mDescriptionView:Landroid/widget/TextView;

    .line 48
    return-void
.end method
