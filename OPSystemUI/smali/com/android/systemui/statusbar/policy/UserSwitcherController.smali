.class public Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAddUserDialog:Landroid/app/Dialog;

.field private mAddUsersWhenLocked:Z

.field private final mCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mExitGuestDialog:Landroid/app/Dialog;

.field private mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

.field private final mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

.field protected final mHandler:Landroid/os/Handler;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLastNonGuestUser:I

.field private mPauseRefreshUsers:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeUserOnGuestLogout:Z

.field private mSecondaryUser:I

.field private mSecondaryUserServiceIntent:Landroid/content/Intent;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSimpleUserSwitcher:Z

.field private final mUnpauseRefreshUsers:Ljava/lang/Runnable;

.field protected final mUserManager:Landroid/os/UserManager;

.field private mUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardMonitor"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "activityStarter"    # Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    .line 96
    new-instance v3, Lcom/android/systemui/GuestResumeSessionReceiver;

    invoke-direct {v3}, Lcom/android/systemui/GuestResumeSessionReceiver;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    .line 105
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    .line 106
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mResumeUserOnGuestLogout:Z

    .line 110
    const/16 v5, -0x2710

    iput v5, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    .line 112
    new-instance v6, Landroid/util/SparseBooleanArray;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    .line 479
    new-instance v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 491
    new-instance v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 560
    new-instance v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    .line 569
    new-instance v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/os/Handler;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 800
    new-instance v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 841
    new-instance v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$8;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$8;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 116
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 117
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

    invoke-virtual {v6, v1}, Lcom/android/systemui/GuestResumeSessionReceiver;->register(Landroid/content/Context;)V

    .line 118
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 119
    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    .line 120
    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 121
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 122
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v9, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v9, "android.intent.action.USER_STOPPED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v9, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v8

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 132
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/systemui/SystemUISecondaryUserService;

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUserServiceIntent:Landroid/content/Intent;

    .line 134
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .local v14, "filter":Landroid/content/IntentFilter;
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v15, "com.android.systemui.permission.SELF"

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 138
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lockscreenSimpleUserSwitcher"

    .line 139
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 138
    invoke-virtual {v8, v9, v4, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "add_users_when_locked"

    .line 142
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 141
    invoke-virtual {v8, v9, v4, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "allow_user_switching_when_system_user_locked"

    .line 145
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 144
    invoke-virtual {v8, v9, v4, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 151
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->listenForCallState()V

    .line 154
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->notifyAdapters()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Landroid/app/Dialog;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUserServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const-string v1, "no_add_user"

    .line 718
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 717
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 719
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const-string v2, "no_add_user"

    .line 720
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 719
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    .line 722
    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0

    .line 724
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    .line 725
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 727
    :goto_0
    return-void
.end method

.method private listenForCallState()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 477
    return-void
.end method

.method private notifyAdapters()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 300
    .local v1, "adapter":Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 298
    .end local v1    # "adapter":Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 306
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private pauseRefreshUsers()V
    .locals 4

    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    .line 295
    :cond_0
    return-void
.end method

.method private refreshUsers(I)V
    .locals 9
    .param p1, "forcePictureLoadForId"    # I

    .line 167
    const/4 v0, 0x1

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 171
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    if-eqz v1, :cond_1

    .line 172
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 176
    .local v1, "forceAllUsers":Z
    new-instance v2, Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 177
    .local v2, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 178
    .local v3, "N":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 179
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 180
    .local v6, "r":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    iget-object v8, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 181
    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 182
    goto :goto_1

    .line 184
    :cond_2
    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    iget-object v8, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    .end local v6    # "r":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 186
    .end local v5    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 188
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z

    .line 189
    .local v5, "addUsersWhenLocked":Z
    new-instance v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;

    invoke-direct {v6, p0, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V

    new-array v0, v0, [Landroid/util/SparseArray;

    aput-object v2, v0, v4

    .line 287
    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 288
    return-void
.end method

.method private showExitGuestDialog(I)V
    .locals 3
    .param p1, "id"    # I

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "newId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mResumeUserOnGuestLogout:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 446
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .line 450
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(II)V

    .line 451
    return-void
.end method


# virtual methods
.method public addAdapter(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;",
            ">;)V"
        }
    .end annotation

    .line 603
    .local p1, "adapter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    return-void
.end method

.method protected exitGuest(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "targetId"    # I

    .line 470
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 472
    return-void
.end method

.method public getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 592
    .local v0, "item":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_2

    const v1, 0x7f110296

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 594
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v1

    .line 592
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSimpleUserSwitcher()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 598
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    .line 599
    return-void
.end method

.method public showAddUserDialog()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 465
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 467
    return-void
.end method

.method protected showExitGuestDialog(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "targetId"    # I

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 457
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 459
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 731
    return-void
.end method

.method public switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 355
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 372
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->start()V

    .line 373
    return-void

    .line 375
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showAddUserDialog()V

    .line 377
    return-void

    .line 379
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 382
    .local v0, "id":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 383
    .local v1, "currUserId":I
    if-ne v1, v0, :cond_3

    .line 384
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v2, :cond_2

    .line 385
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(I)V

    .line 387
    :cond_2
    return-void

    .line 390
    :cond_3
    invoke-static {}, Landroid/os/UserManager;->isGuestUserEphemeral()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 392
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 393
    .local v2, "currUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 394
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(II)V

    .line 395
    return-void

    .line 399
    .end local v2    # "currUserInfo":Landroid/content/pm/UserInfo;
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    .line 400
    return-void
.end method

.method protected switchToUserId(I)V
    .locals 3
    .param p1, "id"    # I

    .line 429
    const-string v0, "UserSwitcherController"

    const-string v1, "switchToUserId START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->pauseRefreshUsers()V

    .line 433
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UserSwitcherController"

    const-string v2, "Couldn\'t switch user."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v0, "UserSwitcherController"

    const-string v1, "switchToUserId END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method public useFullscreenUserSwitcher()Z
    .locals 4

    .line 317
    const/4 v0, -0x1

    .line 318
    .local v0, "DEFAULT":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_fullscreen_user_switcher"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 321
    .local v1, "overrideUseFullscreenUserSwitcher":I
    if-eq v1, v3, :cond_1

    .line 322
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    return v2
.end method
