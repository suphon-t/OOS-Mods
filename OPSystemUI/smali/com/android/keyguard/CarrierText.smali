.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mFlags:I

.field private final mIsEmergencyCallCapable:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mSimErrorState:[Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    .line 68
    new-instance v0, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    nop

    .line 132
    nop

    .line 134
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 136
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 137
    return-void

    .line 132
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;
    .param p1, "x1"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierText;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    return-object v0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .line 489
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 490
    .local v0, "plmnValid":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 491
    .local v1, "spnValid":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 493
    :cond_0
    if-eqz v0, :cond_1

    .line 494
    return-object p0

    .line 495
    :cond_1
    if-eqz v1, :cond_2

    .line 496
    return-object p1

    .line 498
    :cond_2
    const-string v2, ""

    return-object v2
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;
    .param p2, "separator"    # Ljava/lang/String;

    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 590
    .local v0, "plmnValid":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 591
    .local v1, "spnValid":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 592
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 593
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    :goto_0
    return-object v2

    .line 594
    :cond_1
    if-eqz v0, :cond_2

    .line 595
    return-object p0

    .line 596
    :cond_2
    if-eqz v1, :cond_3

    .line 597
    return-object p1

    .line 599
    :cond_3
    const-string v2, ""

    return-object v2
.end method

.method private getAirplaneModeMessage()Ljava/lang/String;
    .locals 2

    .line 324
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110127

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 324
    :goto_0
    return-object v0
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 384
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 426
    :pswitch_0
    nop

    .line 427
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11032d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 426
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 421
    :pswitch_1
    nop

    .line 422
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11032f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 421
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 424
    goto :goto_0

    .line 415
    :pswitch_2
    nop

    .line 416
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11032e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 415
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 418
    goto :goto_0

    .line 411
    :pswitch_3
    const/4 v0, 0x0

    .line 412
    goto :goto_0

    .line 404
    :pswitch_4
    nop

    .line 405
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110327

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 404
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 408
    goto :goto_0

    .line 400
    :pswitch_5
    const/4 v0, 0x0

    .line 401
    goto :goto_0

    .line 395
    :pswitch_6
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const v3, 0x7f11031d

    .line 396
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 395
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 397
    goto :goto_0

    .line 391
    :pswitch_7
    const-string v0, ""

    .line 392
    goto :goto_0

    .line 386
    :pswitch_8
    move-object v0, p2

    .line 387
    nop

    .line 432
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLocalString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "originNamesId"    # I
    .param p3, "localNamesId"    # I

    .line 576
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "origNames":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "localNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 578
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 579
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v5, v1, v2

    const-string/jumbo v6, "string"

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 578
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v2    # "i":I
    :cond_1
    return-object p1
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .locals 2

    .line 319
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11031b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 319
    :goto_0
    return-object v0
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 454
    if-nez p1, :cond_0

    .line 455
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    .line 459
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 464
    .local v0, "missingAndNotProvisioned":Z
    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    move-object p1, v1

    .line 465
    sget-object v1, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 485
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 483
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 481
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 479
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 477
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 475
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 473
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 471
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 469
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 467
    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .line 440
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 443
    const-string v0, " - "

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 446
    :cond_0
    return-object p1
.end method

.method private networkClassToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "networkClass"    # I

    .line 554
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 559
    .local v0, "classIds":[I
    const/4 v1, 0x0

    .line 560
    .local v1, "classString":Ljava/lang/String;
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, v0, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 563
    :cond_0
    if-nez v1, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2

    nop

    :array_0
    .array-data 4
        0x7f1101f0
        0x7f1101ed
        0x7f1101ee
        0x7f1101ef
    .end array-data
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "noSims"    # Z

    .line 146
    const-string v0, ""

    .line 147
    .local v0, "carrier":Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    .local v1, "carrierTextForSimIOError":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 150
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 153
    if-eqz p2, :cond_0

    .line 154
    nop

    .line 155
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10401e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 154
    invoke-static {v1, v3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 156
    :cond_0
    if-nez v2, :cond_1

    .line 158
    invoke-static {v1, p1}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {p1, v1}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 149
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "index":I
    :cond_3
    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 339
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 343
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0

    .line 346
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 347
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 353
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 357
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 330
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 331
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 334
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 335
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 361
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 364
    if-nez p2, :cond_0

    .line 365
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 367
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 369
    :goto_0
    return-void
.end method

.method protected updateCarrierText()V
    .locals 21

    .line 169
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 170
    .local v1, "allSimsMissing":Z
    const/4 v2, 0x0

    .line 171
    .local v2, "anySimReadyAndInService":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 174
    .local v3, "showLocale":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 176
    .local v4, "showRat":Z
    const/4 v5, 0x0

    .line 178
    .local v5, "displayText":Ljava/lang/CharSequence;
    iget-object v6, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v6

    .line 179
    .local v6, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 180
    .local v8, "N":I
    const-string v9, "CarrierText"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateCarrierText(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move v9, v2

    move v2, v1

    move v1, v7

    .line 181
    .local v1, "i":I
    .local v2, "allSimsMissing":Z
    .local v9, "anySimReadyAndInService":Z
    :goto_0
    if-ge v1, v8, :cond_10

    .line 182
    const-string v12, ""

    .line 183
    .local v12, "networkClass":Ljava/lang/CharSequence;
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    .line 185
    .local v13, "subId":I
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v14

    .line 187
    .local v14, "phoneId":I
    iget-object v15, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v15

    .line 188
    .local v15, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    if-eqz v4, :cond_3

    .line 190
    iget-object v7, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/ServiceState;

    .line 192
    .local v7, "ss":Landroid/telephony/ServiceState;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    if-eqz v10, :cond_0

    .line 193
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v10

    if-nez v10, :cond_3

    .line 194
    :cond_0
    const/4 v10, 0x0

    .line 195
    .local v10, "networkType":I
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v16

    if-eqz v16, :cond_1

    .line 197
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v10

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v16

    if-eqz v16, :cond_2

    .line 200
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v10

    .line 202
    :cond_2
    :goto_1
    nop

    .line 203
    invoke-static {v10}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v11

    .line 202
    invoke-direct {v0, v11}, Lcom/android/keyguard/CarrierText;->networkClassToString(I)Ljava/lang/String;

    move-result-object v12

    .line 206
    .end local v7    # "ss":Landroid/telephony/ServiceState;
    .end local v10    # "networkType":I
    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 207
    .local v7, "carrierName":Ljava/lang/CharSequence;
    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    .line 230
    :cond_4
    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move/from16 v18, v9

    goto/16 :goto_6

    .line 207
    :cond_5
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 208
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v7

    const/4 v7, 0x2

    .line 208
    .end local v7    # "carrierName":Ljava/lang/CharSequence;
    .local v17, "carrierName":Ljava/lang/CharSequence;
    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "names":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v10, "newCarrierName":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 210
    .local v11, "j":I
    :goto_3
    move/from16 v18, v9

    array-length v9, v7

    .line 210
    .end local v9    # "anySimReadyAndInService":Z
    .local v18, "anySimReadyAndInService":Z
    if-ge v11, v9, :cond_b

    .line 211
    if-eqz v3, :cond_6

    .line 212
    aget-object v9, v7, v11

    move/from16 v19, v3

    move-object/from16 v20, v6

    const v3, 0x7f030045

    const v6, 0x7f030036

    invoke-direct {v0, v9, v3, v6}, Lcom/android/keyguard/CarrierText;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v19, "showLocale":Z
    .local v20, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    aput-object v9, v7, v11

    goto :goto_4

    .line 216
    .end local v19    # "showLocale":Z
    .end local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "showLocale":Z
    .restart local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    move/from16 v19, v3

    move-object/from16 v20, v6

    .line 216
    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v19    # "showLocale":Z
    .restart local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_4
    aget-object v3, v7, v11

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 217
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v7, v11

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v11

    .line 221
    :cond_7
    if-lez v11, :cond_8

    aget-object v3, v7, v11

    add-int/lit8 v6, v11, -0x1

    aget-object v6, v7, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    goto :goto_5

    .line 224
    :cond_8
    if-lez v11, :cond_9

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 225
    :cond_9
    aget-object v3, v7, v11

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_a
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v18

    move/from16 v3, v19

    move-object/from16 v6, v20

    goto :goto_3

    .line 228
    .end local v11    # "j":I
    .end local v19    # "showLocale":Z
    .end local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "showLocale":Z
    .restart local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_b
    move/from16 v19, v3

    move-object/from16 v20, v6

    .line 228
    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v19    # "showLocale":Z
    .restart local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 228
    .end local v10    # "newCarrierName":Ljava/lang/StringBuilder;
    .end local v17    # "carrierName":Ljava/lang/CharSequence;
    .local v7, "carrierName":Ljava/lang/CharSequence;
    goto :goto_7

    .line 230
    .end local v18    # "anySimReadyAndInService":Z
    .end local v19    # "showLocale":Z
    .end local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "showLocale":Z
    .restart local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "anySimReadyAndInService":Z
    :cond_c
    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move/from16 v18, v9

    :goto_6
    move-object/from16 v7, v17

    .line 230
    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v9    # "anySimReadyAndInService":Z
    .restart local v18    # "anySimReadyAndInService":Z
    .restart local v19    # "showLocale":Z
    .restart local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_7
    invoke-direct {v0, v15, v7}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 232
    .local v3, "carrierTextForSimState":Ljava/lang/CharSequence;
    const-string v6, "CarrierText"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handling (subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz v3, :cond_d

    .line 235
    const/4 v2, 0x0

    .line 236
    invoke-static {v5, v3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 238
    :cond_d
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v15, v6, :cond_f

    .line 240
    iget-object v6, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ServiceState;

    .line 242
    .local v6, "ss":Landroid/telephony/ServiceState;
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v9

    if-nez v9, :cond_f

    .line 245
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    const/16 v10, 0x12

    if-ne v9, v10, :cond_e

    iget-object v9, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 246
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 247
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-object v9, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 248
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 250
    :cond_e
    const-string v9, "CarrierText"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM ready and in service: subId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", ss="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v3, 0x1

    .line 181
    .end local v6    # "ss":Landroid/telephony/ServiceState;
    .end local v7    # "carrierName":Ljava/lang/CharSequence;
    .end local v12    # "networkClass":Ljava/lang/CharSequence;
    .end local v13    # "subId":I
    .end local v14    # "phoneId":I
    .end local v15    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v18    # "anySimReadyAndInService":Z
    .local v3, "anySimReadyAndInService":Z
    move v9, v3

    goto :goto_8

    .line 181
    .end local v3    # "anySimReadyAndInService":Z
    .restart local v18    # "anySimReadyAndInService":Z
    :cond_f
    move/from16 v9, v18

    .line 181
    .end local v18    # "anySimReadyAndInService":Z
    .restart local v9    # "anySimReadyAndInService":Z
    :goto_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v19

    move-object/from16 v6, v20

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 257
    .end local v1    # "i":I
    .end local v19    # "showLocale":Z
    .end local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v3, "showLocale":Z
    .local v6, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_10
    move/from16 v19, v3

    move-object/from16 v20, v6

    move/from16 v18, v9

    .line 257
    .end local v3    # "showLocale":Z
    .end local v6    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v9    # "anySimReadyAndInService":Z
    .restart local v18    # "anySimReadyAndInService":Z
    .restart local v19    # "showLocale":Z
    .restart local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_16

    .line 258
    if-eqz v8, :cond_11

    .line 265
    nop

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 266
    .end local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v3, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 265
    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_a

    .line 272
    .end local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_11
    move-object/from16 v3, v20

    .line 273
    .end local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x10401e9

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 274
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    .line 276
    .local v6, "i":Landroid/content/Intent;
    if-eqz v6, :cond_15

    .line 277
    const-string v7, ""

    .line 278
    .local v7, "spn":Ljava/lang/String;
    const-string v9, ""

    .line 279
    .local v9, "plmn":Ljava/lang/String;
    const-string v10, "showSpn"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 280
    const-string v10, "spn"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 282
    if-eqz v19, :cond_12

    .line 283
    const v10, 0x7f030045

    const v11, 0x7f030036

    invoke-direct {v0, v7, v10, v11}, Lcom/android/keyguard/CarrierText;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 288
    :cond_12
    const-string v10, "showPlmn"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 289
    const-string v10, "plmn"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 291
    if-eqz v19, :cond_13

    .line 292
    const v10, 0x7f030045

    const v11, 0x7f030036

    invoke-direct {v0, v9, v10, v11}, Lcom/android/keyguard/CarrierText;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 298
    :cond_13
    const-string v10, "CarrierText"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting plmn/spn sticky brdcst "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v9, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 300
    move-object v1, v9

    goto :goto_9

    .line 302
    :cond_14
    invoke-static {v9, v7}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 305
    .end local v7    # "spn":Ljava/lang/String;
    .end local v9    # "plmn":Ljava/lang/String;
    :cond_15
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v1}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 305
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v6    # "i":Landroid/content/Intent;
    goto :goto_a

    .line 309
    .end local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_16
    move-object/from16 v3, v20

    .line 309
    .end local v20    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_a
    invoke-direct {v0, v5, v2}, Lcom/android/keyguard/CarrierText;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 312
    .end local v5    # "displayText":Ljava/lang/CharSequence;
    .local v1, "displayText":Ljava/lang/CharSequence;
    if-nez v18, :cond_17

    iget-object v5, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getAirplaneModeMessage()Ljava/lang/String;

    move-result-object v1

    .line 315
    :cond_17
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method
