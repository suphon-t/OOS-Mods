.class Landroidx/slice/widget/RowView$2;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/RowView;->showSeeMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/RowView;

    .line 515
    iput-object p1, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 519
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    iget-object v0, v0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Landroidx/slice/widget/EventInfo;

    iget-object v1, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v1}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    .line 521
    invoke-static {v4}, Landroidx/slice/widget/RowView;->access$000(Landroidx/slice/widget/RowView;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 522
    .local v0, "info":Landroidx/slice/widget/EventInfo;
    iget-object v1, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    iget-object v1, v1, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    invoke-static {v2}, Landroidx/slice/widget/RowView;->access$100(Landroidx/slice/widget/RowView;)Landroidx/slice/widget/RowContent;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSlice()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 524
    .end local v0    # "info":Landroidx/slice/widget/EventInfo;
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    invoke-static {v0}, Landroidx/slice/widget/RowView;->access$100(Landroidx/slice/widget/RowView;)Landroidx/slice/widget/RowContent;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSlice()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "RowView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method
