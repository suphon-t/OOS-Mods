.class Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;
.super Landroid/os/Handler;
.source "FingerprintDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    .line 162
    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;II)V

    .line 159
    goto :goto_0

    .line 154
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    .line 155
    goto :goto_0

    .line 151
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    .line 152
    goto :goto_0

    .line 148
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    .line 149
    goto :goto_0

    .line 145
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    .line 146
    goto :goto_0

    .line 142
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)V

    .line 143
    goto :goto_0

    .line 139
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V

    .line 140
    goto :goto_0

    .line 136
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V

    .line 137
    goto :goto_0

    .line 133
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    .line 134
    goto :goto_0

    .line 130
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/internal/os/SomeArgs;)V

    .line 131
    nop

    .line 168
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
