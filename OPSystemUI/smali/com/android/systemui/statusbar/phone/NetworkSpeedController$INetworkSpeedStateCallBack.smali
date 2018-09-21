.class public interface abstract Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
.super Ljava/lang/Object;
.source "NetworkSpeedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NetworkSpeedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INetworkSpeedStateCallBack"
.end annotation


# virtual methods
.method public onSpeedChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "speed"    # Ljava/lang/String;

    .line 22
    return-void
.end method

.method public onSpeedShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 23
    return-void
.end method
