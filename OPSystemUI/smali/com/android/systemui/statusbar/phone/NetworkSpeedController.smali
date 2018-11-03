.class public interface abstract Lcom/android/systemui/statusbar/phone/NetworkSpeedController;
.super Ljava/lang/Object;
.source "NetworkSpeedController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
.end method
