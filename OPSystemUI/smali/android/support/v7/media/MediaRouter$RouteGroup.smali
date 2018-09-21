.class public Landroid/support/v7/media/MediaRouter$RouteGroup;
.super Landroid/support/v7/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteGroup"
.end annotation


# instance fields
.field private mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "descriptorId"    # Ljava/lang/String;
    .param p3, "uniqueId"    # Ljava/lang/String;

    .line 1614
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouter$RouteInfo;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    .line 1615
    return-void
.end method


# virtual methods
.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 1640
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    return-object v0
.end method

.method maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I
    .locals 10
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteDescriptor;

    .line 1658
    const/4 v0, 0x0

    .line 1659
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_4

    .line 1660
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 1661
    if-eqz p1, :cond_4

    .line 1662
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v1

    .line 1663
    .local v1, "groupMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    .local v4, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    if-nez v1, :cond_0

    .line 1665
    const-string v5, "MediaRouter"

    const-string v6, "groupMemberIds shouldn\'t be null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const/4 v0, 0x1

    goto :goto_2

    .line 1668
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    move v0, v5

    .line 1669
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1670
    .local v6, "groupMemberId":Ljava/lang/String;
    sget-object v7, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getProvider()Landroid/support/v7/media/MediaRouter$ProviderInfo;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->access$000(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1671
    .local v7, "uniqueId":Ljava/lang/String;
    sget-object v8, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v8, v7}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getRoute(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v8

    .line 1672
    .local v8, "groupMember":Landroid/support/v7/media/MediaRouter$RouteInfo;
    if-eqz v8, :cond_2

    .line 1673
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    if-nez v0, :cond_2

    iget-object v9, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1675
    const/4 v0, 0x1

    .line 1678
    .end local v6    # "groupMemberId":Ljava/lang/String;
    .end local v7    # "uniqueId":Ljava/lang/String;
    .end local v8    # "groupMember":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_2
    goto :goto_1

    .line 1680
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 1681
    iput-object v4, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    .line 1685
    .end local v1    # "groupMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    :cond_4
    if-eqz v0, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-super {p0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v1

    or-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1647
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1648
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1649
    if-lez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1648
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1652
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
