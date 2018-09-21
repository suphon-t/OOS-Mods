.class public final Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SystemRouteController"
.end annotation


# instance fields
.field private final mRouteObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 714
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    .line 715
    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    .line 716
    return-void
.end method


# virtual methods
.method public onSetVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 720
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->requestSetVolume(Ljava/lang/Object;I)V

    .line 721
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 1
    .param p1, "delta"    # I

    .line 725
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->requestUpdateVolume(Ljava/lang/Object;I)V

    .line 726
    return-void
.end method
