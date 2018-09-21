.class public Lcom/android/systemui/statusbar/NotificationGutsManager;
.super Ljava/lang/Object;
.source "NotificationGutsManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

.field private final mContext:Landroid/content/Context;

.field protected mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mKeyToRemoveOnGutsClosed:Ljava/lang/String;

.field private mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 72
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 73
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationGutsManager;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationGutsManager;)Lcom/android/systemui/statusbar/NotificationListContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationGutsManager;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationGutsManager;
    .param p1, "x1"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p1
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 156
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 158
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateGuts()V

    .line 159
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 160
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V

    .line 178
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, "gutsView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/NotificationSnooze;

    if-eqz v2, :cond_0

    .line 180
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/NotificationSnooze;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeSnoozeView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationSnooze;)V

    goto :goto_0

    .line 181
    :cond_0
    instance-of v2, v1, Lcom/android/systemui/statusbar/AppOpsInfo;

    if-eqz v2, :cond_1

    .line 182
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/AppOpsInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeAppOpsInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/AppOpsInfo;)V

    goto :goto_0

    .line 183
    :cond_1
    instance-of v2, v1, Lcom/android/systemui/statusbar/NotificationInfo;

    if-eqz v2, :cond_2

    .line 184
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeNotificationInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationInfo;)V

    .line 186
    :cond_2
    :goto_0
    return-void
.end method

.method private initializeAppOpsInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/AppOpsInfo;)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "appOpsInfoView"    # Lcom/android/systemui/statusbar/AppOpsInfo;

    .line 217
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    .line 218
    .local v0, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 219
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 220
    .local v2, "userHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 220
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 223
    .local v3, "pmUser":Landroid/content/pm/PackageManager;
    new-instance v4, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$sf1-N5qoeH1wYt_-Wu4HHDalZDE;

    .local v4, "onSettingsClick":Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;
    invoke-direct {v4, p0, v0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$sf1-N5qoeH1wYt_-Wu4HHDalZDE;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 229
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p2, v3, v4, v1, v5}, Lcom/android/systemui/statusbar/AppOpsInfo;->bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Landroid/util/ArraySet;)V

    .line 232
    :cond_0
    return-void
.end method

.method private initializeSnoozeView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationSnooze;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "notificationSnoozeView"    # Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 197
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    .line 198
    .local v0, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 200
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    .line 201
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 202
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->snoozeCriteria:Ljava/util/List;

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    .line 203
    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;)V

    .line 206
    return-void
.end method

.method public static synthetic lambda$bindGuts$0(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "g"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 162
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onGutsClosed()V

    .line 163
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationGuts;->willBeRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 165
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v1

    .line 164
    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_1

    .line 168
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 169
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 171
    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getLatestRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 176
    :cond_2
    return-void
.end method

.method public static synthetic lambda$initializeAppOpsInfo$2(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 2
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "ops"    # Landroid/util/ArraySet;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x542

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 226
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 227
    invoke-virtual {p0, p4, p5, p6, p2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 228
    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$3(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V
    .locals 2
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "v"    # Landroid/view/View;
    .param p5, "intent"    # Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-interface {v0, p5, v1, p3}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 259
    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$4(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 2
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "v"    # Landroid/view/View;
    .param p6, "channel"    # Landroid/app/NotificationChannel;
    .param p7, "appUid"    # I

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 266
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;->onClick(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p3, p7, p6, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 269
    return-void
.end method

.method public static synthetic lambda$initializeSnoozeView$1(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "g"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShown()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 205
    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 125
    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    if-eqz p3, :cond_0

    .line 128
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 131
    return-void
.end method


# virtual methods
.method public bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 152
    return-void
.end method

.method public closeAndSaveGuts(ZZZIIZ)V
    .locals 7
    .param p1, "removeLeavebehinds"    # Z
    .param p2, "force"    # Z
    .param p3, "removeControls"    # Z
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "resetMenu"    # Z

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(ZZIIZ)V

    .line 306
    :cond_0
    if-eqz p6, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->resetExposedMenuView(ZZ)V

    .line 309
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 407
    const-string v0, "NotificationGutsManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string v0, "  mKeyToRemoveOnGutsClosed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getKeyToRemoveOnGutsClosed()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    return-object v0
.end method

.method initializeNotificationInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 26
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "notificationInfoView"    # Lcom/android/systemui/statusbar/NotificationInfo;

    move-object/from16 v7, p0

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v8

    .line 245
    .local v8, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    .line 246
    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 248
    .local v22, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 249
    .local v0, "onSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    .line 250
    .local v14, "userHandle":Landroid/os/UserHandle;
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 250
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 252
    .local v23, "pmUser":Landroid/content/pm/PackageManager;
    const-string v1, "notification"

    .line 253
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 252
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v24

    .line 254
    .local v24, "iNotificationManager":Landroid/app/INotificationManager;
    new-instance v13, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;

    .local v13, "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    move-object/from16 v12, p1

    invoke-direct {v13, v7, v8, v15, v12}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v25

    .line 262
    .local v25, "isForBlockingHelper":Z
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 263
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    move-object v1, v0

    goto :goto_1

    .line 264
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v15

    move-object/from16 v5, v22

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 273
    .end local v0    # "onSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    .local v1, "onSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    :goto_1
    nop

    .line 277
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNumUniqueChannels()I

    move-result v2

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v19

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    .line 273
    :goto_2
    move/from16 v21, v4

    goto :goto_3

    .line 285
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 273
    :goto_3
    move-object/from16 v9, p2

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v22

    move-object v4, v13

    move-object v13, v0

    .end local v13    # "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .local v4, "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    move-object v5, v14

    move v14, v2

    .end local v14    # "userHandle":Landroid/os/UserHandle;
    .local v5, "userHandle":Landroid/os/UserHandle;
    move-object v2, v15

    .end local v15    # "sbn":Landroid/service/notification/StatusBarNotification;
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move/from16 v20, v25

    :try_start_1
    invoke-virtual/range {v9 .. v21}, Lcom/android/systemui/statusbar/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;ZZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    goto :goto_5

    .line 286
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .restart local v13    # "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .restart local v14    # "userHandle":Landroid/os/UserHandle;
    .restart local v15    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v2, v15

    .line 287
    .end local v13    # "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .end local v14    # "userHandle":Landroid/os/UserHandle;
    .end local v15    # "sbn":Landroid/service/notification/StatusBarNotification;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local v4    # "onAppSettingsClick":Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    :goto_4
    const-string v3, "NotificationGutsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return-void
.end method

.method public onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 113
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationGutsManager;->setExposedGuts(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 115
    return-void
.end method

.method openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "menuItem"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 338
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 339
    return v1

    .line 342
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 343
    const-string v0, "NotificationGutsManager"

    const-string v2, "Trying to show notification guts, but not attached to window"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v1

    .line 347
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 348
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    return v1

    .line 351
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 352
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 356
    return v1

    .line 358
    :cond_3
    invoke-direct {p0, v0, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 359
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    .line 362
    .local v2, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-nez v2, :cond_4

    .line 364
    return v1

    .line 367
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v3, 0xcc

    invoke-virtual {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 370
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 372
    new-instance v1, Lcom/android/systemui/statusbar/NotificationGutsManager$1;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    move-object v6, v2

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/NotificationGutsManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->post(Ljava/lang/Runnable;)Z

    .line 402
    const/4 v1, 0x1

    return v1
.end method

.method public setExposedGuts(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 320
    return-void
.end method

.method public setKeyToRemoveOnGutsClosed(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyToRemoveOnGutsClosed"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/systemui/statusbar/NotificationPresenter;
    .param p2, "entryManager"    # Lcom/android/systemui/statusbar/NotificationEntryManager;
    .param p3, "listContainer"    # Lcom/android/systemui/statusbar/NotificationListContainer;
    .param p4, "checkSaveListener"    # Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    .param p5, "onSettingsClickListener"    # Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 98
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 99
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 100
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    .line 101
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;

    .line 102
    return-void
.end method

.method protected startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ")V"
        }
    .end annotation

    .line 135
    .local p3, "ops":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1b

    const/16 v2, 0x1a

    if-eqz v0, :cond_2

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package"

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 148
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    return-void
.end method
