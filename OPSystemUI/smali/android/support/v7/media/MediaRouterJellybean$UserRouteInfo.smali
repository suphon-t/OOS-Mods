.class public final Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRouteInfo"
.end annotation


# direct methods
.method public static setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 224
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public static setPlaybackStream(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "stream"    # I

    .line 240
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 241
    return-void
.end method

.method public static setPlaybackType(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .line 236
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 237
    return-void
.end method

.method public static setVolume(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volume"    # I

    .line 244
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 245
    return-void
.end method

.method public static setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeCallbackObj"    # Ljava/lang/Object;

    .line 256
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    move-object v1, p1

    check-cast v1, Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 258
    return-void
.end method

.method public static setVolumeHandling(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeHandling"    # I

    .line 252
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 253
    return-void
.end method

.method public static setVolumeMax(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeMax"    # I

    .line 248
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 249
    return-void
.end method
