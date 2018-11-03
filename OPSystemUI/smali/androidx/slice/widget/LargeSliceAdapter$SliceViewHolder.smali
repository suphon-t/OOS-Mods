.class public Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LargeSliceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/LargeSliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceViewHolder"
.end annotation


# instance fields
.field public final mSliceChildView:Landroidx/slice/widget/SliceChildView;

.field final synthetic this$0:Landroidx/slice/widget/LargeSliceAdapter;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/LargeSliceAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/slice/widget/LargeSliceAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 235
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    .line 236
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 237
    instance-of v0, p2, Landroidx/slice/widget/SliceChildView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/slice/widget/SliceChildView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    .line 238
    return-void
.end method


# virtual methods
.method bind(Landroidx/slice/SliceItem;I)V
    .locals 11
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "position"    # I

    .line 241
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 245
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, p0}, Landroidx/slice/widget/SliceChildView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, p0}, Landroidx/slice/widget/SliceChildView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 250
    .local v2, "isHeader":Z
    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v3}, Landroidx/slice/widget/LargeSliceAdapter;->access$400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/SliceView;

    move-result-object v3

    const/4 v9, 0x2

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v3}, Landroidx/slice/widget/LargeSliceAdapter;->access$400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/SliceView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v9

    :goto_1
    move v10, v3

    .line 251
    .local v10, "mode":I
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v3, v10}, Landroidx/slice/widget/SliceChildView;->setMode(I)V

    .line 252
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v4}, Landroidx/slice/widget/LargeSliceAdapter;->access$500(Landroidx/slice/widget/LargeSliceAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 253
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v4}, Landroidx/slice/widget/LargeSliceAdapter;->access$600(Landroidx/slice/widget/LargeSliceAdapter;)Landroid/util/AttributeSet;

    move-result-object v4

    iget-object v5, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v5}, Landroidx/slice/widget/LargeSliceAdapter;->access$700(Landroidx/slice/widget/LargeSliceAdapter;)I

    move-result v5

    iget-object v6, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v6}, Landroidx/slice/widget/LargeSliceAdapter;->access$800(Landroidx/slice/widget/LargeSliceAdapter;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroid/util/AttributeSet;II)V

    .line 254
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v4}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v7

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v4}, Landroidx/slice/widget/LargeSliceAdapter;->access$900(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/SliceView$OnSliceActionListener;

    move-result-object v8

    move-object v4, p1

    move v5, v2

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/slice/widget/SliceChildView;->setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 255
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v4}, Landroidx/slice/widget/LargeSliceAdapter;->access$1000(Landroidx/slice/widget/LargeSliceAdapter;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 256
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v2, :cond_4

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v4}, Landroidx/slice/widget/LargeSliceAdapter;->access$1100(Landroidx/slice/widget/LargeSliceAdapter;)J

    move-result-wide v4

    goto :goto_3

    :cond_4
    const-wide/16 v4, -0x1

    :goto_3
    invoke-virtual {v3, v4, v5}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 257
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v2, :cond_5

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v4}, Landroidx/slice/widget/LargeSliceAdapter;->access$1200(Landroidx/slice/widget/LargeSliceAdapter;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 258
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    instance-of v3, v3, Landroidx/slice/widget/RowView;

    if-eqz v3, :cond_7

    .line 259
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    check-cast v3, Landroidx/slice/widget/RowView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v4}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v4

    if-ne v4, v1, :cond_6

    move v4, v1

    goto :goto_5

    :cond_6
    move v4, v0

    :goto_5
    invoke-virtual {v3, v4}, Landroidx/slice/widget/RowView;->setSingleItem(Z)V

    .line 261
    :cond_7
    new-array v3, v9, [I

    .line 262
    .local v3, "info":[I
    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v4}, Landroidx/slice/widget/LargeSliceAdapter;->access$1300(Landroidx/slice/widget/LargeSliceAdapter;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v5}, Landroidx/slice/widget/LargeSliceAdapter;->access$1000(Landroidx/slice/widget/LargeSliceAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, p1, v2, v5}, Landroidx/slice/widget/ListContent;->getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I

    move-result v4

    aput v4, v3, v0

    .line 263
    aput p2, v3, v1

    .line 264
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v3}, Landroidx/slice/widget/SliceChildView;->setTag(Ljava/lang/Object;)V

    .line 265
    return-void

    .line 242
    .end local v2    # "isHeader":Z
    .end local v3    # "info":[I
    .end local v10    # "mode":I
    :cond_8
    :goto_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 269
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v0}, Landroidx/slice/widget/LargeSliceAdapter;->access$400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/SliceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v0}, Landroidx/slice/widget/LargeSliceAdapter;->access$400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/SliceView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setClickInfo([I)V

    .line 271
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v0}, Landroidx/slice/widget/LargeSliceAdapter;->access$400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/SliceView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->performClick()Z

    .line 273
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 277
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v0}, Landroidx/slice/widget/LargeSliceAdapter;->access$1400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/LargeTemplateView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-static {v0}, Landroidx/slice/widget/LargeSliceAdapter;->access$1400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/LargeTemplateView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/slice/widget/LargeTemplateView;->onForegroundActivated(Landroid/view/MotionEvent;)V

    .line 280
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
