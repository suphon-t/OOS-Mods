.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileState"
.end annotation


# instance fields
.field airplaneMode:Z

.field carrierNetworkChangeMode:Z

.field dataActivity:I

.field dataConnected:Z

.field dataSim:Z

.field isDefault:Z

.field isDefaultDataSubId:Z

.field isEmergency:Z

.field isVirtual:Z

.field networkName:Ljava/lang/String;

.field networkNameData:Ljava/lang/String;

.field roaming:Z

.field simstate:Ljava/lang/String;

.field userSetup:Z

.field voiceLevel:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1428
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/systemui/statusbar/policy/SignalController$State;

    .line 1454
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    .line 1455
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 1456
    .local v0, "state":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1457
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1458
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1459
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1460
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 1461
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 1462
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 1463
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 1464
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 1465
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1466
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    .line 1467
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    .line 1470
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    .line 1473
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    .line 1476
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    .line 1478
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1511
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1512
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1513
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1511
    :goto_0
    return v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 1482
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 1483
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1484
    const-string v1, "dataSim="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1485
    const-string v1, "networkName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1486
    const-string v1, "networkNameData="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1487
    const-string v1, "dataConnected="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1488
    const-string v1, "roaming="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1489
    const-string v1, "isDefault="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1490
    const-string v1, "isEmergency="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1491
    const-string v1, "airplaneMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1492
    const-string v1, "carrierNetworkChangeMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1493
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1494
    const-string/jumbo v1, "userSetup="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1495
    const-string/jumbo v1, "voiceLevel="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1496
    const-string v1, "dataActivity="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1499
    const-string v1, "simstate="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1502
    const-string v1, "isDefaultDataSubId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1505
    const-string v0, "isVirtual"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1507
    return-void
.end method
