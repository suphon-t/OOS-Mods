.class public Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field protected final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field private mAllowLockscreenRemoteInput:Z

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mContext:Landroid/content/Context;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field protected mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mIsSecure:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

.field protected mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field protected mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowLockscreenNotifications:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 66
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 67
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 68
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 69
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    .line 173
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUserManager:Landroid/os/UserManager;

    .line 177
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    .line 178
    const-string v1, "statusbar"

    .line 179
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 178
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 182
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mIsSecure:Z

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mIsSecure:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->showForegroundManagedProfileActivityToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method private adminAllowsKeyguardFeature(II)Z
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "feature"    # I

    .line 394
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 395
    return v0

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    .line 398
    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 399
    .local v1, "dpmFlags":I
    and-int v2, v1, p2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 456
    const-string v0, "LockscreenUserManager"

    const-string v2, "mEntryManager was null!"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return v1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setLockscreenAllowRemoteInput(Z)V
    .locals 0
    .param p1, "allowLockscreenRemoteInput"    # Z

    .line 341
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mAllowLockscreenRemoteInput:Z

    .line 342
    return-void
.end method

.method private setShowLockscreenNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 337
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mShowLockscreenNotifications:Z

    .line 338
    return-void
.end method

.method private shouldTemporarilyHideNotifications(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 294
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 295
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    return v0
.end method

.method private showForegroundManagedProfileActivityToast()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const v2, 0x7f1103af

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 266
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 267
    .local v2, "text":Landroid/widget/TextView;
    const v3, 0x7f0805df

    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07030d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 271
    .local v1, "paddingPx":I
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 272
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 468
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 471
    :cond_0
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private userAllowsNotificationsInPublic(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    if-eq p1, v0, :cond_0

    .line 422
    return v1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_notifications"

    .line 426
    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 429
    .local v0, "allowedByUser":Z
    :goto_0
    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->adminAllowsKeyguardFeature(II)Z

    move-result v2

    .line 431
    .local v2, "allowedByDpm":Z
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 432
    .local v1, "allowed":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 433
    return v1

    .line 436
    .end local v0    # "allowedByUser":Z
    .end local v1    # "allowed":Z
    .end local v2    # "allowedByDpm":Z
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 501
    const-string v0, "NotificationLockscreenUserManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    const-string v0, "  mCurrentUserId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 504
    const-string v0, "  mShowLockscreenNotifications="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mShowLockscreenNotifications:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 506
    const-string v0, "  mAllowLockscreenRemoteInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mAllowLockscreenRemoteInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 508
    const-string v0, "  mCurrentProfiles="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 511
    .local v1, "userId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    .end local v1    # "userId":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 513
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mIsSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 518
    return-void
.end method

.method public getCurrentProfiles()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    return v0
.end method

.method public isAnyProfilePublicMode()Z
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 476
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    return v1

    .line 475
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 480
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v0

    .line 285
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 286
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 285
    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 286
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLockscreenPublicMode(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 410
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mIsSecure:Z

    return v0
.end method

.method public needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 8
    .param p1, "ent"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 441
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 443
    .local v0, "userId":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 444
    .local v1, "currentUserWantsRedaction":Z
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 445
    .local v3, "notiUserWantsRedaction":Z
    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v2

    .line 447
    .local v5, "redactedLockscreen":Z
    :goto_1
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 448
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->visibility:I

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v4

    .line 449
    .local v6, "notificationRequestsRedaction":Z
    :goto_2
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v7

    .line 451
    .local v7, "userForcesRedaction":Z
    if-nez v7, :cond_4

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v2, v4

    nop

    :cond_4
    :goto_3
    return v2
.end method

.method public setLockscreenPublicMode(ZI)V
    .locals 1
    .param p1, "publicMode"    # Z
    .param p2, "userId"    # I

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 407
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 11
    .param p1, "presenter"    # Lcom/android/systemui/statusbar/NotificationPresenter;
    .param p2, "entryManager"    # Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 191
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 193
    new-instance v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$3;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$4;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    .line 217
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 216
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_private_notifications"

    .line 222
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 221
    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    .line 228
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 227
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v0, "allUsersFilter":Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 246
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v2, "internalFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.android.systemui.permission.SELF"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updateCurrentProfilesCache()V

    .line 259
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 260
    return-void
.end method

.method public shouldAllowLockscreenRemoteInput()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mAllowLockscreenRemoteInput:Z

    return v0
.end method

.method public shouldHideNotifications(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsNotificationsInPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldTemporarilyHideNotifications(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 316
    const-string v0, "LockscreenUserManager"

    const-string v2, "mEntryManager was null!"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    return v1

    .line 319
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 320
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 319
    :goto_0
    return v1
.end method

.method public shouldShowLockscreenNotifications()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mShowLockscreenNotifications:Z

    return v0
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 326
    const-string v0, "LockscreenUserManager"

    const-string v2, "mEntryManager was null!"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    return v1

    .line 329
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 330
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 332
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    .line 329
    :cond_1
    return v1
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 6

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 349
    .local v0, "show":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    .line 351
    .local v2, "dpmFlags":I
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 354
    .local v4, "allowedByDpm":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->setShowLockscreenNotifications(Z)V

    .line 366
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->setLockscreenAllowRemoteInput(Z)V

    .line 368
    return-void
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    .line 375
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 376
    return v0

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 380
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    .line 381
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    .line 380
    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 383
    .local v1, "allowedByUser":Z
    :goto_0
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->adminAllowsKeyguardFeature(II)Z

    move-result v2

    .line 385
    .local v2, "allowedByDpm":Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 386
    .local v0, "allowed":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 387
    return v0

    .line 390
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByUser":Z
    .end local v2    # "allowedByDpm":Z
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
