.class Lcom/android/systemui/keyguard/KeyguardViewMediator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 404
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method private onSimAbsentLocked()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 572
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/16 v1, 0x1f0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 573
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    .line 572
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const-string v0, "KeyguardViewMediator"

    const-string v1, "SIM removed, showing keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 579
    :cond_0
    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 471
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 481
    :cond_0
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFingerprintAuthFailed()V
    .locals 2

    .line 583
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 584
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedFingerprintAttempt(I)V

    .line 588
    :cond_0
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 592
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulFingerprintAttempt(I)V

    .line 596
    :cond_0
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 2
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 609
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 611
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPhoneStateChanged(I)V
    .locals 4
    .param p1, "phoneState"    # I

    .line 445
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 447
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPhoneStateChanged to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$402(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 451
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 452
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 453
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    const-string v1, "KeyguardViewMediator"

    const-string v2, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 488
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 493
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    .line 494
    .local v1, "simPinSecure":Z
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 496
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    goto :goto_1

    .line 497
    :catch_0
    move-exception v3

    .line 498
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onSimSecureStateChanged"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    instance-of v4, v3, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_0

    .line 500
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 494
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 564
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unspecific state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 556
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 557
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 558
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 560
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 561
    monitor-exit v2

    .line 562
    goto/16 :goto_5

    .line 561
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 542
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 543
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 544
    const-string v4, "KeyguardViewMediator"

    const-string v5, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_2

    .line 548
    :cond_3
    const-string v3, "KeyguardViewMediator"

    const-string v4, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 552
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->onSimAbsentLocked()V

    .line 553
    monitor-exit v2

    .line 554
    goto :goto_5

    .line 553
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 530
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 531
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 532
    const-string v4, "KeyguardViewMediator"

    const-string v5, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_3

    .line 537
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 539
    :goto_3
    monitor-exit v2

    .line 540
    goto :goto_5

    .line 539
    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 510
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 511
    :try_start_4
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 512
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 513
    const-string v4, "KeyguardViewMediator"

    const-string v5, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_4

    .line 518
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 521
    :cond_6
    :goto_4
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v3, :cond_7

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->onSimAbsentLocked()V

    .line 526
    :cond_7
    monitor-exit v2

    .line 527
    goto :goto_5

    .line 526
    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    .line 567
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrustChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 600
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 603
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 605
    :cond_0
    :goto_0
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 441
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 425
    if-eqz p1, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 428
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    goto :goto_1

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 437
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_2
    :goto_1
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 411
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 420
    monitor-exit v0

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
