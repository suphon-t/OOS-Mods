.class public Lcom/android/systemui/volume/OutputChooserDialog;
.super Landroid/app/Dialog;
.source "OutputChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/systemui/volume/OutputChooserLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;,
        Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;,
        Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# instance fields
.field protected isAttached:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBgDrawable:I

.field private mBluetoothCallbackHandler:Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

.field private final mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

.field protected final mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mEmytyIconColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeadSetString:Ljava/lang/String;

.field private mIconColor:I

.field private mIsInCall:Z

.field private mLastUpdateTime:J

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mPrimaryTextColor:I

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

.field private final mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

.field private final mRouterCallback:Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;

.field private mSecondaryTextColor:I

.field private mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerString:Ljava/lang/String;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mThemeColorMode:I

.field private mTvIcon:Landroid/graphics/drawable/Drawable;

.field private mView:Lcom/android/systemui/volume/OutputChooserLayout;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-class v0, Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    .line 782
    new-instance v0, Lcom/android/systemui/volume/OutputChooserDialog$5;

    invoke-direct {v0}, Lcom/android/systemui/volume/OutputChooserDialog$5;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 790
    new-instance v0, Lcom/android/systemui/volume/OutputChooserDialog$6;

    invoke-direct {v0}, Lcom/android/systemui/volume/OutputChooserDialog$6;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "router"    # Lcom/android/systemui/volume/MediaRouterWrapper;

    .line 143
    const v0, 0x7f120546

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    .line 134
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 136
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 628
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$1;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 645
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$2;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 675
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$3;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    .line 695
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$4;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 837
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mThemeColorMode:I

    .line 838
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPrimaryTextColor:I

    .line 839
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    .line 840
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIconColor:I

    .line 841
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mEmytyIconColor:I

    .line 842
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBgDrawable:I

    .line 935
    new-instance v2, Lcom/android/systemui/volume/OutputChooserDialog$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/OutputChooserDialog$7;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    .line 145
    const-class v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 146
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 148
    const-string v2, "telecom"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 149
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIsInCall:Z

    .line 151
    iput-object p2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

    .line 152
    new-instance v2, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/systemui/volume/OutputChooserDialog$1;)V

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouterCallback:Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;

    .line 153
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    const-string v2, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 154
    invoke-virtual {v0, v2}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    const-class v2, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 168
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 169
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    const v1, 0x10002

    invoke-virtual {v2, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 172
    const v1, 0x10c0120

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 178
    const/16 v1, 0x7e4

    invoke-virtual {v2, v1}, Landroid/view/Window;->setType(I)V

    .line 181
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 182
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 183
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 184
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/OutputChooserDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Z

    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OutputChooserDialog;->updateItems(Z)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/volume/OutputChooserDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIsInCall:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->updateTile()V

    return-void
.end method

.method static synthetic access$800()Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/OutputChooserDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addBluetoothDevices(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/OutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/volume/OutputChooserLayout$Item;>;"
    move-object/from16 v0, p0

    .line 431
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 432
    iget-object v2, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDevices()Ljava/util/Collection;

    move-result-object v2

    .line 433
    .local v2, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    if-eqz v2, :cond_7

    .line 434
    const/4 v3, 0x0

    .line 435
    .local v3, "connectedDevices":I
    const/4 v4, 0x0

    .line 436
    .local v4, "count":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 437
    .local v6, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v7, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v7, v6}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBondState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .end local v6    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    goto :goto_0

    .line 438
    .restart local v6    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_0
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    .line 439
    .local v7, "majorClass":I
    const/16 v9, 0x400

    if-eq v7, v9, :cond_1

    const/16 v9, 0x1f00

    if-eq v7, v9, :cond_1

    .line 441
    goto :goto_0

    .line 443
    :cond_1
    new-instance v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-direct {v9}, Lcom/android/systemui/volume/OutputChooserLayout$Item;-><init>()V

    .line 444
    .local v9, "item":Lcom/android/systemui/volume/OutputChooserLayout$Item;
    const v10, 0x7f08032e

    iput v10, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 445
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    .line 446
    iput-object v6, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    .line 447
    sget v10, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_BT:I

    iput v10, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    .line 448
    iget-object v10, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v10, v6}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getMaxConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v10

    .line 449
    .local v10, "state":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v10, v11, :cond_4

    .line 450
    const v13, 0x7f08032b

    iput v13, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 451
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v13

    .line 452
    .local v13, "batteryLevel":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 453
    nop

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v14

    .line 455
    .local v14, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/Drawable;Ljava/lang/String;>;"
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/drawable/Drawable;

    iput-object v15, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 456
    iget-object v15, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f1104ce

    new-array v11, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 458
    invoke-static {v13}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v11, v16

    .line 456
    invoke-virtual {v15, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    .line 459
    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/Drawable;Ljava/lang/String;>;"
    goto :goto_1

    .line 460
    :cond_2
    iget-object v8, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f1104cd

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    .line 462
    :goto_1
    iput-boolean v12, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->canDisconnect:Z

    .line 463
    invoke-interface {v1, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 464
    iget-object v8, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v8, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-ne v8, v6, :cond_3

    .line 467
    sget-object v8, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The active device:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 469
    .local v8, "msg":Landroid/os/Message;
    const/4 v11, 0x2

    iput v11, v8, Landroid/os/Message;->what:I

    .line 470
    iget-object v11, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v11, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    iget-object v11, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    .end local v8    # "msg":Landroid/os/Message;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 474
    .end local v13    # "batteryLevel":I
    goto :goto_2

    :cond_4
    if-ne v10, v12, :cond_5

    .line 475
    const v8, 0x7f08032c

    iput v8, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 476
    iget-object v8, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f1104cf

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    .line 477
    invoke-interface {v1, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 479
    :cond_5
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0xa

    if-ne v4, v8, :cond_6

    .line 483
    goto :goto_3

    .line 485
    .end local v6    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v7    # "majorClass":I
    .end local v9    # "item":Lcom/android/systemui/volume/OutputChooserLayout$Item;
    .end local v10    # "state":I
    :cond_6
    goto/16 :goto_0

    .line 487
    .end local v3    # "connectedDevices":I
    .end local v4    # "count":I
    :cond_7
    :goto_3
    return-void
.end method

.method private addPhoneDevices(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/OutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    .line 495
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/volume/OutputChooserLayout$Item;>;"
    new-instance v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-direct {v0}, Lcom/android/systemui/volume/OutputChooserLayout$Item;-><init>()V

    .line 497
    .local v0, "item":Lcom/android/systemui/volume/OutputChooserLayout$Item;
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    .line 499
    const v1, 0x7f08031e

    iput v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 500
    sget v1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_HEADSET:I

    iput v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    goto :goto_0

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    .line 503
    const v1, 0x7f08031f

    iput v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 504
    sget v1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_PHONE:I

    iput v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    .line 506
    :goto_0
    iget v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    .line 507
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->canDisconnect:Z

    .line 508
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method private getAnimTranslation()F
    .locals 2

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 326
    .local v0, "translation":F
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    neg-float v1, v0

    :goto_0
    return v1
.end method

.method private getDefaultIndext()I
    .locals 1

    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method private getDisabledServicesMessage(ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "wifiOff"    # Z
    .param p2, "btOff"    # Z

    .line 423
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 424
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f11045c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 425
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f11045d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f11045b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 423
    const v2, 0x7f11045a

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 779
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method private isLandscape()Z
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$dismiss$3(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0

    .line 318
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onCreate$1(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 1

    .line 241
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->updateItems(Z)V

    return-void
.end method

.method public static synthetic lambda$show$2(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method

.method private setSelecter(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/OutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    .line 513
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/volume/OutputChooserLayout$Item;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getDefaultIndext()I

    move-result v0

    .line 515
    .local v0, "selectedDeviceIndex":I
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 516
    .local v1, "activeDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, -0x1

    .line 517
    .local v2, "activeDeviceIndex":I
    const/4 v3, -0x1

    .line 518
    .local v3, "lastSelectedDeviceIndex":I
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 519
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    iget-object v6, v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v6, :cond_1

    .line 520
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    iget-object v6, v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 521
    .local v6, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 523
    move v2, v4

    .line 525
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 526
    move v3, v4

    .line 518
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 531
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 532
    move v0, v2

    goto :goto_1

    .line 534
    :cond_3
    if-eq v3, v4, :cond_4

    .line 536
    move v0, v3

    .line 540
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 541
    sget-object v4, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activeDevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mPreSelectDevice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " selectedDeviceIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/volume/OutputChooserLayout$Item;->selected:Z

    .line 545
    .end local v0    # "selectedDeviceIndex":I
    .end local v1    # "activeDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "activeDeviceIndex":I
    .end local v3    # "lastSelectedDeviceIndex":I
    :cond_5
    return-void
.end method

.method private updateItems(Z)V
    .locals 6
    .param p1, "timeout"    # Z

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastUpdateTime:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 383
    return-void

    .line 385
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastUpdateTime:J

    .line 386
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    if-nez v0, :cond_1

    return-void

    .line 387
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/volume/OutputChooserLayout$Item;>;"
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 390
    .local v2, "wifiOff":Z
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 392
    .local v1, "btOff":Z
    if-nez v1, :cond_2

    .line 394
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->addBluetoothDevices(Ljava/util/List;)V

    .line 403
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->addPhoneDevices(Ljava/util/List;)V

    .line 405
    sget-object v3, Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;->sInstance:Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 407
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setSelecter(Ljava/util/List;)V

    .line 409
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    .line 410
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f110459

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "emptyMessage":Ljava/lang/String;
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    .line 414
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->getDisabledServicesMessage(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 416
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v4, v3}, Lcom/android/systemui/volume/OutputChooserLayout;->setEmptyState(Ljava/lang/String;)V

    .line 419
    .end local v3    # "emptyMessage":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/OutputChooserLayout;->setItems([Lcom/android/systemui/volume/OutputChooserLayout$Item;)V

    .line 420
    return-void
.end method

.method private updateTile()V
    .locals 2

    .line 286
    iget-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIsInCall:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const v1, 0x7f110457

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setTitle(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const v1, 0x7f11045e

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setTitle(I)V

    .line 291
    :goto_0
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 0

    .line 245
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 311
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x50f

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setTranslationX(F)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setAlpha(F)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 317
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$dfWCftBgKfRBdEiky5EXbnZ4_2E;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$dfWCftBgKfRBdEiky5EXbnZ4_2E;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 319
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 321
    return-void
.end method

.method protected findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "streamType"    # I

    .line 807
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 808
    return-object v0

    .line 810
    :cond_0
    const/16 v2, 0x380

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/volume/OutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 812
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x70

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/volume/OutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 813
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 814
    :cond_2
    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 818
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 819
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v1

    .line 820
    .local v1, "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 821
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 824
    return-object v3

    .line 826
    .end local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    goto :goto_0

    .line 828
    .end local v1    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    return-object v0
.end method

.method public getIconColor()I
    .locals 1

    .line 883
    iget v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIconColor:I

    return v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .line 877
    iget v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPrimaryTextColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .line 880
    iget v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    return v0
.end method

.method protected isStreamFromOutputDevice(II)Z
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 832
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 255
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIsInCall:Z

    .line 261
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addCallback(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothCallbackHandler:Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->isAttached:Z

    .line 265
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 192
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 193
    const v0, 0x7f0d0151

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setContentView(I)V

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$UeKcIzGrlInzVatqLUgMgAZVPbU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$UeKcIzGrlInzVatqLUgMgAZVPbU;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 197
    const v1, 0x7f0a02de

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/OutputChooserLayout;

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    .line 198
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/volume/OutputChooserLayout;->setCallback(Lcom/android/systemui/volume/OutputChooserLayout$Callback;)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->updateTile()V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0803d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mTvIcon:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080387

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080388

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1104e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1104eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 213
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 214
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$-t91qf-3-1A4JOdSt-OmJvxR1U8;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$-t91qf-3-1A4JOdSt-OmJvxR1U8;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 218
    .local v2, "localBtManagerFutureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/android/settingslib/bluetooth/LocalBluetoothManager;>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 219
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    const-string v5, "Error getting LocalBluetoothManager."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_0

    .line 224
    sget-object v3, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    const-string v4, "Bluetooth is not supported on this device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 228
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 229
    return-void

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 235
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    xor-int/2addr v3, v0

    .line 236
    .local v3, "wifiOff":Z
    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v4

    xor-int/2addr v0, v4

    .line 237
    .local v0, "btOff":Z
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 238
    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->getDisabledServicesMessage(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/OutputChooserLayout;->setEmptyState(Ljava/lang/String;)V

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    new-instance v5, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$oZBPIb0B7f7Rep6hYPmtCE6QG_w;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$oZBPIb0B7f7Rep6hYPmtCE6QG_w;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/volume/OutputChooserLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    new-instance v4, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/systemui/volume/OutputChooserDialog$1;)V

    iput-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothCallbackHandler:Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

    .line 243
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->isAttached:Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouterCallback:Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/MediaRouterWrapper;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeCallback(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothCallbackHandler:Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 275
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 276
    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/volume/OutputChooserLayout$Item;)V
    .locals 4
    .param p1, "item"    # Lcom/android/systemui/volume/OutputChooserLayout$Item;

    .line 331
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDetailItemClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 334
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 335
    iget v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    sget v2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_BT:I

    const/16 v3, 0x510

    if-ne v1, v2, :cond_2

    .line 336
    iget-object v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 337
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getMaxConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_1

    .line 338
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 340
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 341
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 344
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 347
    .end local v0    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :goto_0
    goto :goto_1

    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    sget v2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_MEDIA_ROUTER:I

    if-ne v1, v2, :cond_4

    .line 348
    iget-object v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 349
    .local v0, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 352
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    .line 354
    .end local v0    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_3
    goto :goto_1

    .line 355
    :cond_4
    iget v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    sget v2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_PHONE:I

    if-eq v1, v2, :cond_5

    iget v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    sget v2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_HEADSET:I

    if-ne v1, v2, :cond_6

    .line 356
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 358
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 360
    :cond_6
    :goto_1
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailItemClick mPreSelectDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPaddingActiveDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 332
    :cond_7
    :goto_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->cleanUp()V

    .line 282
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 250
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 251
    return-void
.end method

.method public setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 751
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v0, :cond_0

    .line 752
    return-void

    .line 756
    :cond_0
    if-eqz p1, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    goto :goto_0

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 762
    .local v0, "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v1

    .line 764
    .local v1, "headsetProfile":Lcom/android/settingslib/bluetooth/HeadsetProfile;
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v2

    .line 765
    .local v2, "hearingAidProfile":Lcom/android/settingslib/bluetooth/HearingAidProfile;
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 766
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 768
    :cond_2
    if-eqz v1, :cond_3

    .line 769
    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 771
    :cond_3
    if-eqz v2, :cond_4

    .line 772
    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 775
    .end local v0    # "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    .end local v1    # "headsetProfile":Lcom/android/settingslib/bluetooth/HeadsetProfile;
    .end local v2    # "hearingAidProfile":Lcom/android/settingslib/bluetooth/HearingAidProfile;
    :cond_4
    :goto_0
    return-void
.end method

.method public setTheme(I)V
    .locals 4
    .param p1, "theme"    # I

    .line 844
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 845
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 861
    const v1, 0x7f060317

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIconColor:I

    .line 862
    const v1, 0x7f06031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mEmytyIconColor:I

    .line 864
    const v1, 0x7f06032c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPrimaryTextColor:I

    .line 865
    const v1, 0x7f06032f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    .line 866
    const v1, 0x7f080855

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBgDrawable:I

    goto :goto_0

    .line 849
    :cond_0
    const v1, 0x7f060315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIconColor:I

    .line 850
    const v1, 0x7f06031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mEmytyIconColor:I

    .line 852
    const v1, 0x7f06032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPrimaryTextColor:I

    .line 853
    const v1, 0x7f06032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    .line 854
    const v1, 0x7f080854

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBgDrawable:I

    .line 855
    nop

    .line 869
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBgDrawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 870
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    iget v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setTitleColor(I)V

    .line 871
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    iget v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mEmytyIconColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setEmptyIconColor(I)V

    .line 872
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    iget v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setEmptyTextColor(I)V

    .line 873
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->updateItems(Z)V

    .line 874
    return-void
.end method

.method public show()V
    .locals 3

    .line 296
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 297
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x50f

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setTranslationX(F)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setAlpha(F)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 301
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 303
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$E4JCaBF8rIUbI1y2uDB4bB6Bj_0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$E4JCaBF8rIUbI1y2uDB4bB6Bj_0;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 307
    return-void
.end method
