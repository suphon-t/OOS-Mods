.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;,
        Lcom/android/systemui/statusbar/policy/NetworkController$IconState;,
        Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/DemoMode;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public abstract addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.end method

.method public abstract getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
.end method

.method public abstract getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
.end method

.method public abstract hasEmergencyCryptKeeperText()Z
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract hasVoiceCallingFeature()Z
.end method

.method public abstract isRadioOn()Z
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public abstract removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
.end method

.method public abstract setNetworkSpeedController(Lcom/android/systemui/statusbar/phone/NetworkSpeedController;)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method
