.class Lcom/android/systemui/recents/RecentsImplProxy$1;
.super Landroid/os/Handler;
.source "RecentsImplProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImplProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImplProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImplProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImplProxy;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->onShowCurrentUserToast(II)V

    .line 155
    goto/16 :goto_5

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    .line 152
    goto/16 :goto_5

    .line 148
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    .line 149
    goto/16 :goto_5

    .line 143
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 144
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/systemui/recents/RecentsImpl;->splitPrimaryTask(IIILandroid/graphics/Rect;)V

    .line 146
    goto/16 :goto_5

    .line 140
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    .line 141
    goto/16 :goto_5

    .line 136
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 137
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    .line 138
    goto :goto_5

    .line 133
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    .line 134
    goto :goto_5

    .line 128
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 129
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v3}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZI)V

    .line 131
    goto :goto_5

    .line 125
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    .line 126
    goto :goto_5

    .line 122
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    .line 123
    nop

    .line 159
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 160
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
