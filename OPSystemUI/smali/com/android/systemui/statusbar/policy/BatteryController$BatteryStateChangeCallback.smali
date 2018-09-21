.class public interface abstract Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.super Ljava/lang/Object;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryStateChangeCallback"
.end annotation


# virtual methods
.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .line 55
    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 58
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 0
    .param p1, "style"    # I

    .line 60
    return-void
.end method

.method public onFastChargeChanged(Z)V
    .locals 0
    .param p1, "fastCharge"    # Z

    .line 59
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .line 56
    return-void
.end method
