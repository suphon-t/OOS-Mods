.class public Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryStatus"
.end annotation


# instance fields
.field public final fastCharge:I

.field public final health:I

.field public final level:I

.field public final maxChargingWattage:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "plugged"    # I
    .param p4, "health"    # I
    .param p5, "maxChargingWattage"    # I
    .param p6, "fastCharge"    # I

    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 1468
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 1469
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    .line 1470
    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    .line 1471
    iput p5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    .line 1472
    iput p6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->fastCharge:I

    .line 1473
    return-void
.end method


# virtual methods
.method public final getChargingSpeed(II)I
    .locals 3
    .param p1, "slowThreshold"    # I
    .param p2, "fastThreshold"    # I

    .line 1515
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->fastCharge:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 1516
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->fastCharge:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    .line 1519
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-gtz v0, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    .line 1523
    :cond_2
    nop

    .line 1519
    :goto_0
    return v2
.end method

.method public isCharged()Z
    .locals 2

    .line 1502
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPluggedIn()Z
    .locals 3

    .line 1481
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isPluggedInWired()Z
    .locals 3

    .line 1491
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",health="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",maxChargingWattage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, fastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->fastCharge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
