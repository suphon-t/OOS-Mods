.class Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;
.super Ljava/lang/Object;
.source "QSEditTileAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 80
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 81
    .local v0, "data":Landroid/content/ClipData;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$102(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/view/View$DragShadowBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    .line 84
    .local v1, "holder":Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->setVisible(Z)V

    .line 85
    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->access$300(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$202(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 87
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    .line 91
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->beginDragAndDrop(Landroid/support/v7/widget/RecyclerView;)V

    .line 92
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->canRemoveTile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const v2, 0x7f110250

    goto :goto_0

    .line 94
    :cond_0
    const v2, 0x7f11024f

    .line 95
    .local v2, "titleResId":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getDragLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v3, 0x1

    return v3
.end method
