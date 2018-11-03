.class Landroidx/car/widget/PagedListView$1;
.super Ljava/lang/Object;
.source "PagedListView.java"

# interfaces
.implements Landroidx/car/widget/PagedScrollBarView$PaginationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/widget/PagedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/widget/PagedListView;


# direct methods
.method constructor <init>(Landroidx/car/widget/PagedListView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/widget/PagedListView;

    .line 324
    iput-object p1, p0, Landroidx/car/widget/PagedListView$1;->this$0:Landroidx/car/widget/PagedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaJump()V
    .locals 1

    .line 347
    iget-object v0, p0, Landroidx/car/widget/PagedListView$1;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$400(Landroidx/car/widget/PagedListView;)V

    .line 348
    return-void
.end method

.method public onPaginate(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 327
    packed-switch p1, :pswitch_data_0

    .line 341
    const-string v0, "PagedListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown pagination direction ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :pswitch_0
    iget-object v0, p0, Landroidx/car/widget/PagedListView$1;->this$0:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->pageDown()V

    .line 336
    iget-object v0, p0, Landroidx/car/widget/PagedListView$1;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Landroidx/car/widget/PagedListView$1;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView$OnScrollListener;->onScrollDownButtonClicked()V

    goto :goto_0

    .line 329
    :pswitch_1
    iget-object v0, p0, Landroidx/car/widget/PagedListView$1;->this$0:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->pageUp()V

    .line 330
    iget-object v0, p0, Landroidx/car/widget/PagedListView$1;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroidx/car/widget/PagedListView$1;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView$OnScrollListener;->onScrollUpButtonClicked()V

    .line 343
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
