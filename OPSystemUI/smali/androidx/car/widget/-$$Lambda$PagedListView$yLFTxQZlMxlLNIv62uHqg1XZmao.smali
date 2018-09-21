.class public final synthetic Landroidx/car/widget/-$$Lambda$PagedListView$yLFTxQZlMxlLNIv62uHqg1XZmao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/car/widget/PagedListView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/car/widget/PagedListView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/-$$Lambda$PagedListView$yLFTxQZlMxlLNIv62uHqg1XZmao;->f$0:Landroidx/car/widget/PagedListView;

    iput p2, p0, Landroidx/car/widget/-$$Lambda$PagedListView$yLFTxQZlMxlLNIv62uHqg1XZmao;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/-$$Lambda$PagedListView$yLFTxQZlMxlLNIv62uHqg1XZmao;->f$0:Landroidx/car/widget/PagedListView;

    iget v1, p0, Landroidx/car/widget/-$$Lambda$PagedListView$yLFTxQZlMxlLNIv62uHqg1XZmao;->f$1:I

    invoke-static {v0, v1}, Landroidx/car/widget/PagedListView;->lambda$snapToPosition$3(Landroidx/car/widget/PagedListView;I)V

    return-void
.end method
