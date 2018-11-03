.class final Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;
.super Landroid/os/Handler;
.source "OPThreekeyDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OPThreekeyDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 394
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 406
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$500(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    .line 405
    goto :goto_0

    .line 402
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$400(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    .line 403
    goto :goto_0

    .line 400
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$300(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    .line 401
    nop

    .line 409
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
