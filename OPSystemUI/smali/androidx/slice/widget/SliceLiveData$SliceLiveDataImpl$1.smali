.class Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 273
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 276
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1500(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1600(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1500(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 277
    invoke-static {v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1600(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1700(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;

    move-result-object v0

    .line 278
    .local v0, "s":Landroidx/slice/Slice;
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1500(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 279
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1502(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 280
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1600(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroidx/slice/SliceViewManager;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v2}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1500(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v3}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1800(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroidx/slice/SliceViewManager$SliceCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 282
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v1, v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$1900(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V

    .line 283
    return-void
.end method
