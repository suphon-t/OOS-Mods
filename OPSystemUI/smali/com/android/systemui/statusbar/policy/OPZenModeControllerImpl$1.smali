.class Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;
.super Landroid/os/Handler;
.source "OPZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 60
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Z)V

    .end local v0    # "enable":Z
    goto :goto_0

    .line 55
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 56
    .local v0, "threekey":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V

    .line 57
    nop

    .line 63
    .end local v0    # "threekey":I
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
