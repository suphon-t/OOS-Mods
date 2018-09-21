.class Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;
.super Ljava/lang/Object;
.source "SliceViewManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

.field final synthetic val$s:Landroidx/slice/Slice;


# direct methods
.method constructor <init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;Landroidx/slice/Slice;)V
    .locals 0
    .param p1, "this$2"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

    .line 128
    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;->this$2:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

    iput-object p2, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;->val$s:Landroidx/slice/Slice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 131
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;->this$2:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

    iget-object v0, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-static {v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->access$200(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Landroidx/slice/SliceViewManager$SliceCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1$1;->val$s:Landroidx/slice/Slice;

    invoke-interface {v0, v1}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V

    .line 132
    return-void
.end method
