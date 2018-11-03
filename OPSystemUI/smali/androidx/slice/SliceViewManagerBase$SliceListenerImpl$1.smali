.class Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;
.super Ljava/lang/Object;
.source "SliceViewManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;


# direct methods
.method constructor <init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 123
    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-static {v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->access$000(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)V

    .line 127
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    iget-object v0, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v0, v0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-static {v1}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->access$100(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Landroidx/slice/Slice;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v0

    .line 128
    .local v0, "s":Landroidx/slice/Slice;
    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-static {v1}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->access$300(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;

    invoke-direct {v2, p0, v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;-><init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;Landroidx/slice/Slice;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method
