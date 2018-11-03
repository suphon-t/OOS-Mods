.class public Lcom/android/systemui/keyguard/WorkLockActivityController;
.super Ljava/lang/Object;
.source "WorkLockActivityController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIam:Landroid/app/IActivityManager;

.field private final mLockListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/android/systemui/keyguard/WorkLockActivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/WorkLockActivityController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/app/IActivityManager;)V

    .line 44
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/app/IActivityManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .param p3, "iAm"    # Landroid/app/IActivityManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivityController$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mLockListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIam:Landroid/app/IActivityManager;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mLockListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/WorkLockActivityController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/WorkLockActivityController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/WorkLockActivityController;->startWorkChallengeInTask(II)V

    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)I
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    move-object/from16 v1, p0

    .line 92
    const/16 v2, -0x60

    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIam:Landroid/app/IActivityManager;

    iget-object v0, v1, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v0, v1, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v15, p1

    :try_start_1
    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    .line 92
    move-object v6, v15

    move-object/from16 v13, p2

    move/from16 v14, p3

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    goto :goto_1

    .line 106
    :catch_2
    move-exception v0

    move-object/from16 v15, p1

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v2

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object/from16 v15, p1

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    return v2
.end method

.method private startWorkChallengeInTask(II)V
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/systemui/keyguard/WorkLockActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get description for task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.USER_ID"

    .line 63
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.keyguard.extra.TASK_DESCRIPTION"

    .line 64
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x4020000

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 69
    .local v2, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v2, p1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 70
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 72
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {p0, v1, v3, v4}, Lcom/android/systemui/keyguard/WorkLockActivityController;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)I

    move-result v3

    .line 73
    .local v3, "result":I
    invoke-static {v3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v4, p1}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    goto :goto_1

    .line 80
    :catch_1
    move-exception v4

    .line 81
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/systemui/keyguard/WorkLockActivityController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get description for task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
