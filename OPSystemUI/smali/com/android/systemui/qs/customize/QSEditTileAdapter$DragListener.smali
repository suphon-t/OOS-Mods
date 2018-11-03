.class public Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;
.super Ljava/lang/Object;
.source "QSEditTileAdapter.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragListener"
.end annotation


# instance fields
.field private final mScrollWorker:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 211
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    .line 212
    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;
    .param p1, "x1"    # I

    .line 209
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->scrollPage(I)V

    return-void
.end method

.method private checkIfDragToPage(I)V
    .locals 5
    .param p1, "goToPage"    # I

    .line 247
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 248
    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$702(J)J

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 252
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->canScrollToNextPage()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 253
    .local v2, "canGo":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$700()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$702(J)J

    .line 255
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$802(I)I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    .end local v2    # "canGo":Z
    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic lambda$onDrag$0(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "source"    # Landroid/support/v7/widget/RecyclerView;

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onAfterItemRemoved(Landroid/support/v7/widget/RecyclerView;)V

    .line 361
    return-void
.end method

.method public static synthetic lambda$onDrag$1(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;)V
    .locals 2

    .line 395
    const-string v0, "QSEditTileAdapter"

    const-string v1, "post view changing event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onAfterItemAdded(Landroid/support/v7/widget/RecyclerView;)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 400
    .local v0, "adapterSource":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemChanged(I)V

    .line 401
    return-void
.end method

.method private moveItem()V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 221
    .local v0, "adapterSource":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 224
    .local v1, "customListSource":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 225
    .local v2, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v3

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 226
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v4

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemMoved(II)V

    .line 228
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    .line 229
    return-void
.end method

.method private scrollPage(I)V
    .locals 2
    .param p1, "goToPage"    # I

    .line 232
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$702(J)J

    .line 233
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->scrollNextPage()V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->scrollPrevPage()V

    .line 238
    :goto_0
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 265
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 267
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 268
    instance-of v1, p1, Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    .line 270
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$602(I)I

    goto :goto_0

    .line 273
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1200(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v1

    .line 275
    .local v1, "goToPage":I
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->checkIfDragToPage(I)V

    .line 277
    .end local v1    # "goToPage":I
    :cond_1
    return v2

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$602(I)I

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInLowerPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInLowerPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    const-string v1, "QSEditTileAdapter"

    const-string v3, "from lower to lower, skip it"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v2

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->canRemoveTile()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-eq v1, v3, :cond_4

    .line 291
    return v2

    .line 297
    :cond_4
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 380
    :pswitch_0
    goto/16 :goto_2

    .line 300
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 301
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v3

    .line 303
    .local v3, "currentPosition":I
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v4

    if-eq v4, v1, :cond_10

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v4

    if-eq v4, v1, :cond_10

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v1

    if-eq v1, v3, :cond_10

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v1

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 304
    goto/16 :goto_2

    .line 306
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->moveItem()V

    .line 307
    .end local v3    # "currentPosition":I
    goto/16 :goto_2

    .line 384
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$200()Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    if-nez v1, :cond_6

    .line 385
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$200()Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    .line 389
    :cond_6
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$702(J)J

    .line 390
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 391
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->endDragAndDrop()V

    .line 394
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$8rZsnprmTFL0WsIM-QCuZjcWhFw;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$8rZsnprmTFL0WsIM-QCuZjcWhFw;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    goto/16 :goto_2

    .line 311
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-ne v3, v4, :cond_9

    .line 313
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 314
    goto/16 :goto_2

    .line 316
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1200(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v3

    .line 317
    .local v3, "goToPage":I
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->checkIfDragToPage(I)V

    .line 319
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v4

    .line 320
    .local v4, "currentPosition":I
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v5

    if-eq v5, v4, :cond_10

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v5

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v6

    if-eq v5, v6, :cond_10

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v5

    if-eq v5, v1, :cond_10

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v5

    if-ne v5, v1, :cond_8

    .line 321
    goto/16 :goto_2

    .line 323
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->moveItem()V

    .line 324
    .end local v3    # "goToPage":I
    .end local v4    # "currentPosition":I
    goto/16 :goto_2

    .line 326
    :cond_9
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v3

    if-eq v3, v1, :cond_10

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v3

    if-ne v3, v1, :cond_a

    .line 327
    goto/16 :goto_2

    .line 329
    :cond_a
    const/4 v1, 0x1

    .line 331
    .local v1, "differentPager":Z
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-ne v3, v4, :cond_b

    .line 332
    const/4 v1, 0x0

    .line 334
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 335
    .local v3, "adapterSource":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 337
    .local v4, "targetAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    if-eqz v1, :cond_c

    .line 338
    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onBeforeItemAdded(Landroid/support/v7/widget/RecyclerView;)V

    .line 339
    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onBeforeItemRemoved(Landroid/support/v7/widget/RecyclerView;)V

    .line 342
    :cond_c
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v5

    .line 343
    .local v5, "customListSource":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 344
    .local v6, "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    .line 346
    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v7

    .line 348
    .local v7, "customListTarget":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-le v8, v9, :cond_d

    .line 349
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$602(I)I

    .line 351
    :cond_d
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v8

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 352
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    .line 354
    if-eqz v1, :cond_e

    .line 358
    iget-object v8, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    .line 359
    .local v8, "source":Landroid/support/v7/widget/RecyclerView;
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$TcjsZZ3WC0nl5CVgAGC4qZAIa74;

    invoke-direct {v10, p0, v8}, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$TcjsZZ3WC0nl5CVgAGC4qZAIa74;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v9

    invoke-static {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    .line 363
    .end local v8    # "source":Landroid/support/v7/widget/RecyclerView;
    goto :goto_1

    .line 364
    :cond_e
    iget-object v8, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/customize/QSEditPageManager;->rebuildPager(Landroid/support/v7/widget/RecyclerView;)I

    move-result v8

    .line 365
    .local v8, "scrollDirection":I
    if-ne v8, v2, :cond_f

    .line 367
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    goto :goto_1

    .line 370
    :cond_f
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v9

    invoke-static {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    .line 374
    .end local v8    # "scrollDirection":I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    iput-object v9, v8, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    .line 376
    .end local v1    # "differentPager":Z
    .end local v3    # "adapterSource":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v4    # "targetAdapter":Lcom/android/systemui/qs/customize/QSEditTileAdapter;
    .end local v5    # "customListSource":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    .end local v6    # "item":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .end local v7    # "customListTarget":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    goto :goto_2

    .line 378
    :pswitch_4
    nop

    .line 407
    :cond_10
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
