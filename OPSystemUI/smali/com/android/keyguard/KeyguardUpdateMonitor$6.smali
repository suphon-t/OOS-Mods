.class Lcom/android/keyguard/KeyguardUpdateMonitor$6;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1171
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 1175
    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "action":Ljava/lang/String;
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_0
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1184
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 1185
    :cond_1
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 1186
    const-string/jumbo v3, "status"

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1187
    .local v3, "status":I
    const-string v7, "plugged"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1188
    .local v14, "plugged":I
    const-string v7, "level"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1189
    .local v15, "level":I
    const-string v7, "health"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 1191
    .local v16, "health":I
    const-string v7, "max_charging_current"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1192
    .local v11, "maxChargingMicroAmp":I
    const-string v7, "max_charging_voltage"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1195
    .local v7, "maxChargingMicroVolt":I
    if-gtz v7, :cond_2

    .line 1196
    const v7, 0x4c4b40

    .line 1198
    .end local v7    # "maxChargingMicroVolt":I
    .local v10, "maxChargingMicroVolt":I
    :cond_2
    move v10, v7

    if-lez v11, :cond_3

    .line 1201
    div-int/lit16 v4, v11, 0x3e8

    div-int/lit16 v7, v10, 0x3e8

    mul-int/2addr v4, v7

    .line 1204
    .local v12, "maxChargingMicroWatt":I
    :goto_0
    move v12, v4

    goto :goto_1

    .line 1204
    .end local v12    # "maxChargingMicroWatt":I
    :cond_3
    goto :goto_0

    .line 1208
    .restart local v12    # "maxChargingMicroWatt":I
    :goto_1
    const-string v4, "fastcharge_status"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1209
    .local v4, "chargingstatus":I
    sget-boolean v7, Lcom/android/systemui/util/OPUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz v7, :cond_4

    .line 1210
    move v13, v4

    goto :goto_2

    :cond_4
    if-lez v4, :cond_5

    move v13, v6

    goto :goto_2

    :cond_5
    move v13, v5

    .line 1212
    .local v13, "fastcharge":I
    :goto_2
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    new-instance v9, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-object v7, v9

    move v8, v3

    move-object v6, v9

    move v9, v15

    move/from16 v17, v10

    move v10, v14

    .line 1212
    .end local v10    # "maxChargingMicroVolt":I
    .local v17, "maxChargingMicroVolt":I
    move/from16 v18, v11

    move/from16 v11, v16

    .line 1212
    .end local v11    # "maxChargingMicroAmp":I
    .local v18, "maxChargingMicroAmp":I
    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIII)V

    const/16 v7, 0x12e

    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1216
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1217
    .end local v3    # "status":I
    .end local v4    # "chargingstatus":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v12    # "maxChargingMicroWatt":I
    .end local v13    # "fastcharge":I
    .end local v14    # "plugged":I
    .end local v15    # "level":I
    .end local v16    # "health":I
    .end local v17    # "maxChargingMicroVolt":I
    .end local v18    # "maxChargingMicroAmp":I
    goto/16 :goto_3

    :cond_6
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1222
    const-string v3, "rebroadcastOnUnlock"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1223
    return-void

    .line 1225
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v3

    .line 1227
    .local v3, "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ss"

    .line 1228
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " subid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1227
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x130

    iget v6, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v7, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v8, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1232
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1233
    .end local v3    # "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    goto/16 :goto_3

    :cond_8
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1234
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x131

    const-string v8, "android.media.EXTRA_RINGER_MODE"

    .line 1235
    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1234
    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 1236
    :cond_9
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1237
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1238
    .local v3, "state":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x132

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1239
    .end local v3    # "state":Ljava/lang/String;
    goto/16 :goto_3

    :cond_a
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1240
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x149

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 1241
    :cond_b
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1242
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto/16 :goto_3

    .line 1243
    :cond_c
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 1247
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    const-string/jumbo v6, "subscription"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1249
    .local v4, "subId":I
    const-string v6, "slot"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1251
    .local v5, "phoneId":I
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " serviceState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x14a

    invoke-virtual {v7, v8, v4, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1257
    .end local v3    # "serviceState":Landroid/telephony/ServiceState;
    .end local v4    # "subId":I
    .end local v5    # "phoneId":I
    goto :goto_3

    :cond_d
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1258
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1259
    :cond_e
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1261
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x151

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1263
    :cond_f
    :goto_3
    return-void
.end method
