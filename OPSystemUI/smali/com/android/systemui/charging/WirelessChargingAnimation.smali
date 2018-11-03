.class public Lcom/android/systemui/charging/WirelessChargingAnimation;
.super Ljava/lang/Object;
.source "WirelessChargingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;,
        Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;
    }
.end annotation


# static fields
.field private static mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;


# instance fields
.field private final mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "batteryLevel"    # I
    .param p4, "callback"    # Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;
    .param p5, "isDozing"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v6, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)V

    iput-object v6, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    .line 61
    return-void
.end method

.method public static makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "batteryLevel"    # I
    .param p3, "callback"    # Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;
    .param p4, "isDozing"    # Z

    .line 69
    new-instance v6, Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingAnimation;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)V

    return-object v6
.end method


# virtual methods
.method public show()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    .line 77
    invoke-static {v0}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->access$000(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->hide(J)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    sput-object v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    invoke-virtual {v0}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->show()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    const-wide/16 v1, 0x46d

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->hide(J)V

    .line 88
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
