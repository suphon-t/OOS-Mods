.class public interface abstract Lcom/android/systemui/statusbar/policy/SecurityController;
.super Ljava/lang/Object;
.source "SecurityController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
.end method

.method public abstract getPrimaryVpnName()Ljava/lang/String;
.end method

.method public abstract getWorkProfileOrganizationName()Ljava/lang/CharSequence;
.end method

.method public abstract getWorkProfileVpnName()Ljava/lang/String;
.end method

.method public abstract hasCACertInCurrentUser()Z
.end method

.method public abstract hasCACertInWorkProfile()Z
.end method

.method public abstract hasWorkProfile()Z
.end method

.method public abstract isDeviceManaged()Z
.end method

.method public abstract isNetworkLoggingEnabled()Z
.end method

.method public abstract isVpnBranded()Z
.end method

.method public abstract isVpnEnabled()Z
.end method
