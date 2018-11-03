.class final Landroid/support/v7/media/MediaRouterJellybeanMr1;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;,
        Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;,
        Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;,
        Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;,
        Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;
    }
.end annotation


# direct methods
.method public static createCallback(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;

    .line 37
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;-><init>(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)V

    return-object v0
.end method
