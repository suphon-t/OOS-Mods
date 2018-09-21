.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final OP_DEBUG:Z


# instance fields
.field private mActivityEnabled:Z

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:Ljava/lang/String;

.field private mAirplaneIconId:I

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockMobile:Z

.field private mBlockVoLte:Z

.field private mBlockVoWifi:Z

.field private mBlockWifi:Z

.field private mCTA:Z

.field private mDarkIntensity:F

.field private final mEndPadding:I

.field private final mEndPaddingNothingVisible:I

.field mEthernet:Landroid/widget/ImageView;

.field mEthernetDark:Landroid/widget/ImageView;

.field private mEthernetDescription:Ljava/lang/String;

.field mEthernetGroup:Landroid/view/ViewGroup;

.field private mEthernetIconId:I

.field private mEthernetVisible:Z

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mForceBlockWifi:Z

.field private final mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

.field private final mIconScaleFactor:F

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field private mIsVoLteEnable:Z

.field private mIsVoWifiEnable:Z

.field private mLTEStatusResources:[I

.field private mLastAirplaneIconId:I

.field private mLastEthernetIconId:I

.field private mLastVpnIconId:I

.field private mLastWifiActivityId:I

.field private mLastWifiStrengthId:I

.field private final mMobileDataIconStartPadding:I

.field mMobileSignalGroup:Landroid/widget/LinearLayout;

.field private final mMobileSignalGroupEndPadding:I

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisionState:[I

.field private mReadIconsFromXML:Z

.field private final mSecondaryTelephonyPadding:I

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mShowNoSim:Z

.field private final mTintArea:Landroid/graphics/Rect;

.field mVoLteView:Landroid/widget/ImageView;

.field mVoWifiView:Landroid/widget/ImageView;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnIconId:I

.field private mVpnVisible:Z

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityEnabled:Z

.field private mWifiActivityId:I

.field mWifiAirplaneSpacer:Landroid/view/View;

.field mWifiDark:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiIn:Z

.field private mWifiOut:Z

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const-string v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    .line 77
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 180
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 89
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 92
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    .line 93
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 94
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 95
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 96
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 100
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 103
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 104
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    .line 109
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    .line 122
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 144
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowNoSim:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCTA:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoWifiEnable:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoLteEnable:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoLte:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoWifi:Z

    .line 1096
    const/4 v3, 0x6

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    .line 1112
    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 183
    .local v4, "res":Landroid/content/res/Resources;
    nop

    .line 184
    const v5, 0x7f07031b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    .line 185
    nop

    .line 186
    const v5, 0x7f07031a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    .line 187
    const v5, 0x7f0705d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    .line 188
    const v5, 0x7f0705df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 189
    const v5, 0x7f070382

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .line 192
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 193
    .local v5, "typedValue":Landroid/util/TypedValue;
    const v6, 0x7f07060d

    invoke-virtual {v4, v6, v5, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 194
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    .line 195
    const-class v6, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 196
    const-class v6, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 197
    new-instance v6, Lcom/android/systemui/util/OPUtils$DisableStateTracker;

    invoke-direct {v6, v0, v3}, Lcom/android/systemui/util/OPUtils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateActivityEnabled()V

    .line 200
    const v3, 0x7f050029

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mReadIconsFromXML:Z

    .line 202
    move v3, v0

    .local v3, "slot":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 203
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->getSlotProvisionStatus(II)I

    move-result v7

    aput v7, v6, v3

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "slot":I
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/OPUtils;->hasCtaFeature(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCTA:Z

    .line 208
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowNoSim:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCTA:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowNoSim:Z

    .line 210
    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/SignalClusterView;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/SignalClusterView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->isDataDisable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowNoSim:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .line 72
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .line 72
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/SignalClusterView;ZZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/SignalClusterView;->getInOutIndicator(ZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/SignalClusterView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/SignalClusterView;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # Z

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method private apply()V
    .locals 13

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 670
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    if-eq v0, v3, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 672
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string/jumbo v3, "vpn"

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string/jumbo v3, "vpn"

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const-string v0, "SignalClusterView"

    const-string/jumbo v4, "vpn: %s"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v6, :cond_3

    const-string v6, "VISIBLE"

    goto :goto_1

    :cond_3
    const-string v6, "GONE"

    :goto_1
    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v0, :cond_6

    .line 683
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    if-eq v0, v4, :cond_5

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 686
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 688
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v4, "ethernet"

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 692
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v4, "ethernet"

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 696
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "SignalClusterView"

    const-string v4, "ethernet: %s"

    new-array v5, v3, [Ljava/lang/Object;

    .line 698
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v6, :cond_7

    const-string v6, "VISIBLE"

    goto :goto_3

    :cond_7
    const-string v6, "GONE"

    :goto_3
    aput-object v6, v5, v2

    .line 697
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 696
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_b

    .line 701
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    if-eq v0, v4, :cond_9

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 704
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 706
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string/jumbo v4, "wifi"

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 708
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    if-eq v0, v4, :cond_a

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 710
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 713
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 716
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string/jumbo v4, "wifi"

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 720
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_d

    const-string v0, "SignalClusterView"

    const-string/jumbo v5, "wifi: %s sig=%d"

    new-array v6, v4, [Ljava/lang/Object;

    .line 722
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v7, :cond_c

    const-string v7, "VISIBLE"

    goto :goto_5

    :cond_c
    const-string v7, "GONE"

    :goto_5
    aput-object v7, v6, v2

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 723
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 721
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 720
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_d
    const/4 v0, 0x0

    .line 730
    .local v0, "anyMobileVisible":Z
    const/4 v5, 0x0

    .line 732
    .local v5, "firstMobileTypeId":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 733
    .local v6, "slots":I
    const/4 v7, 0x0

    .line 736
    .local v7, "lastNoSimVisible":Z
    const/4 v8, 0x0

    .line 739
    .local v8, "stacked":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 740
    .local v10, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 741
    if-nez v0, :cond_e

    .line 742
    invoke-static {v10}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$800(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v5

    .line 743
    const/4 v0, 0x1

    .line 747
    :cond_e
    invoke-static {v10}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1500(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v11

    add-int/lit8 v12, v6, -0x1

    if-ne v11, v12, :cond_f

    .line 748
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->isNoSimVisible()Z

    move-result v7

    .line 752
    :cond_f
    invoke-static {v10}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1200(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {v10}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1300(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v11

    if-eqz v11, :cond_10

    .line 753
    const/4 v8, 0x1

    .line 756
    .end local v10    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_10
    goto :goto_6

    .line 757
    :cond_11
    if-eqz v0, :cond_12

    .line 758
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v10, "mobile"

    invoke-interface {v9, v10}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    goto :goto_7

    .line 760
    :cond_12
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v10, "mobile"

    invoke-interface {v9, v10}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 763
    :goto_7
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v9, :cond_14

    .line 764
    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    iget v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    if-eq v9, v10, :cond_13

    .line 765
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 766
    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iput v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 768
    :cond_13
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v10, "airplane"

    invoke-interface {v9, v10}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 770
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 772
    :cond_14
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v10, "airplane"

    invoke-interface {v9, v10}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 773
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    :goto_8
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v9, :cond_15

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v9, :cond_15

    .line 777
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 779
    :cond_15
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 784
    :goto_9
    if-nez v8, :cond_17

    if-eqz v0, :cond_16

    if-nez v5, :cond_17

    :cond_16
    if-eqz v7, :cond_18

    :cond_17
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v9, :cond_18

    .line 786
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 788
    :cond_18
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    :goto_a
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v9, :cond_1a

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v9, :cond_1a

    if-nez v0, :cond_1a

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-nez v9, :cond_1a

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v9, :cond_19

    goto :goto_b

    :cond_19
    move v3, v2

    nop

    .line 793
    .local v3, "anythingVisible":Z
    :cond_1a
    :goto_b
    if-eqz v3, :cond_1b

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    goto :goto_c

    :cond_1b
    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    :goto_c
    invoke-virtual {p0, v2, v2, v9, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setPaddingRelative(IIII)V

    .line 796
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoLteEnable:Z

    if-eqz v10, :cond_1c

    move v10, v2

    goto :goto_d

    :cond_1c
    move v10, v1

    :goto_d
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 797
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoWifiEnable:Z

    if-eqz v10, :cond_1d

    move v1, v2

    nop

    :cond_1d
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 800
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    aget v1, v1, v2

    if-lez v1, :cond_1e

    .line 801
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    aget v2, v9, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 802
    .local v1, "imge":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    .end local v1    # "imge":Landroid/graphics/drawable/Drawable;
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    aget v1, v1, v4

    if-lez v1, :cond_1f

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 807
    .restart local v1    # "imge":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    .end local v1    # "imge":Landroid/graphics/drawable/Drawable;
    :cond_1f
    return-void
.end method

.method private applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "darkIntensity"    # F
    .param p2, "lightIcon"    # Landroid/view/View;
    .param p3, "darkIcon"    # Landroid/view/View;

    .line 884
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 885
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 886
    return-void
.end method

.method private applyIconTint()V
    .locals 5

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 869
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    .line 870
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    .line 869
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    .line 872
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTint(IFLandroid/graphics/Rect;)V

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 877
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 876
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 879
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 878
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 881
    return-void
.end method

.method private currentVpnIconId(Z)I
    .locals 1
    .param p1, "isBranded"    # Z

    .line 893
    if-eqz p1, :cond_0

    const v0, 0x7f080587

    goto :goto_0

    :cond_0
    const v0, 0x7f08082a

    :goto_0
    return v0
.end method

.method private getInOutIndicator(ZZZ)I
    .locals 5
    .param p1, "in"    # Z
    .param p2, "out"    # Z
    .param p3, "stacked"    # Z

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "activity":I
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 549
    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 550
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x4

    .line 552
    :cond_2
    const v1, 0x7f08081a

    const v2, 0x7f08081d

    const v3, 0x7f08081b

    const v4, 0x7f08081c

    packed-switch v0, :pswitch_data_0

    .line 555
    return v4

    .line 569
    :pswitch_0
    return v3

    .line 567
    :pswitch_1
    return v2

    .line 565
    :pswitch_2
    return v1

    .line 563
    :pswitch_3
    return v4

    .line 561
    :pswitch_4
    return v3

    .line 559
    :pswitch_5
    return v2

    .line 557
    :pswitch_6
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSlotProvisionStatus(II)I
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "defaultProvision"    # I

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v0, :cond_0

    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1141
    :cond_0
    move v0, p2

    .line 1144
    .local v0, "status":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v2, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v2

    .line 1151
    .local v2, "ex":Ljava/lang/NullPointerException;
    const/4 v0, -0x1

    .line 1153
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1154
    const-string v1, "SignalClusterView"

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

    .line 1145
    :catch_1
    move-exception v2

    .line 1146
    .local v2, "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    .line 1148
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1149
    const-string v1, "SignalClusterView"

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

    .line 1155
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1156
    :goto_1
    const-string v1, "SignalClusterView"

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

    .line 1157
    return v0
.end method

.method private getStateBySlotId(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "slotId"    # I

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 515
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1500(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 516
    return-object v1

    .line 518
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_0
    goto :goto_0

    .line 519
    :cond_1
    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiActivityId(ZZ)I
    .locals 2
    .param p1, "activityIn"    # Z
    .param p2, "activityOut"    # Z

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "activity":I
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 365
    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 366
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 369
    const v1, 0x7f08080b

    return v1

    .line 375
    :pswitch_0
    const v1, 0x7f08080a

    return v1

    .line 373
    :pswitch_1
    const v1, 0x7f080815

    return v1

    .line 371
    :pswitch_2
    const v1, 0x7f080809

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 484
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 485
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 486
    return v2

    .line 490
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 491
    return v2

    .line 494
    :cond_1
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1400(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 496
    return v2

    .line 494
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "slotIndex"    # I

    .line 576
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;IILandroid/content/Context;)V

    .line 580
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-object v0
.end method

.method private isDataDisable(I)Z
    .locals 3
    .param p1, "slot"    # I

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 1131
    return v1

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    aget v0, v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method private maybeScaleVpnAndNoSimsIcons()V
    .locals 4

    .line 295
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    return-void
.end method

.method private setIconForView(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "iconId"    # I

    .line 818
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 820
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 821
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 823
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 825
    :goto_0
    return-void
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "tint"    # I

    .line 889
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 890
    return-void
.end method

.method private updateActivityEnabled()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityEnabled:Z

    .line 359
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 605
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 606
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 609
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 611
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 612
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    goto :goto_0

    .line 613
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 304
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 309
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_0
    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 315
    .local v0, "endPadding":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 317
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "icon_blacklist"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 830
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    .line 831
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 832
    .local v0, "changed":Z
    :goto_1
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 833
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    .line 834
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 835
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 838
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 328
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 332
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 333
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 263
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 265
    const v0, 0x7f0a0462

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 266
    const v0, 0x7f0a0132

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 267
    const v0, 0x7f0a0131

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 268
    const v0, 0x7f0a0133

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    .line 269
    const v0, 0x7f0a046a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 270
    const v0, 0x7f0a046f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 271
    const v0, 0x7f0a0470

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    .line 275
    const v0, 0x7f0a046d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 277
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 278
    const v0, 0x7f0a0469

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    .line 279
    const v0, 0x7f0a0471

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 280
    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 283
    const v0, 0x7f0a0456

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    .line 284
    const v0, 0x7f0a0461

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->maybeScaleVpnAndNoSimsIcons()V

    .line 287
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 337
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 341
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .line 618
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 640
    .local v3, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1600(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 641
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1600(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1702(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 645
    :cond_3
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1800(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 646
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1800(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1902(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 650
    .end local v3    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_4
    goto :goto_0

    .line 652
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 657
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 658
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .line 346
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 224
    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 231
    .local v0, "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-class v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 232
    .local v1, "hlhController":Lcom/android/systemui/statusbar/phone/HighlightHintController;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v2

    .line 233
    .local v2, "hideByHighlightHint":Z
    :goto_0
    const-string v4, "airplane"

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v5

    .line 234
    .local v4, "blockAirplane":Z
    :goto_2
    const-string v6, "mobile"

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 235
    .local v6, "blockMobile":Z
    const-string/jumbo v7, "wifi"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v7, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v7, v5

    .line 236
    .local v7, "blockWifi":Z
    :goto_4
    const-string v8, "ethernet"

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move v8, v3

    goto :goto_6

    :cond_7
    :goto_5
    move v8, v5

    .line 238
    .local v8, "blockEthernet":Z
    :goto_6
    const-string/jumbo v9, "volte"

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    move v9, v3

    goto :goto_8

    :cond_9
    :goto_7
    move v9, v5

    .line 239
    .local v9, "blockVoLte":Z
    :goto_8
    const-string/jumbo v10, "vowifi"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    if-eqz v2, :cond_a

    goto :goto_9

    :cond_a
    move v10, v3

    goto :goto_a

    :cond_b
    :goto_9
    move v10, v5

    .line 242
    .local v10, "blockVoWifi":Z
    :goto_a
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-ne v4, v11, :cond_c

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-ne v6, v11, :cond_c

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-ne v8, v11, :cond_c

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-ne v7, v11, :cond_c

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoLte:Z

    if-ne v9, v11, :cond_c

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoWifi:Z

    if-eq v10, v11, :cond_f

    .line 247
    :cond_c
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    .line 248
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    .line 249
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    .line 250
    if-nez v7, :cond_e

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mForceBlockWifi:Z

    if-eqz v11, :cond_d

    goto :goto_b

    :cond_d
    goto :goto_c

    :cond_e
    :goto_b
    move v3, v5

    :goto_c
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    .line 252
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoLte:Z

    .line 253
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoWifi:Z

    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 257
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 259
    :cond_f
    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 423
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 424
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    .line 425
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 428
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 589
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 590
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 591
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 594
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 599
    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "simDetected"    # Z

    .line 433
    return-void
.end method

.method public setProvision(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "provision"    # I

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 1116
    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    aput p2, v0, p1

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getStateBySlotId(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 1120
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    sget-boolean v1, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SignalClusterView"

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

    .line 1121
    :cond_1
    if-eqz v0, :cond_2

    .line 1122
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->isDataDisable(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$2902(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 1123
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$602(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 1124
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$2900(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$3002(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 1126
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 1127
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    const-string v1, "setSubs:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    return-void

    .line 444
    :cond_1
    if-eqz p1, :cond_3

    .line 445
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 446
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    sget-boolean v2, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    goto :goto_0

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 454
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 456
    .local v0, "n":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 457
    .local v1, "count":I
    new-array v2, v1, [Z

    .line 458
    .local v2, "occupied":[Z
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 459
    aput-boolean v3, v2, v4

    .line 458
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 462
    .end local v4    # "i":I
    :cond_5
    move v4, v3

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_6

    .line 465
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    .line 466
    .local v5, "slotIndex":I
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-direct {p0, v6, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 467
    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 462
    .end local v5    # "slotIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 469
    .end local v4    # "i":I
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowNoSim:Z

    if-eqz v4, :cond_9

    .line 470
    move v4, v3

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v1, :cond_9

    .line 472
    if-eqz v0, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCTA:Z

    if-eqz v5, :cond_8

    aget-boolean v5, v2, v4

    if-nez v5, :cond_8

    .line 473
    :cond_7
    add-int/lit8 v5, v4, 0x1

    rsub-int/lit8 v5, v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 470
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 478
    .end local v4    # "i":I
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 481
    :cond_a
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z
    .param p8, "secondaryLabel"    # Ljava/lang/String;

    .line 384
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 385
    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 386
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 387
    if-eqz p4, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    .line 388
    if-eqz p5, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->getWifiActivityId(ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 394
    return-void
.end method
