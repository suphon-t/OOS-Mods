.class Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;
.super Ljava/lang/Object;
.source "PagedScrollBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/PagedScrollBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaJumpButtonClickListener"
.end annotation


# instance fields
.field private mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/car/widget/PagedScrollBarView$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/car/widget/PagedScrollBarView$1;

    .line 545
    invoke-direct {p0}, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 554
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    invoke-interface {v0}, Landroidx/car/widget/PagedScrollBarView$PaginationListener;->onAlphaJump()V

    .line 557
    :cond_0
    return-void
.end method

.method public setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    .line 549
    iput-object p1, p0, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    .line 550
    return-void
.end method
