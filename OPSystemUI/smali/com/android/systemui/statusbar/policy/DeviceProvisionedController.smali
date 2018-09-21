.class public interface abstract Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
.super Ljava/lang/Object;
.source "DeviceProvisionedController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCurrentUser()I
.end method

.method public isCurrentUserSetup()Z
    .locals 1

    .line 28
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isUserSetup(I)Z

    move-result v0

    return v0
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract isUserSetup(I)Z
.end method
