.class final Landroid/support/v7/media/MediaRouterJellybeanMr2;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouterJellybeanMr2$UserRouteInfo;,
        Landroid/support/v7/media/MediaRouterJellybeanMr2$RouteInfo;
    }
.end annotation


# direct methods
.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 2
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "types"    # I
    .param p2, "callbackObj"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter;

    move-object v1, p2

    check-cast v1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, p1, v1, p3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 30
    return-void
.end method

.method public static getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "routerObj"    # Ljava/lang/Object;

    .line 24
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method
