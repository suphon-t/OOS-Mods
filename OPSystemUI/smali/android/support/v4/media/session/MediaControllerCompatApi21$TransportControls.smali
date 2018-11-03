.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method public static pause(Ljava/lang/Object;)V
    .locals 1
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .line 143
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 144
    return-void
.end method

.method public static play(Ljava/lang/Object;)V
    .locals 1
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .line 139
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 140
    return-void
.end method

.method public static stop(Ljava/lang/Object;)V
    .locals 1
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .line 147
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    .line 148
    return-void
.end method
