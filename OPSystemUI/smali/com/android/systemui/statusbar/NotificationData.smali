.class public Lcom/android/systemui/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationData$Environment;,
        Lcom/android/systemui/statusbar/NotificationData$Entry;
    }
.end annotation


# instance fields
.field private mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

.field private final mFilteredForUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final mFsc:Lcom/android/systemui/ForegroundServiceController;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

.field private final mRankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mShowCarModeHighlightNotification:Z

.field private mShowHighlightNotification:Z

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V
    .locals 1
    .param p1, "environment"    # Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 87
    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    .line 430
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    .line 437
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 443
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    .line 507
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 508
    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 509
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/StatusBarNotification;

    .line 81
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object v0
.end method

.method private static checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 895
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "e"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 926
    iget-object v0, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 927
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    iget-object v0, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 930
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " importance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 932
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method private isCategory(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "n"    # Landroid/app/Notification;

    .line 670
    iget-object v0, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 938
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "sbnPackage":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "effect"    # I

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isExemptFromDndVisualSuppression(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 625
    return v1

    .line 627
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 628
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v2, :cond_2

    .line 629
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 630
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 632
    :cond_2
    return v1
.end method

.method static showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 887
    const-string v0, "android.permission.NOTIFICATION_DURING_SETUP"

    .line 888
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 887
    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 889
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.allowDuringSetup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 887
    :goto_0
    return v0
.end method

.method public static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 881
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 732
    if-eqz p1, :cond_3

    .line 733
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 734
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 736
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 737
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 738
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 739
    goto :goto_1

    .line 741
    :cond_0
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 742
    .local v4, "oldSbn":Landroid/service/notification/StatusBarNotification;
    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationData;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "overrideGroupKey":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 744
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v5}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 745
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 747
    :cond_1
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationData;->getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    iput-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    .line 748
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationData;->getSnoozeCriteria(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->snoozeCriteria:Ljava/util/List;

    .line 749
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getUserSentiment()I

    move-result v6

    iput v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I

    .line 736
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "overrideGroupKey":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 751
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 753
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 754
    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 552
    return-void

    .line 548
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 903
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active notifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    const/4 v1, 0x0

    move v2, v1

    .local v2, "active":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 907
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 908
    .local v3, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 906
    .end local v3    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 911
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 912
    .local v4, "M":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inactive notifications: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    const/4 v5, 0x0

    .line 915
    .local v5, "inactiveCount":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 916
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 917
    .local v6, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 918
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/systemui/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 919
    add-int/lit8 v5, v5, 0x1

    .line 915
    .end local v6    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 922
    .end local v1    # "i":I
    .end local v4    # "M":I
    .end local v5    # "inactiveCount":I
    :cond_2
    monitor-exit v3

    .line 923
    return-void

    .line 922
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public filterAndSort()V
    .locals 10

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowHighlightNotification:Z

    .line 775
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 778
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowCarModeHighlightNotification:Z

    .line 779
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 782
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 783
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 785
    .local v2, "N":I
    const/4 v3, 0x0

    .line 787
    .local v3, "maxPriorityOnStatusBar":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 788
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 789
    .local v4, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v5, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 792
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 793
    .local v6, "n":Landroid/app/Notification;
    invoke-virtual {v6}, Landroid/app/Notification;->showOnStatusBar()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 795
    invoke-virtual {v6}, Landroid/app/Notification;->getPriorityOnStatusBar()I

    move-result v7

    .line 797
    .local v7, "priority":I
    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    .line 798
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowCarModeHighlightNotification:Z

    .line 799
    iput-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    goto :goto_1

    .line 802
    :cond_0
    if-le v7, v3, :cond_1

    .line 803
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowHighlightNotification:Z

    .line 804
    iput-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 805
    move v3, v7

    .line 810
    .end local v7    # "priority":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 811
    goto :goto_2

    .line 814
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .end local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v6    # "n":Landroid/app/Notification;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    .end local v0    # "i":I
    .end local v2    # "N":I
    .end local v3    # "maxPriorityOnStatusBar":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 819
    return-void

    .line 816
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 702
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getImportance(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    return v0

    .line 678
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public getKeyguardChronometer()Landroid/widget/Chronometer;
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    .line 978
    const/4 v0, 0x0

    return-object v0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 981
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    return-object v1
.end method

.method public getNotificationsForCurrentUser()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 529
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 531
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 532
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 533
    goto :goto_1

    .line 535
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    return-object v0

    .line 537
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 686
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRank(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v0

    return v0

    .line 710
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, p1, p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v0

    return v0
.end method

.method public getSnoozeCriteria(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 694
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarChronometer()Landroid/widget/Chronometer;
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    .line 970
    const/4 v0, 0x0

    return-object v0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 973
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    return-object v1
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v0

    return v0

    .line 600
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    return v0

    .line 592
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isExemptFromDndVisualSuppression(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 636
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->isNotificationBlockedByPolicy(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 637
    return v1

    .line 640
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 642
    return v2

    .line 644
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    return v2

    .line 647
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    return v2

    .line 650
    :cond_3
    return v1
.end method

.method public isLock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isLock()Z

    move-result v0

    return v0

    .line 727
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isNotificationBlockedByPolicy(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .line 659
    const-string v0, "call"

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "msg"

    .line 660
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alarm"

    .line 661
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event"

    .line 662
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reminder"

    .line 663
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 664
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "removed":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v0, v2

    .line 558
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 561
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 562
    return-object v0

    .line 558
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 440
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 441
    return-void
.end method

.method public shouldFilterOut(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 825
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 826
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 827
    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    return v2

    .line 831
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    return v2

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isSecurelyLocked(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 836
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 837
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 838
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 839
    :cond_2
    return v2

    .line 842
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressAmbient(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 843
    return v2

    .line 846
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isDozing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressNotificationList(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 847
    return v2

    .line 850
    :cond_5
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationData;->shouldHide(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 851
    return v2

    .line 854
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 855
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 856
    return v2

    .line 859
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-interface {v1, v0}, Lcom/android/systemui/ForegroundServiceController;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/ForegroundServiceController;->isDungeonNeededForUser(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 861
    return v2

    .line 863
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-interface {v1, v0}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 864
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.foregroundApps"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, "apps":[Ljava/lang/String;
    if-eqz v1, :cond_9

    array-length v4, v1

    if-lt v4, v2, :cond_9

    .line 867
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    aget-object v6, v1, v3

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertWarningNeeded(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 868
    return v2

    .line 873
    .end local v1    # "apps":[Ljava/lang/String;
    :cond_9
    return v3
.end method

.method public shouldHide(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 716
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v0

    return v0

    .line 718
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 1013
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1014
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "keyguard_visible"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public shouldSuppressAmbient(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 616
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 604
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public shouldSuppressNotificationList(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 620
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public shouldSuppressPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 608
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public shouldSuppressStatusBar(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 612
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public showCarModeNotification()Z
    .locals 1

    .line 987
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowCarModeHighlightNotification:Z

    return v0
.end method

.method public showNotification()Z
    .locals 1

    .line 961
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowHighlightNotification:Z

    return v0
.end method

.method public updateAppOp(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "appOp"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "showIcon"    # Z

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 572
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 573
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 574
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    if-ne p2, v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 575
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 576
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    if-eqz p5, :cond_0

    .line 578
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 580
    :cond_0
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 572
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 566
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 567
    return-void
.end method
