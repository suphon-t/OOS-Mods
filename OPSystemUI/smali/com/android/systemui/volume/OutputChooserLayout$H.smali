.class Lcom/android/systemui/volume/OutputChooserLayout$H;
.super Landroid/os/Handler;
.source "OutputChooserLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OutputChooserLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/OutputChooserLayout;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserLayout$H;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    .line 259
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$H;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->access$500(Lcom/android/systemui/volume/OutputChooserLayout;[Lcom/android/systemui/volume/OutputChooserLayout$Item;)V

    goto :goto_1

    .line 266
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$H;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->access$600(Lcom/android/systemui/volume/OutputChooserLayout;Lcom/android/systemui/volume/OutputChooserLayout$Callback;)V

    goto :goto_1

    .line 268
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 269
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$H;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->access$700(Lcom/android/systemui/volume/OutputChooserLayout;Z)V

    .line 271
    :cond_3
    :goto_1
    return-void
.end method
