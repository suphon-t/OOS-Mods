.class public Lcom/android/systemui/qs/external/TileServiceManager;
.super Ljava/lang/Object;
.source "TileServiceManager.java"


# static fields
.field static final PREFS_FILE:Ljava/lang/String; = "CustomTileModes"


# instance fields
.field private mBindAllowed:Z

.field private mBindRequested:Z

.field private mBound:Z

.field private final mHandler:Landroid/os/Handler;

.field private mJustBound:Z

.field final mJustBoundOver:Ljava/lang/Runnable;

.field private mLastUpdate:J

.field private mPendingBind:Z

.field private mPriority:I

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private mShowingDialog:Z

.field private final mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

.field private final mUnbind:Ljava/lang/Runnable;

.field private final mUninstallReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)V
    .locals 8
    .param p1, "tileServices"    # Lcom/android/systemui/qs/external/TileServices;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "tile"    # Landroid/service/quicksettings/Tile;

    .line 74
    new-instance v7, Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 75
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v7

    move-object v1, p2

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 74
    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/qs/external/TileLifecycleManager;)V
    .locals 9
    .param p1, "tileServices"    # Lcom/android/systemui/qs/external/TileServices;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tileLifecycleManager"    # Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 221
    new-instance v1, Lcom/android/systemui/qs/external/TileServiceManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileServiceManager$1;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    .line 230
    new-instance v1, Lcom/android/systemui/qs/external/TileServiceManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileServiceManager$2;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    .line 239
    new-instance v1, Lcom/android/systemui/qs/external/TileServiceManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileServiceManager$3;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 86
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 90
    .local v8, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/os/UserHandle;

    .line 91
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v7, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    .line 90
    const/4 v6, 0x0

    move-object v2, v8

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p3}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 93
    .local v2, "component":Landroid/content/ComponentName;
    invoke-static {v8, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isTileAdded(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-static {v8, v2, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    .line 98
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/external/TileServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/external/TileServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/external/TileServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/external/TileServiceManager;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileServices;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileLifecycleManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    return-object v0
.end method

.method private bindService()V
    .locals 5

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "TileServiceManager"

    const-string v1, "Service already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 175
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 177
    return-void
.end method

.method private unbindService()V
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez v0, :cond_0

    .line 181
    const-string v0, "TileServiceManager"

    const-string v1, "Service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 185
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 187
    return-void
.end method


# virtual methods
.method public calculateBindPriority(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->hasPendingClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    if-eqz v0, :cond_1

    .line 196
    const v0, 0x7ffffffe

    iput v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 197
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    if-eqz v0, :cond_2

    .line 200
    const v0, 0x7ffffffd

    iput v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 201
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez v0, :cond_3

    .line 203
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 206
    :cond_3
    iget-wide v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    sub-long v0, p1, v0

    .line 209
    .local v0, "timeSinceUpdate":J
    const-wide/32 v2, 0x7ffffffc

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 210
    const v2, 0x7ffffffc

    iput v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 212
    :cond_4
    long-to-int v2, v0

    iput v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    .line 215
    .end local v0    # "timeSinceUpdate":J
    :goto_0
    return-void
.end method

.method public clearPendingBind()V
    .locals 1

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 165
    return-void
.end method

.method public getBindPriority()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    return v0
.end method

.method public getTileService()Landroid/service/quicksettings/IQSTileService;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public handleDestroy()V
    .locals 2

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDestroy()V

    .line 147
    return-void
.end method

.method public hasPendingBind()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    return v0
.end method

.method public isActiveTile()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isActiveTile()Z

    move-result v0

    return v0
.end method

.method public setBindAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 151
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    goto :goto_0

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez v0, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    .line 157
    :cond_2
    :goto_0
    return-void
.end method

.method public setBindRequested(Z)V
    .locals 4
    .param p1, "bindRequested"    # Z

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 122
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    .line 129
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_2
    return-void
.end method

.method public setLastUpdate(J)V
    .locals 1
    .param p1, "lastUpdate"    # J

    .line 135
    iput-wide p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    .line 141
    return-void
.end method

.method public setShowingDialog(Z)V
    .locals 0
    .param p1, "dialog"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    .line 110
    return-void
.end method

.method public setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V
    .locals 1
    .param p1, "changeListener"    # Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V

    .line 102
    return-void
.end method
