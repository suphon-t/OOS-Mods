.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.super Ljava/lang/Object;
.source "StatusBarSignalPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;
    }
.end annotation


# static fields
.field static final OP_DEBUG:Z


# instance fields
.field private mActivityEnabled:Z

.field private mBlackList:Ljava/lang/String;

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockLTE:[Z

.field private mBlockMobile:Z

.field private mBlockWifi:Z

.field private mCTA:Z

.field private final mContext:Landroid/content/Context;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mForceBlockWifi:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIsAirplaneMode:Z

.field private mIsVoLteEnable:Z

.field private mIsVoWifiEnable:Z

.field private mLTEIconStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mProvisionState:[I

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mShowNoSim:Z

.field private final mSlotAirplane:Ljava/lang/String;

.field private final mSlotEthernet:Ljava/lang/String;

.field private final mSlotMobile:Ljava/lang/String;

.field private final mSlotVpn:Ljava/lang/String;

.field private final mSlotWifi:Ljava/lang/String;

.field private mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiVisible:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsVoWifiEnable:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsVoLteEnable:Z

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    .line 98
    const/4 v2, 0x6

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    .line 105
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    .line 482
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104063b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104064a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104065a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040644

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040659

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    .line 118
    invoke-static {p1}, Lcom/android/systemui/util/OPUtils;->hasCtaFeature(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    .line 119
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->initProvistionState()V

    .line 124
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 125
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 126
    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 128
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 133
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method private currentVpnIconId(Z)I
    .locals 1
    .param p1, "isBranded"    # Z

    .line 167
    if-eqz p1, :cond_0

    const v0, 0x7f0807c3

    goto :goto_0

    :cond_0
    const v0, 0x7f080a67

    :goto_0
    return v0
.end method

.method private dumpMobileStates()V
    .locals 4

    .line 575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 576
    const-string v1, "StatusBarSignalPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setSubs log:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSlotProvisionStatus(II)I
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "defaultProvision"    # I

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v0, :cond_0

    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 514
    :cond_0
    move v0, p2

    .line 517
    .local v0, "status":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v2, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 526
    :goto_0
    goto :goto_1

    .line 522
    :catch_0
    move-exception v2

    .line 524
    .local v2, "ex":Ljava/lang/NullPointerException;
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 525
    const-string v1, "StatusBarSignalPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 518
    :catch_1
    move-exception v2

    .line 520
    .local v2, "ex":Landroid/os/RemoteException;
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 521
    const-string v1, "StatusBarSignalPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 527
    :goto_1
    const-string v1, "StatusBarSignalPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotProvisionStatus slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v0
.end method

.method private getState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 3
    .param p1, "subId"    # I

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 326
    .local v1, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v2, p1, :cond_0

    .line 327
    return-object v1

    .line 329
    .end local v1    # "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    :cond_0
    goto :goto_0

    .line 330
    :cond_1
    const-string v0, "StatusBarSignalPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected subscription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStateByPhoneId(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 3
    .param p1, "slotId"    # I

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 337
    .local v1, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    if-ne v2, p1, :cond_0

    .line 338
    return-object v1

    .line 340
    .end local v1    # "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    :cond_0
    goto :goto_0

    .line 341
    :cond_1
    const-string v0, "StatusBarSignalPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 452
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 453
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 454
    return v2

    .line 458
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 459
    return v2

    .line 462
    :cond_1
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 463
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 464
    return v2

    .line 467
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 468
    const-string v3, "StatusBarSignalPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCorrectSubs SubId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " change from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v2

    .line 462
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method private initLTEIcon()V
    .locals 7

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v1, "volte"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v1, "vowifi"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    const-string/jumbo v1, "volte"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "volteState":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;
    const v1, 0x7f080a5f

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    .line 435
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    .line 436
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    const-string/jumbo v3, "vowifi"

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;-><init>(Ljava/lang/String;)V

    .line 437
    .local v2, "volwifiState":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;
    const v3, 0x7f080a63

    iput v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    .line 438
    const/4 v4, 0x2

    iput v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    .line 440
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v5, "vowifi"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 444
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v4, "volte"

    invoke-interface {v3, v4, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 446
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v3, "volte"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v3, "vowifi"

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 448
    return-void
.end method

.method private initProvistionState()V
    .locals 5

    .line 138
    const-string v0, "StatusBarSignalPolicy"

    const-string v1, "init provision"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 142
    .local v0, "count":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v1, -0x1

    nop

    .line 143
    .local v1, "defaultState":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "slot":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getSlotProvisionStatus(II)I

    move-result v4

    aput v4, v3, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "slot":I
    :cond_1
    return-void
.end method

.method private isDataDisable(I)Z
    .locals 3
    .param p1, "slot"    # I

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 504
    return v1

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    aget v0, v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public static synthetic lambda$UsBELiDs0GJjQ8hYeagcWJmxhFc(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateVpn()V

    return-void
.end method

.method private updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    .line 244
    .local v0, "first":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 248
    return-void
.end method

.method private updateVpn()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    .line 160
    .local v0, "vpnVisible":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->currentVpnIconId(Z)I

    move-result v1

    .line 162
    .local v1, "vpnIconId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 164
    return-void
.end method

.method private updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 251
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 257
    :goto_0
    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarSignalPolicy$UsBELiDs0GJjQ8hYeagcWJmxhFc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarSignalPolicy$UsBELiDs0GJjQ8hYeagcWJmxhFc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 180
    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    .line 186
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 187
    .local v0, "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 188
    .local v1, "blockAirplane":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 189
    .local v2, "blockMobile":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 190
    .local v3, "blockWifi":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 192
    .local v4, "blockEthernet":Z
    const-string/jumbo v5, "volte"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 193
    .local v5, "blockVoLte":Z
    const-string/jumbo v6, "vowifi"

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 195
    .local v6, "blockVoWifi":Z
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    if-ne v1, v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-ne v2, v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    if-ne v4, v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    if-eq v3, v7, :cond_4

    .line 197
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    .line 199
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    .line 200
    const/4 v7, 0x0

    if-nez v3, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mForceBlockWifi:Z

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    move v8, v7

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    .line 202
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aput-boolean v5, v8, v7

    .line 203
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    const/4 v8, 0x2

    aput-boolean v6, v7, v8

    .line 206
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v7, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 208
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v7, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 211
    :cond_4
    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 535
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 536
    .local v0, "visible":Z
    :goto_0
    iget v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 537
    .local v3, "resId":I
    iget-object v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    .line 539
    .local v4, "description":Ljava/lang/String;
    if-lez v3, :cond_1

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v1, v5, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 545
    :goto_1
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 7
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 549
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 550
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 551
    .local v0, "resId":I
    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    .line 553
    .local v3, "description":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

    .line 554
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 555
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 557
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 561
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 562
    .local v5, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    iget v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-gez v6, :cond_3

    .line 564
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_3

    :cond_2
    move v6, v1

    :goto_3
    iput-boolean v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    .line 567
    .end local v5    # "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    :cond_3
    goto :goto_2

    .line 569
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 571
    return-void
.end method

.method public setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 9
    .param p1, "status"    # [Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 588
    .local v0, "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v2, "volte"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 589
    .local v2, "blockVoLte":Z
    const-string/jumbo v3, "vowifi"

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 590
    .local v3, "blockVoWifi":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aput-boolean v2, v4, v1

    .line 591
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    const/4 v5, 0x2

    aput-boolean v3, v4, v5

    .line 594
    .end local v0    # "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "blockVoLte":Z
    .end local v3    # "blockVoWifi":Z
    :cond_0
    move v0, v1

    .line 594
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 595
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    .line 596
    .local v2, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;
    iget v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    .line 597
    .local v3, "imsIndex":I
    aget-object v4, p1, v3

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_1

    aget-object v4, p1, v3

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->visible:Z

    .line 598
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->visible:Z

    if-eqz v4, :cond_2

    .line 599
    aget-object v4, p1, v3

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    .line 600
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    .line 601
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    iget v7, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    iget-object v8, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 602
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    invoke-interface {v4, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2

    .line 604
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 594
    .end local v2    # "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;
    .end local v3    # "imsIndex":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "i":I
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    if-eqz v0, :cond_4

    .line 609
    const-string v0, "StatusBarSignalPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setLTEStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_4
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 668
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/String;Ljava/lang/String;ZIZZ)V
    .locals 13
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataActivityId"    # I
    .param p8, "stackedDataIds"    # [I
    .param p9, "stackedVoiceIds"    # [I
    .param p10, "typeContentDescription"    # Ljava/lang/String;
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "isWide"    # Z
    .param p13, "subId"    # I
    .param p14, "roaming"    # Z
    .param p15, "connected"    # Z

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    .line 287
    move/from16 v3, p13

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v4

    .line 288
    .local v4, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    if-nez v4, :cond_0

    .line 289
    return-void

    .line 293
    :cond_0
    iget v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v5, :cond_2

    if-eqz v2, :cond_1

    iget v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v5, :cond_2

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    .line 295
    .local v5, "typeChanged":Z
    :goto_0
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v8, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v6

    :goto_1
    iput-boolean v8, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    .line 296
    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v8, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 297
    iput v2, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    .line 298
    iget-object v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    .line 299
    move-object/from16 v8, p10

    iput-object v8, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/String;

    .line 300
    move/from16 v9, p14

    iput-boolean v9, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 301
    if-eqz p5, :cond_4

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v10, :cond_4

    move v10, v7

    goto :goto_2

    :cond_4
    move v10, v6

    :goto_2
    iput-boolean v10, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    .line 302
    if-eqz p6, :cond_5

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v11, :cond_5

    move v11, v7

    goto :goto_3

    :cond_5
    move v11, v6

    :goto_3
    iput-boolean v11, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    .line 304
    aget v11, p8, v6

    iput v11, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    .line 305
    aget v6, p9, v6

    iput v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    .line 306
    aget v6, p8, v7

    iput v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    .line 307
    aget v6, p9, v7

    iput v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    .line 309
    move/from16 v6, p15

    iput-boolean v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 311
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 313
    if-eqz v5, :cond_6

    .line 314
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v7

    .line 315
    .local v7, "wifiCopy":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 316
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-static {v7, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 317
    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 318
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 321
    .end local v7    # "wifiCopy":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    :cond_6
    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "simDetected"    # Z

    .line 479
    return-void
.end method

.method public setProvision(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "provision"    # I

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 486
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    aput p2, v0, p1

    .line 489
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getStateByPhoneId(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    .line 491
    .local v0, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    if-nez v0, :cond_1

    .line 492
    return-void

    .line 495
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "StatusBarSignalPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProvision slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " provision:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->isDataDisable(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isAbsent()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    .line 499
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 500
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    return-void

    .line 366
    :cond_0
    const-string v0, "StatusBarSignalPolicy"

    const-string v1, "setSubs s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->initLTEIcon()V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 379
    .local v0, "n":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 380
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v2, "tmpStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;>;"
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "count":I
    :goto_0
    const/4 v5, 0x0

    if-ge v1, v0, :cond_2

    .line 383
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    .line 384
    .local v6, "slotIndex":I
    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-direct {v7, v8, v5}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    move-object v5, v7

    .line 385
    .local v5, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    iput v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    .line 386
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    if-ge v6, v4, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v6, 0x1

    :goto_1
    move v4, v7

    .line 382
    .end local v5    # "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .end local v6    # "slotIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "i":I
    :cond_2
    new-array v1, v4, [Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 392
    .local v1, "states":[Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    move v6, v3

    .local v6, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 393
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    aput-object v8, v1, v7

    .line 392
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 396
    .end local v6    # "j":I
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    if-eqz v6, :cond_8

    .line 397
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    :goto_3
    if-ltz v6, :cond_8

    .line 399
    if-eqz v0, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    if-eqz v7, :cond_4

    aget-object v7, v1, v6

    if-nez v7, :cond_4

    goto :goto_4

    .line 408
    :cond_4
    aget-object v7, v1, v6

    if-eqz v7, :cond_7

    .line 409
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 400
    :cond_5
    :goto_4
    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    rsub-int/lit8 v8, v6, 0x0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-direct {v7, v8, v5}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    .line 401
    .local v7, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    iput v6, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    .line 402
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    move v9, v3

    :goto_5
    iput-boolean v9, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    .line 408
    .end local v7    # "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    nop

    .line 397
    :cond_7
    :goto_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 418
    .end local v6    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 420
    const-string v3, "StatusBarSignalPolicy"

    const-string v5, "setSubs e"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->dumpMobileStates()V

    .line 423
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z
    .param p8, "statusLabel"    # Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    .line 218
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 219
    .local v2, "visible":Z
    :goto_0
    if-eqz p4, :cond_1

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 220
    .local v5, "in":Z
    :goto_1
    if-eqz p5, :cond_2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    .line 222
    .local v6, "out":Z
    :goto_2
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v7

    .line 224
    .local v7, "newState":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    .line 225
    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 226
    iput-boolean v5, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    .line 227
    iput-boolean v6, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    .line 228
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->slot:Ljava/lang/String;

    .line 229
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 230
    iget-object v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    .line 232
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v8

    .line 233
    .local v8, "first":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    if-eqz v8, :cond_4

    iget v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v9, :cond_3

    iget v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    if-nez v9, :cond_3

    iget v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    if-nez v9, :cond_3

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz v9, :cond_4

    :cond_3
    move v3, v4

    nop

    :cond_4
    iput-boolean v3, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 238
    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 239
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 240
    return-void
.end method
