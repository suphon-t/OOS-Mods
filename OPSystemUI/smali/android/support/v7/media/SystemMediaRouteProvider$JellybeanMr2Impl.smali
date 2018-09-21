.class Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;
.super Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr2Impl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "syncCallback"    # Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

    .line 813
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;-><init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V

    .line 814
    return-void
.end method


# virtual methods
.method protected getDefaultRoute()Ljava/lang/Object;
    .locals 1

    .line 836
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mRouterObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouterJellybeanMr2;->getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isConnecting(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z
    .locals 1
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 861
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouterJellybeanMr2$RouteInfo;->isConnecting(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V
    .locals 2
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    .param p2, "builder"    # Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 819
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V

    .line 821
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 822
    invoke-static {v0}, Landroid/support/v7/media/MediaRouterJellybeanMr2$RouteInfo;->getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 823
    .local v0, "description":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 824
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setDescription(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 826
    :cond_0
    return-void
.end method

.method protected selectRoute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 830
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mRouterObj:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1, p1}, Landroid/support/v7/media/MediaRouterJellybean;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 832
    return-void
.end method

.method protected updateCallback()V
    .locals 5

    .line 849
    iget-boolean v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mRouterObj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean;->removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 853
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mCallbackRegistered:Z

    .line 854
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mRouterObj:Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mRouteTypes:I

    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mCallbackObj:Ljava/lang/Object;

    const/4 v3, 0x2

    iget-boolean v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->mActiveScan:Z

    or-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouterJellybeanMr2;->addCallback(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 857
    return-void
.end method

.method protected updateUserRouteProperties(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 841
    invoke-super {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->updateUserRouteProperties(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V

    .line 843
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 844
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybeanMr2$UserRouteInfo;->setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 845
    return-void
.end method
