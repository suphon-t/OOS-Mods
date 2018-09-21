.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsBase"
.end annotation


# instance fields
.field private mBinder:Landroid/support/v4/media/session/IMediaSession;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/IMediaSession;)V
    .locals 0
    .param p1, "binder"    # Landroid/support/v4/media/session/IMediaSession;

    .line 1729
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    .line 1730
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 1731
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 3

    .line 1817
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaSession;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    goto :goto_0

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 1772
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaSession;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    goto :goto_0

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in play."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1776
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1826
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaSession;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    goto :goto_0

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in stop."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1830
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
