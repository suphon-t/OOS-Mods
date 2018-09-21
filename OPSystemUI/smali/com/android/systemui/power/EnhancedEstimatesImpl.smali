.class public Lcom/android/systemui/power/EnhancedEstimatesImpl;
.super Ljava/lang/Object;
.source "EnhancedEstimatesImpl.java"

# interfaces
.implements Lcom/android/systemui/power/EnhancedEstimates;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimate()Lcom/android/systemui/power/Estimate;
    .locals 1

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLowWarningThreshold()J
    .locals 2

    .line 19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSevereWarningThreshold()J
    .locals 2

    .line 24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isHybridNotificationEnabled()Z
    .locals 1

    .line 9
    const/4 v0, 0x0

    return v0
.end method
