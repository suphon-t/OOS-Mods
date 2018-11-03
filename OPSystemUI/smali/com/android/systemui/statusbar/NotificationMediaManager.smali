.class public Lcom/android/systemui/statusbar/NotificationMediaManager;
.super Ljava/lang/Object;
.source "NotificationMediaManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationMediaManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMediaManager;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlaybackActive(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMediaManager;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method private clearCurrentMediaNotificationSession()V
    .locals 3

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 271
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 272
    return-void
.end method

.method private getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 248
    .local v0, "playbackState":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    return v1

    .line 252
    .end local v0    # "playbackState":Landroid/media/session/PlaybackState;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10202fc

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0
.end method

.method private isPlaybackActive(I)Z
    .locals 2
    .param p1, "state"    # I

    .line 231
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .line 236
    if-ne p1, p2, :cond_0

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    if-nez p1, :cond_1

    .line 240
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearCurrentMediaNotification()V
    .locals 1

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotificationSession()V

    .line 208
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 212
    const-string v0, "    mMediaSessionManager="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    const-string v0, "    mMediaNotificationKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v0, "    mMediaController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 222
    const-string v0, "    mMediaMetadata="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 228
    return-void
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 15

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "metaDataChanged":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 112
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    .local v2, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 116
    .local v3, "N":I
    const/4 v4, 0x0

    .line 117
    .local v4, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v5, 0x0

    .line 118
    .local v5, "controller":Landroid/media/session/MediaController;
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v7, v3, :cond_1

    .line 119
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 121
    .local v9, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 122
    iget-object v10, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 123
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.mediaSession"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/media/session/MediaSession$Token;

    .line 125
    .local v10, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v10, :cond_0

    .line 126
    new-instance v11, Landroid/media/session/MediaController;

    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v10}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 127
    .local v11, "aController":Landroid/media/session/MediaController;
    nop

    .line 128
    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v12

    if-ne v8, v12, :cond_0

    .line 133
    move-object v4, v9

    .line 134
    move-object v5, v11

    .line 135
    goto :goto_1

    .line 118
    .end local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "token":Landroid/media/session/MediaSession$Token;
    .end local v11    # "aController":Landroid/media/session/MediaController;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    .end local v7    # "i":I
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    .line 145
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v7, :cond_4

    .line 147
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 148
    invoke-virtual {v7, v9, v10}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v7

    .line 152
    .local v7, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/session/MediaController;

    .line 153
    .local v10, "aController":Landroid/media/session/MediaController;
    nop

    .line 154
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v11

    if-ne v8, v11, :cond_3

    .line 156
    invoke-virtual {v10}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "pkg":Ljava/lang/String;
    move v12, v6

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_3

    .line 159
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 160
    .local v13, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v14, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 165
    move-object v5, v10

    .line 166
    move-object v4, v13

    .line 167
    goto :goto_4

    .line 158
    .end local v13    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 171
    .end local v10    # "aController":Landroid/media/session/MediaController;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "i":I
    :cond_3
    :goto_4
    goto :goto_2

    .line 175
    .end local v7    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_4
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v6, v5}, Lcom/android/systemui/statusbar/NotificationMediaManager;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotificationSession()V

    .line 178
    iput-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 179
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v6, v7}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 180
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 186
    const/4 v0, 0x1

    .line 189
    :cond_5
    if-eqz v4, :cond_6

    iget-object v6, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 190
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 191
    iget-object v6, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 197
    .end local v2    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v3    # "N":I
    .end local v4    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "controller":Landroid/media/session/MediaController;
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v0, :cond_7

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 202
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 203
    return-void

    .line 197
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getMediaMetadata()Landroid/media/MediaMetadata;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method public getMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public onNotificationRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 97
    :cond_0
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/systemui/statusbar/NotificationPresenter;
    .param p2, "entryManager"    # Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 89
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 90
    return-void
.end method
