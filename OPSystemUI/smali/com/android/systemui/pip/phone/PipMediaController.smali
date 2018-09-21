.class public Lcom/android/systemui/pip/phone/PipMediaController;
.super Ljava/lang/Object;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mNextAction:Landroid/app/RemoteAction;

.field private mPauseAction:Landroid/app/RemoteAction;

.field private mPlayAction:Landroid/app/RemoteAction;

.field private mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

.field private final mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

.field private mPrevAction:Landroid/app/RemoteAction;

.field private final mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMediaController$1;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMediaController$2;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    .line 102
    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMediaController$3;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mActivityManager:Landroid/app/IActivityManager;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, "mediaControlFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.systemui.pip.phone.PLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "com.android.systemui.pip.phone.PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "com.android.systemui.pip.phone.NEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "com.android.systemui.pip.phone.PREV"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->createMediaActions()V

    .line 123
    const-string v1, "media_session"

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 127
    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 128
    .local v1, "userInfoController":Lcom/android/systemui/statusbar/policy/UserInfoController;
    new-instance v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMediaController$neOVZxIcmRkhimcM6huwsIEiXEw;

    invoke-direct {v2, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMediaController$neOVZxIcmRkhimcM6huwsIEiXEw;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMediaController;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMediaController;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->notifyActionsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipMediaController;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMediaController;
    .param p1, "x1"    # Ljava/util/List;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method private createMediaActions()V
    .locals 11

    .line 193
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v1, 0x7f110471

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "pauseDescription":Ljava/lang/String;
    new-instance v1, Landroid/app/RemoteAction;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v3, 0x7f080321

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.systemui.pip.phone.PAUSE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    .line 199
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v2, 0x7f110477

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "playDescription":Ljava/lang/String;
    new-instance v2, Landroid/app/RemoteAction;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v4, 0x7f080324

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.systemui.pip.phone.PLAY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {v4, v6, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v2, v3, v1, v1, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    .line 205
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v3, 0x7f110479

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "nextDescription":Ljava/lang/String;
    new-instance v3, Landroid/app/RemoteAction;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v7, 0x7f080383

    invoke-static {v4, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.systemui.pip.phone.NEXT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v7, v6, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v3, v4, v2, v2, v7}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    .line 211
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v4, 0x7f11047a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "prevDescription":Ljava/lang/String;
    new-instance v4, Landroid/app/RemoteAction;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v8, 0x7f080384

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.pip.phone.PREV"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-static {v8, v6, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v4, v7, v3, v3, v5}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    .line 216
    return-void
.end method

.method private getMediaActions()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 167
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "mediaActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/RemoteAction;>;"
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    .line 169
    .local v1, "state":I
    invoke-static {v1}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v2

    .line 170
    .local v2, "isPlaying":Z
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v3

    .line 173
    .local v3, "actions":J
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    const-wide/16 v6, 0x10

    and-long/2addr v6, v3

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_1

    move v6, v10

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 174
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    if-nez v2, :cond_2

    const-wide/16 v5, 0x4

    and-long/2addr v5, v3

    cmp-long v5, v5, v8

    if-eqz v5, :cond_2

    .line 178
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_2
    if-eqz v2, :cond_3

    const-wide/16 v5, 0x2

    and-long/2addr v5, v3

    cmp-long v5, v5, v8

    if-eqz v5, :cond_3

    .line 180
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const-wide/16 v11, 0x20

    and-long/2addr v11, v3

    cmp-long v6, v11, v8

    if-eqz v6, :cond_4

    move v7, v10

    nop

    :cond_4
    invoke-virtual {v5, v7}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 185
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    return-object v0

    .line 164
    .end local v0    # "mediaActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/RemoteAction;>;"
    .end local v1    # "state":I
    .end local v2    # "isPlaying":Z
    .end local v3    # "actions":J
    :cond_5
    :goto_2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/pip/phone/PipMediaController;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->registerSessionListenerForCurrentUser()V

    return-void
.end method

.method static synthetic lambda$notifyActionsChanged$1(Ljava/util/List;Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 0
    .param p0, "actions"    # Ljava/util/List;
    .param p1, "l"    # Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .line 271
    invoke-interface {p1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    return-void
.end method

.method private notifyActionsChanged()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMediaController$PGZH9Rcf3EMC5cibv13aaStfc2E;

    invoke-direct {v2, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMediaController$PGZH9Rcf3EMC5cibv13aaStfc2E;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 273
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    :cond_0
    return-void
.end method

.method private registerSessionListenerForCurrentUser()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 225
    return-void
.end method

.method private resolveActiveMediaController(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 234
    .local v0, "topActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 236
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 237
    .local v2, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    invoke-direct {p0, v2}, Lcom/android/systemui/pip/phone/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    .line 239
    return-void

    .line 235
    .end local v2    # "controller":Landroid/media/session/MediaController;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "topActivity":Landroid/content/ComponentName;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    .line 245
    return-void
.end method

.method private setActiveMediaController(Landroid/media/session/MediaController;)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eq p1, v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 256
    if-eqz p1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 259
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->notifyActionsChanged()V

    .line 263
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .line 145
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onActivityPinned()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    .line 139
    return-void
.end method

.method public removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .line 155
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method
