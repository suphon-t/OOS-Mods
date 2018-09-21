.class Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$2;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


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

    .line 287
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 1
    .param p1, "s"    # Landroidx/slice/Slice;

    .line 290
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$2000(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V

    .line 291
    return-void
.end method
