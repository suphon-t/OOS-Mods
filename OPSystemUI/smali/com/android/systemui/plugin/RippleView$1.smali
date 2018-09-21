.class Lcom/android/systemui/plugin/RippleView$1;
.super Landroid/os/Handler;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/RippleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/RippleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/RippleView;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->invalidate()V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v0}, Lcom/android/systemui/plugin/RippleView;->access$000(Lcom/android/systemui/plugin/RippleView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v0}, Lcom/android/systemui/plugin/RippleView;->access$108(Lcom/android/systemui/plugin/RippleView;)I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v0}, Lcom/android/systemui/plugin/RippleView;->access$100(Lcom/android/systemui/plugin/RippleView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v1}, Lcom/android/systemui/plugin/RippleView;->access$200(Lcom/android/systemui/plugin/RippleView;)F

    move-result v1

    sget v2, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/RippleView;->access$102(Lcom/android/systemui/plugin/RippleView;I)I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v0}, Lcom/android/systemui/plugin/RippleView;->access$308(Lcom/android/systemui/plugin/RippleView;)I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v0}, Lcom/android/systemui/plugin/RippleView;->access$300(Lcom/android/systemui/plugin/RippleView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v2}, Lcom/android/systemui/plugin/RippleView;->access$200(Lcom/android/systemui/plugin/RippleView;)F

    move-result v2

    sget v3, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView$1;->this$0:Lcom/android/systemui/plugin/RippleView;

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/RippleView;->access$302(Lcom/android/systemui/plugin/RippleView;I)I

    .line 65
    :cond_1
    sget v0, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/plugin/RippleView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    :cond_2
    return-void
.end method
