.class final Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
.super Landroid/media/session/MediaController$Callback;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/MediaSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaControllerRecord"
.end annotation


# instance fields
.field private final controller:Landroid/media/session/MediaController;

.field private name:Ljava/lang/String;

.field private sentRemote:Z

.field final synthetic this$0:Lcom/android/systemui/volume/MediaSessions;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/MediaController;)V
    .locals 0
    .param p2, "controller"    # Landroid/media/session/MediaController;

    .line 267
    iput-object p1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->this$0:Lcom/android/systemui/volume/MediaSessions;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    .line 269
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/MediaController;Lcom/android/systemui/volume/MediaSessions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/MediaSessions;
    .param p2, "x1"    # Landroid/media/session/MediaController;
    .param p3, "x2"    # Lcom/android/systemui/volume/MediaSessions$1;

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;-><init>(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Landroid/media/session/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    .line 261
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    .line 261
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    .param p1, "x1"    # Ljava/lang/String;

    .line 261
    iput-object p1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    .param p1, "x1"    # Z

    .line 261
    iput-boolean p1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    return p1
.end method

.method private cb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .line 277
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/MediaSessions;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioInfoChanged"

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/Util;->playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sentRemote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/MediaSessions;->access$600(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v0

    .line 280
    .local v0, "remote":Z
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->this$0:Lcom/android/systemui/volume/MediaSessions;

    invoke-static {v1}, Lcom/android/systemui/volume/MediaSessions;->access$700(Lcom/android/systemui/volume/MediaSessions;)Lcom/android/systemui/volume/MediaSessions$Callbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/volume/MediaSessions$Callbacks;->onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    goto :goto_0

    .line 283
    :cond_1
    if-eqz v0, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->this$0:Lcom/android/systemui/volume/MediaSessions;

    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/android/systemui/volume/MediaSessions;->access$800(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 287
    :cond_2
    :goto_0
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 291
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/MediaSessions;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtrasChanged"

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 296
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/MediaSessions;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMetadataChanged"

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/Util;->mediaMetadataToString(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 301
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/MediaSessions;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged"

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/Util;->playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/MediaSessions;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueChanged"

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 311
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/MediaSessions;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueTitleChanged"

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 316
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/MediaSessions;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSessionDestroyed"

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 321
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/MediaSessions;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionEvent"

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    return-void
.end method
