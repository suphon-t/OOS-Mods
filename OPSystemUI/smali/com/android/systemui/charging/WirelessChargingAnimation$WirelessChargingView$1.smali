.class Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;
.super Landroid/os/Handler;
.source "WirelessChargingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;->this$0:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;->this$0:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    invoke-static {v0}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->access$200(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;->this$0:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->access$002(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;->this$0:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    invoke-static {v0}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->access$100(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;)V

    .line 139
    nop

    .line 149
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
