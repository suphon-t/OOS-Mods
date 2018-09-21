.class public Lcom/android/systemui/statusbar/NotificationLogger;
.super Ljava/lang/Object;
.source "NotificationLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;
    }
.end annotation


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field protected mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field protected mHandler:Landroid/os/Handler;

.field private mLastVisibilityReportUptimeMs:J

.field private mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field protected final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected final mVisibilityReporter:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 52
    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    .line 53
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationListenerService;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 54
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/NotificationLogger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationLogger$1;-><init>(Lcom/android/systemui/statusbar/NotificationLogger;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/NotificationLogger$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationLogger$2;-><init>(Lcom/android/systemui/statusbar/NotificationLogger;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 140
    const-string v0, "statusbar"

    .line 141
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationLogger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLogger;

    .line 41
    iget-wide v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/NotificationLogger;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLogger;
    .param p1, "x1"    # J

    .line 41
    iput-wide p1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationLogger;)Lcom/android/systemui/statusbar/NotificationListContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLogger;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLogger;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationLogger;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLogger;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationLogger;Landroid/util/ArraySet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationLogger;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    return-void
.end method

.method private cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)[",
            "Lcom/android/internal/statusbar/NotificationVisibility;"
        }
    .end annotation

    .line 228
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 229
    .local v0, "array":[Lcom/android/internal/statusbar/NotificationVisibility;
    const/4 v1, 0x0

    .line 230
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 231
    .local v3, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->clone()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v4

    aput-object v4, v0, v1

    .line 234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 235
    .end local v3    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    goto :goto_0

    .line 236
    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$logNotificationVisibilityChanges$0(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;Ljava/util/Collection;)V
    .locals 5
    .param p1, "newlyVisibleAr"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleAr"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p3, "newlyVisible"    # Ljava/util/Collection;

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 189
    :goto_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    .line 190
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 191
    new-array v1, v0, [Ljava/lang/String;

    .line 192
    .local v1, "newlyVisibleKeyAr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 193
    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v2    # "i":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    goto :goto_2

    .line 200
    :catch_1
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "NotificationLogger"

    const-string v4, "failed setNotificationsShown: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v1    # "newlyVisibleKeyAr":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLogger;->recycleAllVisibilityObjects([Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 205
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationLogger;->recycleAllVisibilityObjects([Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 206
    return-void
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "newlyVisible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    .local p2, "noLongerVisible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    .line 180
    .local v0, "newlyVisibleAr":[Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v1

    .line 182
    .local v1, "noLongerVisibleAr":[Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;-><init>(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 207
    return-void
.end method

.method private recycleAllVisibilityObjects(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 211
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 215
    return-void
.end method

.method private recycleAllVisibilityObjects([Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 3
    .param p1, "array"    # [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 218
    array-length v0, p1

    .line 219
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 220
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 221
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getVisibilityReporter()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object v0
.end method

.method public setUpWithEntryManager(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;)V
    .locals 0
    .param p1, "entryManager"    # Lcom/android/systemui/statusbar/NotificationEntryManager;
    .param p2, "listContainer"    # Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 147
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 148
    return-void
.end method

.method public startNotificationLogging()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;->onChildLocationsChanged()V

    .line 171
    return-void
.end method

.method public stopNotificationLogging()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    nop

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;)V

    .line 160
    return-void
.end method
