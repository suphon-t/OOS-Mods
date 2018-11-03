.class public Lcom/android/systemui/keyboard/KeyboardUI;
.super Lcom/android/systemui/SystemUI;
.source "KeyboardUI.java"

# interfaces
.implements Landroid/hardware/input/InputManager$OnTabletModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;,
        Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;,
        Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;,
        Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;,
        Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;,
        Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;,
        Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;
    }
.end annotation


# instance fields
.field private mBootCompleted:Z

.field private mBootCompletedTime:J

.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field protected volatile mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

.field private mEnabled:Z

.field private volatile mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

.field private mInTabletMode:I

.field private mKeyboardName:Ljava/lang/String;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mScanAttempt:I

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mState:I

.field private volatile mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyboard/KeyboardUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->bleAbortScanInternal(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyboard/KeyboardUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->onBluetoothStateChangedInternal(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI;->onDeviceBondStateChangedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->onDeviceAddedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->onBleScanFailedInternal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyboard/KeyboardUI;->onShowErrorInternal(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/BluetoothDialog;)Lcom/android/systemui/keyboard/BluetoothDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->init()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/keyboard/KeyboardUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    return p1
.end method

.method private bleAbortScanInternal(I)V
    .locals 2
    .param p1, "scanAttempt"    # I

    .line 355
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    if-ne p1, v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    .line 362
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 364
    :cond_0
    return-void
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "d"    # Landroid/bluetooth/BluetoothDevice;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 320
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 324
    :cond_0
    return-object v0
.end method

.method private getDiscoveredKeyboard()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 309
    .local v0, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 310
    .local v2, "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    return-object v2

    .line 313
    .end local v2    # "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_0
    goto :goto_0

    .line 314
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPairedKeyboard()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 299
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 300
    .local v2, "d":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-direct {p0, v2}, Lcom/android/systemui/keyboard/KeyboardUI;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    return-object v1

    .line 303
    .end local v2    # "d":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    goto :goto_0

    .line 304
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private init()V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    .line 165
    .local v0, "context":Landroid/content/Context;
    nop

    .line 166
    const v1, 0x1040171

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 175
    .local v2, "bluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_1

    .line 179
    return-void

    .line 181
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    .line 182
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 183
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 184
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 185
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 186
    new-instance v3, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/Utils;->setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V

    .line 188
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 189
    .local v1, "im":Landroid/hardware/input/InputManager;
    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    invoke-virtual {v1, p0, v3}, Landroid/hardware/input/InputManager;->registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 190
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->isInTabletMode()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 193
    new-instance v3, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    .line 194
    return-void
.end method

.method private isUserSetupComplete()Z
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private onBleScanFailedInternal()V
    .locals 2

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 398
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 399
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 401
    :cond_0
    return-void
.end method

.method private onBluetoothStateChangedInternal(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .line 377
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 380
    :cond_0
    return-void
.end method

.method private onDeviceAddedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "d"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 368
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    .line 370
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 371
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 373
    :cond_0
    return-void
.end method

.method private onDeviceBondStateChangedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "d"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 384
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 388
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto :goto_0

    .line 389
    :cond_0
    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 390
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 393
    :cond_1
    :goto_0
    return-void
.end method

.method private onShowErrorInternal(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "messageResId"    # I

    .line 407
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    .line 408
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 412
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private processKeyboardState()V
    .locals 8

    .line 198
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->removeMessages(I)V

    .line 200
    iget-boolean v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    if-nez v0, :cond_0

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 202
    return-void

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompleted:Z

    if-nez v0, :cond_1

    .line 206
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 207
    return-void

    .line 210
    :cond_1
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    const/16 v2, 0x9

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v0, :cond_4

    .line 211
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v0, v3, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    goto :goto_0

    .line 213
    :cond_2
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v0, v4, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->sendEmptyMessage(I)Z

    .line 216
    :cond_3
    :goto_0
    iput v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 217
    return-void

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 221
    .local v0, "btState":I
    const/16 v5, 0xc

    const/16 v6, 0xb

    if-eq v0, v6, :cond_5

    if-ne v0, v5, :cond_6

    :cond_5
    iget v7, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v7, v4, :cond_6

    .line 225
    iget-object v7, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    invoke-virtual {v7, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->sendEmptyMessage(I)Z

    .line 228
    :cond_6
    if-ne v0, v6, :cond_7

    .line 229
    iput v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 231
    return-void

    .line 234
    :cond_7
    if-eq v0, v5, :cond_8

    .line 235
    iput v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->showBluetoothDialog()V

    .line 237
    return-void

    .line 240
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->getPairedKeyboard()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 241
    .local v2, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-eq v5, v1, :cond_9

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v1, v4, :cond_b

    .line 242
    :cond_9
    if-eqz v2, :cond_a

    .line 249
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 251
    return-void

    .line 253
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 256
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->getDiscoveredKeyboard()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 257
    .end local v2    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .local v1, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_c

    .line 258
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 259
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    goto :goto_1

    .line 261
    :cond_c
    iput v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->startScanning()V

    .line 264
    :goto_1
    return-void
.end method

.method private showBluetoothDialog()V
    .locals 6

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 279
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 280
    .local v2, "earliestDialogTime":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 285
    .end local v0    # "now":J
    .end local v2    # "earliestDialogTime":J
    :goto_0
    goto :goto_1

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 289
    :goto_1
    return-void
.end method

.method private startScanning()V
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 329
    .local v0, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    .line 330
    .local v1, "filter":Landroid/bluetooth/le/ScanFilter;
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 331
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    .line 333
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    .line 334
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    .line 336
    .local v2, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v4, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    iput-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 337
    new-array v4, v3, [Landroid/bluetooth/le/ScanFilter;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v4, v2, v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 339
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    iget v6, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    const/16 v3, 0xa

    invoke-virtual {v4, v3, v6, v5}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 340
    .local v3, "abortMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 627
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 647
    :pswitch_0
    const-string v0, "STATE_DEVICE_NOT_FOUND"

    return-object v0

    .line 645
    :pswitch_1
    const-string v0, "STATE_USER_CANCELLED"

    return-object v0

    .line 643
    :pswitch_2
    const-string v0, "STATE_PAIRING_FAILED"

    return-object v0

    .line 641
    :pswitch_3
    const-string v0, "STATE_PAIRED"

    return-object v0

    .line 639
    :pswitch_4
    const-string v0, "STATE_PAIRING"

    return-object v0

    .line 637
    :pswitch_5
    const-string v0, "STATE_WAITING_FOR_BLUETOOTH"

    return-object v0

    .line 635
    :pswitch_6
    const-string v0, "STATE_WAITING_FOR_DEVICE_DISCOVERY"

    return-object v0

    .line 633
    :pswitch_7
    const-string v0, "STATE_WAITING_FOR_TABLET_MODE_EXIT"

    return-object v0

    .line 631
    :pswitch_8
    const-string v0, "STATE_WAITING_FOR_BOOT_COMPLETED"

    return-object v0

    .line 629
    :cond_0
    const-string v0, "STATE_NOT_ENABLED"

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

.method private stopScanning()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 346
    .local v0, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 349
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 351
    .end local v0    # "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 134
    const-string v0, "KeyboardUI:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBootCompletedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mKeyboardName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInTabletMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    invoke-static {v1}, Lcom/android/systemui/keyboard/KeyboardUI;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected onBootCompleted()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->sendEmptyMessage(I)Z

    .line 146
    return-void
.end method

.method public onBootCompletedInternal()V
    .locals 3

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompleted:Z

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    .line 270
    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v1, v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 273
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 130
    return-void
.end method

.method public onTabletModeChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 154
    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    if-nez p3, :cond_3

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    if-eqz v1, :cond_3

    .line 156
    :cond_1
    if-eqz p3, :cond_2

    .line 157
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 160
    :cond_3
    return-void
.end method

.method public start()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Keyboard"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v1, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->sendEmptyMessage(I)Z

    .line 126
    return-void
.end method
