.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private addTime:J

.field public autoRedacted:Z

.field public cachedAmbientContentView:Landroid/widget/RemoteViews;

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public channel:Landroid/app/NotificationChannel;

.field public expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private hasSentReply:Z

.field public headsUpStatusBarText:Ljava/lang/CharSequence;

.field public headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field public key:Ljava/lang/String;

.field public keyguardChronometer:Landroid/widget/Chronometer;

.field private lastFullScreenIntentLaunchTime:J

.field public lastRemoteInputSent:J

.field public mActiveAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mDebugThrowable:Ljava/lang/Throwable;

.field public mIsGamingModeNotificaiton:Ljava/lang/Boolean;

.field public mIsSystemNotification:Ljava/lang/Boolean;

.field private mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public remoteInputTextWhenReset:Ljava/lang/CharSequence;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public snoozeCriteria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field public statusBarChronometer:Landroid/widget/Chronometer;

.field public targetSdk:I

.field public userSentiment:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 122
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I

    .line 124
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    .line 125
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 129
    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    .line 142
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    .line 143
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    .line 159
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    .line 168
    :try_start_0
    const-string v0, "scene_modes_game"

    .line 169
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsGamingModeNotificaiton:Ljava/lang/Boolean;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsGamingModeNotificaiton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "android"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsGamingModeNotificaiton:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationData"

    const-string v2, "exception while getting channel ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initChronometers(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;

    .line 243
    new-instance v0, Landroid/widget/Chronometer;

    invoke-direct {v0, p1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p2}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 246
    new-instance v0, Landroid/widget/Chronometer;

    invoke-direct {v0, p1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p2}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 248
    return-void
.end method

.method public static synthetic lambda$createIcons$0(Lcom/android/systemui/statusbar/NotificationData$Entry;I)V
    .locals 2
    .param p1, "newVisibility"    # I

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconsVisible(Z)V

    .line 298
    :cond_1
    return-void
.end method


# virtual methods
.method public abortTask()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 356
    :cond_0
    return-void
.end method

.method public createChronometer(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 221
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getChronometerState()I

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->initChronometers(Landroid/content/Context;Landroid/app/Notification;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    if-nez v1, :cond_1

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->initChronometers(Landroid/content/Context;Landroid/app/Notification;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 233
    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification;->getChronometerState()I

    move-result v1

    if-nez v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    goto :goto_1

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 240
    :goto_1
    return-void
.end method

.method public createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 264
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 265
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 266
    .local v8, "smallIcon":Landroid/graphics/drawable/Icon;
    if-eqz v8, :cond_1

    .line 272
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 277
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 280
    new-instance v9, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 281
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 282
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 286
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 287
    .local v1, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 293
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;-><init>(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V

    .line 299
    return-void

    .line 288
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 289
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 290
    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No small icon in notification from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContrastedColor(Landroid/content/Context;ZI)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLowPriority"    # Z
    .param p3, "backgroundColor"    # I

    .line 336
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 338
    .local v0, "rawColor":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 339
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    return v1

    .line 341
    :cond_1
    invoke-static {p1, v0, p3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v1

    .line 343
    .local v1, "contrasted":I
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    .line 344
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    .line 345
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    return v2
.end method

.method public getDebugThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mDebugThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getExpandedContentView()Landroid/view/View;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJustSentRemoteInput()Z
    .locals 6

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastMessageFromReply()Z
    .locals 8

    .line 400
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasSentReply:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 401
    return v1

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 404
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "android.remoteInputHistory"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 406
    .local v2, "replyTexts":[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 407
    return v4

    .line 409
    :cond_1
    const-string v3, "android.messages"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 410
    .local v3, "messages":[Landroid/os/Parcelable;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-lez v5, :cond_3

    .line 411
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-object v5, v3, v5

    .line 412
    .local v5, "message":Landroid/os/Parcelable;
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 413
    move-object v6, v5

    check-cast v6, Landroid/os/Bundle;

    .line 414
    invoke-static {v6}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v6

    .line 416
    .local v6, "lastMessage":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz v6, :cond_3

    .line 417
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v1

    .line 418
    .local v1, "senderPerson":Landroid/app/Person;
    if-nez v1, :cond_2

    .line 419
    return v4

    .line 421
    :cond_2
    const-string v4, "android.messagingUser"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    .line 422
    .local v4, "user":Landroid/app/Person;
    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    return v7

    .line 426
    .end local v1    # "senderPerson":Landroid/app/Person;
    .end local v4    # "user":Landroid/app/Person;
    .end local v5    # "message":Landroid/os/Parcelable;
    .end local v6    # "lastMessage":Landroid/app/Notification$MessagingStyle$Message;
    :cond_3
    return v1
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 206
    return-void
.end method

.method public onInflationTaskFinished()V
    .locals 1

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 370
    return-void
.end method

.method public onRemoteInputInserted()V
    .locals 2

    .line 391
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 393
    return-void
.end method

.method public reCheckToLaunchFullScreenIntent()Z
    .locals 6

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    .line 193
    :cond_0
    return-void
.end method

.method public setDebugThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "debugThrowable"    # Ljava/lang/Throwable;

    .line 383
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mDebugThrowable:Ljava/lang/Throwable;

    .line 384
    return-void
.end method

.method public setHasSentReply()V
    .locals 1

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasSentReply:Z

    .line 397
    return-void
.end method

.method public setIconTag(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 306
    :cond_0
    return-void
.end method

.method public setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 2
    .param p1, "abortableTask"    # Lcom/android/systemui/statusbar/InflationTask;

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 361
    .local v0, "existing":Lcom/android/systemui/statusbar/InflationTask;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    .line 362
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 363
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/InflationTask;->supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V

    .line 366
    :cond_0
    return-void
.end method

.method public setInterruption()V
    .locals 1

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    .line 180
    return-void
.end method

.method public updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 319
    .local v0, "n":Landroid/app/Notification;
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 320
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 321
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 325
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 326
    .local v1, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 327
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .line 329
    .restart local v0    # "n":Landroid/app/Notification;
    .restart local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t update icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    :goto_0
    return-void
.end method
