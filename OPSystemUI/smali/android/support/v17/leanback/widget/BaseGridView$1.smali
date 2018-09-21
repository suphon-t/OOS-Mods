.class Landroid/support/v17/leanback/widget/BaseGridView$1;
.super Ljava/lang/Object;
.source "BaseGridView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseGridView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/BaseGridView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseGridView;

    .line 231
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView$1;->this$0:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$1;->this$0:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->onChildRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$1;->this$0:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/BaseGridView;->mChainedRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$1;->this$0:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/BaseGridView;->mChainedRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 238
    :cond_0
    return-void
.end method
