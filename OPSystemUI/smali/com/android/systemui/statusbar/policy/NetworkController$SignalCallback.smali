.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignalCallback"
.end annotation


# virtual methods
.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 79
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 81
    return-void
.end method

.method public setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0
    .param p1, "LTEstatus"    # [Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 86
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 83
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/String;Ljava/lang/String;ZIZZ)V
    .locals 0
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataActivityId"    # I
    .param p8, "stackedDataIcon"    # [I
    .param p9, "stackedVoiceIcon"    # [I
    .param p10, "typeContentDescription"    # Ljava/lang/String;
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "isWide"    # Z
    .param p13, "subId"    # I
    .param p14, "roaming"    # Z
    .param p15, "connected"    # Z

    .line 73
    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "simDetected"    # Z

    .line 77
    return-void
.end method

.method public setProvision(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "provision"    # I

    .line 90
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    return-void
.end method

.method public setVirtualSimstate([I)V
    .locals 0
    .param p1, "states"    # [I

    .line 94
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z
    .param p8, "statusLabel"    # Ljava/lang/String;

    .line 62
    return-void
.end method
