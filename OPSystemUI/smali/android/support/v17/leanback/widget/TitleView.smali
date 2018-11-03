.class public Landroid/support/v17/leanback/widget/TitleView;
.super Landroid/widget/FrameLayout;
.source "TitleView.java"


# instance fields
.field private flags:I

.field private mBadgeView:Landroid/widget/ImageView;

.field private mHasSearchListener:Z

.field private mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

.field private mTextView:Landroid/widget/TextView;

.field private final mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    sget v0, Landroid/support/v17/leanback/R$attr;->browseTitleViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Landroid/support/v17/leanback/widget/TitleView;->flags:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mHasSearchListener:Z

    .line 42
    new-instance v1, Landroid/support/v17/leanback/widget/TitleView$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/TitleView$1;-><init>(Landroid/support/v17/leanback/widget/TitleView;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/TitleView;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 106
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Landroid/support/v17/leanback/R$layout;->lb_title_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "rootView":Landroid/view/View;
    sget v3, Landroid/support/v17/leanback/R$id;->title_badge:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/TitleView;->mBadgeView:Landroid/widget/ImageView;

    .line 109
    sget v3, Landroid/support/v17/leanback/R$id;->title_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/TitleView;->mTextView:Landroid/widget/TextView;

    .line 110
    sget v3, Landroid/support/v17/leanback/R$id;->title_orb:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/SearchOrbView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    .line 112
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/TitleView;->setClipToPadding(Z)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/TitleView;->setClipChildren(Z)V

    .line 114
    return-void
.end method
