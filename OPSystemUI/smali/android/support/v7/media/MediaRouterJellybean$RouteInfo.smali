.class public final Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# direct methods
.method public static getName(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaybackStream(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .line 162
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v0

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .line 158
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static getSupportedTypes(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .line 146
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    return v0
.end method

.method public static getTag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .line 178
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getVolume(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .line 166
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    return v0
.end method

.method public static getVolumeHandling(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .line 174
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    return v0
.end method

.method public static getVolumeMax(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .line 170
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    return v0
.end method

.method public static requestSetVolume(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volume"    # I

    .line 186
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 187
    return-void
.end method

.method public static requestUpdateVolume(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "direction"    # I

    .line 190
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 191
    return-void
.end method

.method public static setTag(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "tag"    # Ljava/lang/Object;

    .line 182
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 183
    return-void
.end method
