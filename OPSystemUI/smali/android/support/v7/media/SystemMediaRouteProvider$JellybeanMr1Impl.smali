.class Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;
.super Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr1Impl"
.end annotation


# instance fields
.field private mActiveScanWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

.field private mIsConnectingWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "syncCallback"    # Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

    .line 740
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;-><init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V

    .line 741
    return-void
.end method


# virtual methods
.method protected createCallbackObj()Ljava/lang/Object;
    .locals 1

    .line 796
    invoke-static {p0}, Landroid/support/v7/media/MediaRouterJellybeanMr1;->createCallback(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isConnecting(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z
    .locals 2
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 800
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    .line 803
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;->isConnecting(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V
    .locals 2
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    .param p2, "builder"    # Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 766
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V

    .line 768
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setEnabled(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 772
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->isConnecting(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setConnecting(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 776
    :cond_1
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 777
    invoke-static {v0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;->getPresentationDisplay(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object v0

    .line 778
    .local v0, "presentationDisplay":Landroid/view/Display;
    if-eqz v0, :cond_2

    .line 779
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPresentationDisplayId(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 781
    :cond_2
    return-void
.end method

.method public onRoutePresentationDisplayChanged(Ljava/lang/Object;)V
    .locals 6
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 745
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 746
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 747
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 748
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    nop

    .line 749
    invoke-static {p1}, Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;->getPresentationDisplay(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object v2

    .line 750
    .local v2, "newPresentationDisplay":Landroid/view/Display;
    if-eqz v2, :cond_0

    .line 751
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 752
    .local v3, "newPresentationDisplayId":I
    :goto_0
    iget-object v4, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 753
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 754
    new-instance v4, Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    iget-object v5, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-direct {v4, v5}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;-><init>(Landroid/support/v7/media/MediaRouteDescriptor;)V

    .line 756
    invoke-virtual {v4, v3}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPresentationDisplayId(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v4

    .line 757
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v4

    iput-object v4, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 758
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->publishRoutes()V

    .line 761
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    .end local v2    # "newPresentationDisplay":Landroid/view/Display;
    .end local v3    # "newPresentationDisplayId":I
    :cond_1
    return-void
.end method

.method protected updateCallback()V
    .locals 3

    .line 785
    invoke-super {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateCallback()V

    .line 787
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    .line 789
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    .line 791
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    iget-boolean v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScan:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mRouteTypes:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->setActiveScanRouteTypes(I)V

    .line 792
    return-void
.end method
