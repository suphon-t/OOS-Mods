.class Lcom/android/systemui/pip/tv/PipControlButtonView$1;
.super Ljava/lang/Object;
.source "PipControlButtonView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipControlButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlButtonView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 51
    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->startFocusGainAnimation()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->startFocusLossAnimation()V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->access$000(Lcom/android/systemui/pip/tv/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->access$000(Lcom/android/systemui/pip/tv/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 60
    :cond_1
    return-void
.end method
