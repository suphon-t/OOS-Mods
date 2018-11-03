.class public Lcom/android/systemui/qs/tiles/DataSwitchTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DataSwitchTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;,
        Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field static final DATA_SWITCH_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final ESPORT_MODE_KEY:Ljava/lang/String;

.field private mCanSwitch:Z

.field protected final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mEsportModeSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

.field private mRegistered:Z

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

.field private mSimCount:I

.field mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVirtualSimExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->DATA_SWITCH_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    .line 44
    iput v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 53
    new-instance v1, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    .line 59
    const-string v0, "esport_mode_enabled"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->ESPORT_MODE_KEY:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$2;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 73
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile$1;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const-string v5, "esport_mode_enabled"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/DataSwitchTile$1;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mEsportModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    return p1
.end method

.method public static synthetic lambda$handleClick$0(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->setDefaultDataSimIndex(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->refreshState()V

    .line 215
    return-void
.end method

.method private setDefaultDataSimIndex(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oemDdsSwitch:phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "oemDdsSwitch"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "setDefaultDataSimId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "clear ext telephony service ref"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateSimCount()V
    .locals 5

    .line 140
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "simState":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSwitchTile:updateSimCount:simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    .line 144
    :try_start_0
    const-string v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "sims":[Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 146
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v2, v1

    const-string v4, "ABSENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v2, v1

    const-string v4, "NOT_READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    goto :goto_1

    .line 149
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    .end local v2    # "sims":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v3, "Error to parse sim state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSwitchTile:updateSimCount:mSimCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 221
    sget-object v0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->DATA_SWITCH_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 297
    const/16 v0, 0x7d2

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mEsportModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    return-void

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 194
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "virtual sim exist. ignore click."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 200
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    if-nez v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "handleClick:no sim card"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v3, 0x7f1104ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    return-void

    .line 204
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    if-ne v0, v1, :cond_4

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "handleClick:only one sim card"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v3, 0x7f1104ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    return-void

    .line 211
    :cond_4
    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$DataSwitchTile$SMUKxUiuh-wmJK6getmuCjTYAmY;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$DataSwitchTile$SMUKxUiuh-wmJK6getmuCjTYAmY;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mEsportModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    .line 116
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->refreshState()V

    goto :goto_0

    .line 118
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 126
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    .line 129
    :cond_2
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 233
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 235
    .local v1, "defaultPhoneId":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default data phone id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-nez v1, :cond_0

    .line 238
    const/4 v2, 0x1

    .line 238
    .local v2, "value":Z
    goto :goto_0

    .line 240
    .end local v2    # "value":Z
    :cond_0
    nop

    .line 240
    .end local v1    # "defaultPhoneId":I
    move v2, v0

    .line 240
    .restart local v2    # "value":Z
    :goto_0
    move v1, v2

    .line 242
    .end local v2    # "value":Z
    .local v1, "value":Z
    goto :goto_1

    .line 243
    .end local v1    # "value":Z
    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 246
    .restart local v1    # "value":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->updateSimCount()V

    .line 248
    iget v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    const v3, 0x7f08057d

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 259
    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 260
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_4

    .line 250
    :pswitch_0
    if-eqz v1, :cond_2

    const v2, 0x7f08057c

    goto :goto_2

    :cond_2
    const v2, 0x7f08057e

    :goto_2
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 251
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 252
    goto :goto_4

    .line 254
    :pswitch_1
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const v3, 0x7f08057f

    :goto_3
    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 255
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 256
    nop

    .line 267
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mEsportModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 268
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v3, "E-Sport, set to unavailable."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_6

    .line 270
    :cond_4
    iget v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    .line 272
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_6

    .line 273
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    if-eqz v2, :cond_6

    .line 274
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "virtual sim exist, set to unavailable."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 277
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    if-nez v2, :cond_7

    .line 278
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "call state isn\'t idle, set to unavailable."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 282
    :cond_7
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 286
    :goto_6
    if-eqz v1, :cond_9

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1100be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_7

    .line 289
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1100bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 292
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1104eb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 293
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 4

    .line 86
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 87
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 94
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
