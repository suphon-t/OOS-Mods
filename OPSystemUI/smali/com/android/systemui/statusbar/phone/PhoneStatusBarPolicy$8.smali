.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 1128
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "com.oem.intent.action.ACTION_USB_HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_5
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_6
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_8
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_9
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_a
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1162
    :pswitch_0
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1164
    .local v1, "bluetoothHeadsetState":I
    const-string v4, "oneplus.bluetooth.device.isopheadset"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1165
    .local v3, "isOPEarphone":Z
    if-ne v1, v2, :cond_1

    if-nez v3, :cond_1

    .line 1166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_2

    .line 1168
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 1173
    .end local v1    # "bluetoothHeadsetState":I
    .end local v3    # "isOPEarphone":Z
    :goto_2
    :pswitch_1
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "PhoneStatusBarPolicy"

    const-string v2, "BT battery level changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_3

    .line 1158
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    .line 1159
    goto :goto_3

    .line 1152
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 1153
    goto :goto_3

    .line 1146
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const-string v2, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    .line 1148
    goto :goto_3

    .line 1139
    :pswitch_5
    const-string v1, "rebroadcastOnUnlock"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1141
    goto :goto_3

    .line 1143
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    .line 1144
    goto :goto_3

    .line 1135
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 1136
    nop

    .line 1178
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x63ecb970 -> :sswitch_a
        -0x49d08e2b -> :sswitch_9
        -0x33813a72 -> :sswitch_8
        -0xdb21ee7 -> :sswitch_7
        0x60418f4 -> :sswitch_6
        0x2083ec2d -> :sswitch_5
        0x2287d448 -> :sswitch_4
        0x34803185 -> :sswitch_3
        0x3eaa3ea6 -> :sswitch_2
        0x3eac4465 -> :sswitch_1
        0x7b621251 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
