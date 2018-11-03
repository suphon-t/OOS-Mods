.class public Lcom/android/systemui/volume/MediaSessions;
.super Ljava/lang/Object;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/MediaSessions$Callbacks;,
        Lcom/android/systemui/volume/MediaSessions$H;,
        Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/systemui/volume/MediaSessions$H;

.field private mInit:Z

.field private final mMgr:Landroid/media/session/MediaSessionManager;

.field private final mRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/session/MediaSession$Token;",
            "Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRvc:Landroid/media/IRemoteVolumeController;

.field private final mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/systemui/volume/MediaSessions;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callbacks"    # Lcom/android/systemui/volume/MediaSessions$Callbacks;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    .line 325
    new-instance v0, Lcom/android/systemui/volume/MediaSessions$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/MediaSessions$1;-><init>(Lcom/android/systemui/volume/MediaSessions;)V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 333
    new-instance v0, Lcom/android/systemui/volume/MediaSessions$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/MediaSessions$2;-><init>(Lcom/android/systemui/volume/MediaSessions;)V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mRvc:Landroid/media/IRemoteVolumeController;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/volume/MediaSessions;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/android/systemui/volume/MediaSessions$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/volume/MediaSessions$H;-><init>(Lcom/android/systemui/volume/MediaSessions;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    .line 72
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    .line 74
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/MediaSessions;)Landroid/media/session/MediaSessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/ISessionController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions;
    .param p1, "x1"    # Landroid/media/session/ISessionController;
    .param p2, "x2"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/MediaSessions;->onRemoteVolumeChangedH(Landroid/media/session/ISessionController;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/ISessionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions;
    .param p1, "x1"    # Landroid/media/session/ISessionController;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/MediaSessions;->onUpdateRemoteControllerH(Landroid/media/session/ISessionController;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaController$PlaybackInfo;

    .line 56
    invoke-static {p0}, Lcom/android/systemui/volume/MediaSessions;->isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/MediaSessions;)Lcom/android/systemui/volume/MediaSessions$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions;
    .param p1, "x1"    # Landroid/media/session/MediaSession$Token;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/session/MediaController$PlaybackInfo;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions;->updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/MediaSessions;)Lcom/android/systemui/volume/MediaSessions$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    return-object v0
.end method

.method private static dump(ILjava/io/PrintWriter;Landroid/media/session/MediaController;)V
    .locals 16
    .param p0, "n"    # I
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "c"    # Landroid/media/session/MediaController;

    move-object/from16 v0, p1

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Controller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 207
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v3

    .line 208
    .local v3, "flags":J
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v5

    .line 209
    .local v5, "mm":Landroid/media/MediaMetadata;
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v6

    .line 210
    .local v6, "pi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    .line 211
    .local v7, "playbackState":Landroid/media/session/PlaybackState;
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v8

    .line 212
    .local v8, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v9

    .line 213
    .local v9, "queueTitle":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v10

    .line 214
    .local v10, "ratingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v11

    .line 216
    .local v11, "sessionActivity":Landroid/app/PendingIntent;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    PlaybackState: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/systemui/volume/Util;->playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    PlaybackInfo: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/systemui/volume/Util;->playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    if-eqz v5, :cond_0

    .line 219
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  MediaMetadata.desc="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    RatingType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    Flags: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    if-eqz v1, :cond_1

    .line 224
    const-string v12, "    Extras:"

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 226
    .local v13, "key":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    .end local v13    # "key":Ljava/lang/String;
    goto :goto_0

    .line 229
    :cond_1
    if-eqz v9, :cond_2

    .line 230
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    QueueTitle: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 233
    const-string v12, "    Queue:"

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/session/MediaSession$QueueItem;

    .line 235
    .local v13, "qi":Landroid/media/session/MediaSession$QueueItem;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    .end local v13    # "qi":Landroid/media/session/MediaSession$QueueItem;
    goto :goto_1

    .line 238
    :cond_3
    if-eqz v6, :cond_4

    .line 239
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    sessionActivity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    :cond_4
    return-void
.end method

.method private static isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 2
    .param p0, "pi"    # Landroid/media/session/MediaController$PlaybackInfo;

    .line 166
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onRemoteVolumeChangedH(Landroid/media/session/ISessionController;I)V
    .locals 4
    .param p1, "session"    # Landroid/media/session/ISessionController;
    .param p2, "flags"    # I

    .line 117
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    .line 118
    .local v0, "controller":Landroid/media/session/MediaController;
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remoteVolumeChangedH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {p2}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    .line 121
    .local v1, "token":Landroid/media/session/MediaSession$Token;
    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    invoke-interface {v2, v1, p2}, Lcom/android/systemui/volume/MediaSessions$Callbacks;->onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V

    .line 122
    return-void
.end method

.method private onUpdateRemoteControllerH(Landroid/media/session/ISessionController;)V
    .locals 5
    .param p1, "session"    # Landroid/media/session/ISessionController;

    .line 125
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    goto :goto_0

    .line 126
    :cond_0
    move-object v1, v0

    .line 127
    .local v1, "controller":Landroid/media/session/MediaController;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    .line 128
    .local v0, "pkg":Ljava/lang/String;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRemoteControllerH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/MediaSessions;->postUpdateSessions()V

    .line 131
    return-void
.end method

.method private updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/media/session/MediaController$PlaybackInfo;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions$Callbacks;->onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, "  mInit: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/MediaSessions;->mInit:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 79
    const-string v0, "  mRecords.size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    .line 82
    .local v2, "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$100(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/android/systemui/volume/MediaSessions;->dump(ILjava/io/PrintWriter;Landroid/media/session/MediaController;)V

    .line 83
    .end local v2    # "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method protected getControllerName(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 5
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 171
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 190
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "appLabel":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    .line 192
    return-object v3

    .line 194
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appLabel":Ljava/lang/String;
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    .line 195
    :goto_0
    return-object v1
.end method

.method public init()V
    .locals 4

    .line 87
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions;->mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/MediaSessions;->mInit:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/volume/MediaSessions;->postUpdateSessions()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions;->mRvc:Landroid/media/IRemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    .line 93
    return-void
.end method

.method protected onActiveSessionsUpdatedH(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActiveSessionsUpdatedH n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    .local v0, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/session/MediaSession$Token;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 137
    .local v2, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 138
    .local v3, "token":Landroid/media/session/MediaSession$Token;
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v4

    .line 139
    .local v4, "pi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v5, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    new-instance v5, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v2, v6}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;-><init>(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/MediaController;Lcom/android/systemui/volume/MediaSessions$1;)V

    .line 142
    .local v5, "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/MediaSessions;->getControllerName(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$302(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v6, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v6, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    invoke-virtual {v2, v5, v6}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 146
    .end local v5    # "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    .line 147
    .restart local v5    # "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    invoke-static {v4}, Lcom/android/systemui/volume/MediaSessions;->isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v6

    .line 148
    .local v6, "remote":Z
    if-eqz v6, :cond_2

    .line 149
    invoke-static {v5}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$300(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7, v4}, Lcom/android/systemui/volume/MediaSessions;->updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 150
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$402(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;Z)Z

    .line 152
    .end local v2    # "controller":Landroid/media/session/MediaController;
    .end local v3    # "token":Landroid/media/session/MediaSession$Token;
    .end local v4    # "pi":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v5    # "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    .end local v6    # "remote":Z
    :cond_2
    goto :goto_0

    .line 153
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$Token;

    .line 154
    .local v2, "t":Landroid/media/session/MediaSession$Token;
    iget-object v3, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    .line 155
    .local v3, "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$100(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Landroid/media/session/MediaController;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 156
    iget-object v4, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$300(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sentRemote="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$400(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_4
    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$400(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 159
    iget-object v4, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    invoke-interface {v4, v2}, Lcom/android/systemui/volume/MediaSessions$Callbacks;->onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V

    .line 160
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$402(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;Z)Z

    .line 162
    .end local v2    # "t":Landroid/media/session/MediaSession$Token;
    .end local v3    # "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    :cond_5
    goto :goto_1

    .line 163
    :cond_6
    return-void
.end method

.method protected postUpdateSessions()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/volume/MediaSessions;->mInit:Z

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/MediaSessions$H;->sendEmptyMessage(I)Z

    .line 98
    return-void
.end method

.method public setVolume(Landroid/media/session/MediaSession$Token;I)V
    .locals 4
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "level"    # I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    .line 108
    .local v0, "r":Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    if-nez v0, :cond_0

    .line 109
    sget-object v1, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolume: No record found for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 112
    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting level to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->access$100(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Landroid/media/session/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 114
    return-void
.end method
