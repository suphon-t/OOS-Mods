.class public Lcom/android/settingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/ApplicationsState$AppFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$AppEntry;,
        Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settingslib/applications/ApplicationsState$Callbacks;,
        Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$MainHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$Session;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminRetrieveFlags:I

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurComputingSizeUuid:Ljava/util/UUID;

.field mCurId:J

.field final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field mHaveInstantApps:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mStats:Landroid/app/usage/StorageStatsManager;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 1454
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1473
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1483
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1493
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1511
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1525
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1538
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1555
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1580
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1594
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1610
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1621
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1632
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1643
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1654
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$15;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$15;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1666
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$16;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$16;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1694
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$17;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$17;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1755
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$18;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$18;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1770
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$19;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$19;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1785
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$20;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$20;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1800
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$21;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$21;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 82
    invoke-static {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method private addUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 547
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 548
    .local v0, "profileIds":[I
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 550
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 551
    iget-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 556
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 561
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 563
    :cond_2
    :goto_0
    return-void
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 582
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 583
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 585
    .local v1, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-nez v1, :cond_0

    .line 587
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    move-object v1, v2

    .line 588
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    :cond_0
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v2, p1, :cond_1

    .line 591
    iput-object p1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 593
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static hasFlag(II)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "flag"    # I

    .line 1448
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 566
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 568
    .local v1, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v1, :cond_1

    .line 569
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 570
    .local v3, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 571
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 572
    .end local v3    # "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    goto :goto_0

    .line 573
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 574
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 578
    .end local v1    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :cond_1
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 465
    monitor-exit v0

    return-void

    .line 467
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 470
    monitor-exit v0

    return-void

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 473
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 472
    :goto_0
    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 475
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_3

    .line 476
    monitor-exit v0

    return-void

    .line 478
    :cond_3
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 479
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    .line 481
    monitor-exit v0

    return-void

    .line 483
    :cond_4
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 485
    :cond_5
    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 486
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 488
    :cond_6
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 490
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 492
    :cond_7
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 493
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 496
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8
    monitor-exit v0

    .line 498
    goto :goto_1

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 497
    :catch_0
    move-exception v0

    .line 499
    :goto_1
    return-void
.end method

.method clearEntries()V
    .locals 2

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    return-void
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .line 330
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    .line 335
    return-void

    .line 333
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 339
    return-void
.end method

.method doPauseLocked()V
    .locals 1

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 343
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 347
    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 7

    .line 238
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 242
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$1;)V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 244
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 246
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 247
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 250
    .local v3, "user":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 256
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    :goto_1
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    .line 255
    invoke-interface {v4, v5, v6}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 258
    .local v4, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v4    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_2

    .line 259
    :catch_0
    move-exception v4

    .line 261
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :goto_2
    goto :goto_0

    .line 263
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 266
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    goto :goto_4

    .line 268
    :cond_5
    move v1, v3

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 269
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-boolean v0, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 273
    .end local v1    # "i":I
    :cond_6
    :goto_4
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 274
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 275
    nop

    .local v3, "i":I
    :goto_5
    move v1, v3

    .end local v3    # "i":I
    .restart local v1    # "i":I
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 276
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 279
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_8

    .line 280
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 281
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 282
    add-int/lit8 v1, v1, -0x1

    .line 283
    goto :goto_6

    .line 285
    :cond_7
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 287
    :cond_8
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    if-nez v4, :cond_9

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 288
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 291
    :cond_9
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 293
    .local v4, "userId":I
    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_a

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v0

    if-lez v5, :cond_a

    .line 294
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    add-int/lit8 v1, v1, -0x1

    .line 296
    goto :goto_6

    .line 299
    :cond_a
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 300
    .local v5, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v5, :cond_b

    .line 301
    iput-object v3, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 275
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "userId":I
    .end local v5    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_b
    :goto_6
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    goto :goto_5

    .line 304
    .end local v3    # "i":I
    :cond_c
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 306
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    .line 308
    :cond_d
    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 310
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 312
    :cond_e
    return-void
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 445
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 446
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 447
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 448
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 449
    return v0

    .line 445
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 452
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 544
    return-void
.end method

.method rebuildActiveSessions()V
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v1, :cond_0

    .line 629
    monitor-exit v0

    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 632
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 634
    .local v2, "s":Lcom/android/settingslib/applications/ApplicationsState$Session;
    iget-boolean v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v3, :cond_1

    .line 635
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v2    # "s":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 502
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 504
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    .line 506
    .local v1, "idx":I
    if-ltz v1, :cond_5

    .line 507
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 509
    .local v2, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_0

    .line 510
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 514
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 515
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    .line 516
    iput-boolean v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 517
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 518
    .local v7, "otherInfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v8, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_1

    .line 519
    iput-boolean v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 520
    goto :goto_1

    .line 522
    .end local v7    # "otherInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 524
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 525
    iput-boolean v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 526
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 527
    .local v6, "otherInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v6}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 528
    iput-boolean v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 529
    goto :goto_3

    .line 531
    .end local v6    # "otherInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    goto :goto_2

    .line 533
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 534
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 538
    .end local v1    # "idx":I
    .end local v2    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
