.class public Lcom/oneplus/notification/OPNotificationController;
.super Ljava/lang/Object;
.source "OPNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/notification/OPNotificationController$SettingsObserver;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mEnabledBlock:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mGameMode3rdCallUid:Ljava/lang/String;

.field private mGameModeNotifType:I

.field protected final mOimcObserver:Landroid/database/ContentObserver;

.field private mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    .line 48
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    .line 51
    const-string v1, "-1"

    iput-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    .line 52
    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    .line 241
    new-instance v1, Lcom/oneplus/notification/OPNotificationController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/oneplus/notification/OPNotificationController$1;-><init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Landroid/database/ContentObserver;

    .line 56
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    .line 58
    new-instance v1, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;-><init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    .line 59
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    invoke-virtual {v1}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->observe()V

    .line 61
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_oimc_func_disable_headsup"

    .line 62
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Landroid/database/ContentObserver;

    .line 61
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 32
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/notification/OPNotificationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 32
    iget v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/notification/OPNotificationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # I

    .line 32
    iput p1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 32
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/notification/OPNotificationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/notification/OPNotificationController;)Lcom/android/systemui/statusbar/NotificationEntryManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 32
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/notification/OPNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 32
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/notification/OPNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 32
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oneplus/notification/OPNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    return p1
.end method

.method private blockByDnd()Z
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dnd_mode_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 139
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "do_not_disturb_block_notification"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 142
    .local v2, "block":I
    if-ne v2, v1, :cond_0

    .line 143
    return v1

    .line 146
    .end local v2    # "block":I
    :cond_0
    return v3
.end method

.method private blockByReadMode()Z
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 126
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "reading_mode_block_notification"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 129
    .local v2, "block":I
    if-ne v2, v1, :cond_0

    .line 130
    return v1

    .line 133
    .end local v2    # "block":I
    :cond_0
    return v3
.end method

.method private isPriorityPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 174
    const-string v0, "com.android.dialer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.incallui"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.deskclock"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blockByGameMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 150
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "pkg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/oneplus/notification/OPNotificationController;->isPriorityPkg(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 153
    return v2

    .line 156
    :cond_0
    const-string v1, "call"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    return v2

    .line 160
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OPNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game mode block enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    if-eqz v1, :cond_4

    .line 163
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 164
    .local v1, "b":Landroid/os/Bundle;
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 165
    const-string v4, "oneplus.shouldPeekInGameMode"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2

    .line 167
    :cond_3
    return v3

    .line 170
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_4
    return v2
.end method

.method public keepLightBlink(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;)Z"
        }
    .end annotation

    .line 109
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v0, 0x0

    .line 110
    .local v0, "blink":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 111
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 112
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 113
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "com.android.dialer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.android.server.telecom"

    .line 115
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x1

    .line 111
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public setNotificationEntry(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0
    .param p1, "mgr"    # Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 68
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 69
    return-void
.end method

.method public shouldPeek(Landroid/service/notification/StatusBarNotification;)I
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 73
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "-1"

    iget-object v2, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OPNotificationController;->isPriorityPkg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: game mode 3rd party is calling, uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return v1

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/notification/OPNotificationController;->blockByReadMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OPNotificationController"

    const-string v2, "No peeking: block by reading mode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    return v1

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/notification/OPNotificationController;->blockByDnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OPNotificationController"

    const-string v2, "No peeking: block by dnd"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_4
    return v1

    .line 86
    :cond_5
    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OPNotificationController;->blockByGameMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "OPNotificationController"

    const-string v1, "No peeking: block by game mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method public showSimpleHeadsUp()Z
    .locals 2

    .line 184
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEnabledBlock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public snoozeHeadsUp(Landroid/app/Notification;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;

    .line 95
    invoke-virtual {p1}, Landroid/app/Notification;->getSwipeUpHeadsUpIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 96
    .local v0, "intent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_1

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snooze "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " send pending intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 105
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    return-void
.end method

.method public updateNotificationRule()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 259
    :cond_0
    return-void
.end method
