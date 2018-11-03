.class Landroidx/slice/widget/SliceView$1;
.super Ljava/lang/Object;
.source "SliceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/SliceView;

    .line 718
    iput-object p1, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 721
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-static {v0}, Landroidx/slice/widget/SliceView;->access$000(Landroidx/slice/widget/SliceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-static {v0}, Landroidx/slice/widget/SliceView;->access$100(Landroidx/slice/widget/SliceView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceView;->access$202(Landroidx/slice/widget/SliceView;Z)Z

    .line 723
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-static {v0}, Landroidx/slice/widget/SliceView;->access$100(Landroidx/slice/widget/SliceView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 724
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->performHapticFeedback(I)Z

    .line 726
    :cond_0
    return-void
.end method
