.class Lcom/android/systemui/pip/tv/PipControlsView$5;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/tv/PipControlsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 142
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$5;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView$5;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlsView;->access$300(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView$5;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlsView;->access$400(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlsView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView$5;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlsView;->access$400(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlsView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/pip/tv/PipControlsView$Listener;->onClosed()V

    .line 149
    :cond_0
    return-void
.end method
