.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionDefaults"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDataSubId()I
    .locals 1

    .line 1147
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public getDefaultVoiceSubId()I
    .locals 1

    .line 1143
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method
