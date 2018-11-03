.class public final Landroid/support/v7/media/MediaRouteDescriptor$Builder;
.super Ljava/lang/Object;
.source "MediaRouteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mControlFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMemberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouteDescriptor;)V
    .locals 2
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteDescriptor;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    if-eqz p1, :cond_1

    .line 386
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/support/v7/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 388
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->ensureControlFilters()V

    .line 389
    iget-object v0, p1, Landroid/support/v7/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v7/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    .line 392
    :cond_0
    return-void

    .line 383
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 373
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 374
    invoke-virtual {p0, p2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setName(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 375
    return-void
.end method


# virtual methods
.method public addControlFilter(Landroid/content/IntentFilter;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .line 555
    if-eqz p1, :cond_2

    .line 559
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    .line 562
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_1
    return-object p0

    .line 556
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/IntentFilter;",
            ">;)",
            "Landroid/support/v7/media/MediaRouteDescriptor$Builder;"
        }
    .end annotation

    .line 572
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/IntentFilter;>;"
    if-eqz p1, :cond_1

    .line 576
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 578
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilter(Landroid/content/IntentFilter;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 579
    .end local v1    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 581
    :cond_0
    return-object p0

    .line 573
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/support/v7/media/MediaRouteDescriptor;
    .locals 3

    .line 688
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "controlFilters"

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 691
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "groupMemberIds"

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 694
    :cond_1
    new-instance v0, Landroid/support/v7/media/MediaRouteDescriptor;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v0
.end method

.method public setConnecting(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "connecting"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "connecting"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .line 472
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-object p0
.end method

.method public setDeviceType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "deviceType"    # I

    .line 612
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "enabled"    # Z

    .line 506
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 403
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-object p0
.end method

.method public setPlaybackStream(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "playbackStream"    # I

    .line 600
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackStream"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    return-object p0
.end method

.method public setPlaybackType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "playbackType"    # I

    .line 592
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    return-object p0
.end method

.method public setPresentationDisplayId(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "presentationDisplayId"    # I

    .line 648
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "presentationDisplayId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 649
    return-object p0
.end method

.method public setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "volume"    # I

    .line 620
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 621
    return-object p0
.end method

.method public setVolumeHandling(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "volumeHandling"    # I

    .line 640
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volumeHandling"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    return-object p0
.end method

.method public setVolumeMax(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .param p1, "volumeMax"    # I

    .line 628
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volumeMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    return-object p0
.end method
