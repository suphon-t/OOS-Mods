.class public interface abstract Lcom/android/systemui/statusbar/policy/BatteryController;
.super Ljava/lang/Object;
.source "BatteryController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/DemoMode;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public isAodPowerSave()Z
    .locals 1

    .line 47
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    return v0
.end method

.method public abstract isPowerSave()Z
.end method

.method public abstract setPowerSaveMode(Z)V
.end method
