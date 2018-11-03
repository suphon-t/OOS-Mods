.class public Lcom/android/systemui/util/MusicUtil;
.super Ljava/lang/Object;
.source "MusicUtil.java"


# direct methods
.method private static getMediaController(Landroid/content/Context;)Landroid/media/session/MediaController;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 109
    return-object v0

    .line 111
    :cond_0
    const-string v1, "media_session"

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 113
    .local v1, "mediaSessionManager":Landroid/media/session/MediaSessionManager;
    invoke-virtual {v1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    .line 115
    .local v4, "controller":Landroid/media/session/MediaController;
    const-string v5, "com.netease.cloudmusic"

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    return-object v4

    .line 118
    .end local v4    # "controller":Landroid/media/session/MediaController;
    :cond_1
    goto :goto_0

    .line 119
    :cond_2
    return-object v0
.end method

.method private static getMusicPlayerState(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    if-eqz p0, :cond_3

    .line 88
    invoke-static {p0}, Lcom/android/systemui/util/MusicUtil;->getMediaController(Landroid/content/Context;)Landroid/media/session/MediaController;

    move-result-object v0

    .line 89
    .local v0, "controller":Landroid/media/session/MediaController;
    if-nez v0, :cond_0

    .line 90
    const-string v1, "MusicUtil"

    const-string v2, "getMusicPlayerState, MediaController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    return v1

    .line 94
    :cond_0
    const-string v1, "com.netease.cloudmusic"

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 96
    .local v1, "state":Landroid/media/session/PlaybackState;
    if-nez v1, :cond_1

    .line 97
    const-string v3, "MusicUtil"

    const-string v4, "getMusicPlayerState(), PlaybackState is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v2

    .line 100
    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    return v2

    .line 104
    .end local v1    # "state":Landroid/media/session/PlaybackState;
    :cond_2
    return v2

    .line 85
    .end local v0    # "controller":Landroid/media/session/MediaController;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static launchMusicApp(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-void

    .line 27
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 28
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v1

    .line 31
    .local v1, "isOffhook":Z
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/MusicUtil;->getMusicPlayerState(Landroid/content/Context;)I

    move-result v2

    .line 32
    .local v2, "state":I
    const-string v3, "MusicUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchMusicApp, getMusicPlayerState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isOffhook = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    if-eqz v2, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/util/MusicUtil;->getMediaController(Landroid/content/Context;)Landroid/media/session/MediaController;

    move-result-object v3

    .line 44
    .local v3, "controller":Landroid/media/session/MediaController;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 45
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 48
    .end local v3    # "controller":Landroid/media/session/MediaController;
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/util/MusicUtil;->startMusicApp(Landroid/content/Context;)V

    goto :goto_2

    .line 36
    :cond_4
    if-nez v1, :cond_5

    .line 37
    invoke-static {p0}, Lcom/android/systemui/util/MusicUtil;->playCloudMusic(Landroid/content/Context;)V

    goto :goto_2

    .line 39
    :cond_5
    invoke-static {p0}, Lcom/android/systemui/util/MusicUtil;->startMusicApp(Landroid/content/Context;)V

    .line 41
    nop

    .line 51
    :goto_2
    return-void
.end method

.method private static playCloudMusic(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    if-nez p0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "orpheus-cortana://voice?source=oneplus&action=play&type=general&params={\'q\':\'\',\'entities\': [{\'type\':\'keyword\',\'value\':\'\u79c1\u4ebafm\'}]}"

    .line 73
    .local v1, "cmd":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    const v2, 0x7f0100be

    const v3, 0x7f0100bf

    .line 77
    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 76
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 79
    :cond_1
    const-string v2, "MusicUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playCloudMusic intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void
.end method

.method private static startMusicApp(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    if-nez p0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.netease.cloudmusic"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    const v1, 0x7f0100be

    const v2, 0x7f0100bf

    .line 61
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string v1, "MusicUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMusicApp intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void
.end method
