.class Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;
.super Landroid/database/ContentObserver;
.source "SliceViewManagerBase.java"


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
.method constructor <init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 138
    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 141
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-static {v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->access$400(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method
