.class Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.super Landroid/support/v7/media/SystemMediaRouteProvider;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroid/support/v7/media/MediaRouterJellybean$Callback;
.implements Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellybeanImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;,
        Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;,
        Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    }
.end annotation


# static fields
.field private static final LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActiveScan:Z

.field protected final mCallbackObj:Ljava/lang/Object;

.field protected mCallbackRegistered:Z

.field private mGetDefaultRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

.field protected mRouteTypes:I

.field protected final mRouterObj:Ljava/lang/Object;

.field private mSelectRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

.field private final mSyncCallback:Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

.field protected final mSystemRouteRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUserRouteCategoryObj:Ljava/lang/Object;

.field protected final mUserRouteRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVolumeCallbackObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

    .line 226
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v0    # "f":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .restart local v0    # "f":Landroid/content/IntentFilter;
    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;

    .line 235
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v0    # "f":Landroid/content/IntentFilter;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "syncCallback"    # Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

    .line 263
    invoke-direct {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider;-><init>(Landroid/content/Context;)V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    .line 264
    iput-object p2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSyncCallback:Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

    .line 265
    invoke-static {p1}, Landroid/support/v7/media/MediaRouterJellybean;->getMediaRouter(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    .line 266
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->createCallbackObj()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackObj:Ljava/lang/Object;

    .line 267
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->createVolumeCallbackObj()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mVolumeCallbackObj:Ljava/lang/Object;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_user_route_category_name:I

    .line 271
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/v7/media/MediaRouterJellybean;->createRouteCategory(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteCategoryObj:Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateSystemRoutes()V

    .line 274
    return-void
.end method

.method private addSystemRouteNoPublish(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 333
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 335
    invoke-direct {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->assignRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    invoke-direct {v1, p1, v0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    invoke-virtual {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)V

    .line 338
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const/4 v2, 0x1

    return v2

    .line 341
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private assignRouteId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 348
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getDefaultRoute()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 349
    .local v0, "isDefault":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "DEFAULT_ROUTE"

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "ROUTE_%08x"

    new-array v5, v2, [Ljava/lang/Object;

    .line 350
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getRouteName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "id":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    .line 352
    return-object v3

    .line 354
    :cond_2
    const/4 v4, 0x2

    move v5, v4

    .line 355
    .local v5, "i":I
    :goto_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s_%d"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v3, v8, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "newId":Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_3

    .line 357
    return-object v6

    .line 354
    .end local v6    # "newId":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private updateSystemRoutes()V
    .locals 4

    .line 322
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateCallback()V

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean;->getRoutes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 325
    .local v2, "routeObj":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->addSystemRouteNoPublish(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 326
    .end local v2    # "routeObj":Ljava/lang/Object;
    goto :goto_0

    .line 327
    :cond_0
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 330
    :cond_1
    return-void
.end method


# virtual methods
.method protected createCallbackObj()Ljava/lang/Object;
    .locals 1

    .line 647
    invoke-static {p0}, Landroid/support/v7/media/MediaRouterJellybean;->createCallback(Landroid/support/v7/media/MediaRouterJellybean$Callback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createVolumeCallbackObj()Ljava/lang/Object;
    .locals 1

    .line 651
    invoke-static {p0}, Landroid/support/v7/media/MediaRouterJellybean;->createVolumeCallback(Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected findSystemRouteRecord(Ljava/lang/Object;)I
    .locals 3
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 545
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 546
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    iget-object v2, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 547
    return v1

    .line 545
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 554
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 555
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 556
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    iget-object v2, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    return v1

    .line 555
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected findUserRouteRecord(Landroid/support/v7/media/MediaRouter$RouteInfo;)I
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 564
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 565
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 566
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    iget-object v2, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne v2, p1, :cond_0

    .line 567
    return v1

    .line 565
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected getDefaultRoute()Ljava/lang/Object;
    .locals 2

    .line 664
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mGetDefaultRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mGetDefaultRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

    .line 667
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mGetDefaultRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;->getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRouteName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 592
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getName(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 593
    .local v0, "name":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method protected getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 574
    invoke-static {p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 575
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V
    .locals 2
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    .param p2, "builder"    # Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 598
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getSupportedTypes(Ljava/lang/Object;)I

    move-result v0

    .line 600
    .local v0, "supportedTypes":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 601
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 603
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 604
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 607
    :cond_1
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 608
    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getPlaybackType(Ljava/lang/Object;)I

    move-result v1

    .line 607
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPlaybackType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 609
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 610
    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getPlaybackStream(Ljava/lang/Object;)I

    move-result v1

    .line 609
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPlaybackStream(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 611
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 612
    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getVolume(Ljava/lang/Object;)I

    move-result v1

    .line 611
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 613
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 614
    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getVolumeMax(Ljava/lang/Object;)I

    move-result v1

    .line 613
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolumeMax(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 615
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 616
    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getVolumeHandling(Ljava/lang/Object;)I

    move-result v1

    .line 615
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolumeHandling(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 617
    return-void
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 278
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 280
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 281
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    new-instance v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;

    iget-object v3, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-direct {v2, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 283
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 8
    .param p1, "request"    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "newRouteTypes":I
    const/4 v1, 0x0

    .line 290
    .local v1, "newActiveScan":Z
    if-eqz p1, :cond_3

    .line 291
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v2

    .line 292
    .local v2, "selector":Landroid/support/v7/media/MediaRouteSelector;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v3

    .line 293
    .local v3, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 294
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 295
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 296
    .local v6, "category":Ljava/lang/String;
    const-string v7, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 297
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_0
    const-string v7, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 299
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 301
    :cond_1
    const/high16 v7, 0x800000

    or-int/2addr v0, v7

    .line 294
    .end local v6    # "category":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v1

    .line 307
    .end local v2    # "selector":Landroid/support/v7/media/MediaRouteSelector;
    .end local v3    # "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "count":I
    :cond_3
    iget v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    if-ne v2, v0, :cond_4

    iget-boolean v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mActiveScan:Z

    if-eq v2, v1, :cond_5

    .line 308
    :cond_4
    iput v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    .line 309
    iput-boolean v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mActiveScan:Z

    .line 310
    invoke-direct {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateSystemRoutes()V

    .line 312
    :cond_5
    return-void
.end method

.method public onRouteAdded(Ljava/lang/Object;)V
    .locals 1
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 316
    invoke-direct {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->addSystemRouteNoPublish(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 319
    :cond_0
    return-void
.end method

.method public onRouteChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 375
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 377
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 378
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 379
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    invoke-virtual {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)V

    .line 380
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 383
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_0
    return-void
.end method

.method public onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "groupObj"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .line 435
    return-void
.end method

.method public onRouteRemoved(Ljava/lang/Object;)V
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 364
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 366
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 367
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 368
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 371
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public onRouteSelected(ILjava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "routeObj"    # Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    .line 413
    .local v0, "userRouteRecord":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    if-eqz v0, :cond_1

    .line 414
    iget-object v1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v1

    .line 419
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 420
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 421
    .local v2, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSyncCallback:Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

    iget-object v4, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;->onSystemRouteSelectedByDescriptorId(Ljava/lang/String;)V

    .line 424
    .end local v1    # "index":I
    .end local v2    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_2
    :goto_0
    return-void
.end method

.method public onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "groupObj"    # Ljava/lang/Object;

    .line 440
    return-void
.end method

.method public onRouteUnselected(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "routeObj"    # Ljava/lang/Object;

    .line 430
    return-void
.end method

.method public onRouteVolumeChanged(Ljava/lang/Object;)V
    .locals 5
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 387
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 389
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 390
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 391
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    invoke-static {p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getVolume(Ljava/lang/Object;)I

    move-result v2

    .line 392
    .local v2, "newVolume":I
    iget-object v3, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolume()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 393
    new-instance v3, Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    iget-object v4, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-direct {v3, v4}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;-><init>(Landroid/support/v7/media/MediaRouteDescriptor;)V

    .line 395
    invoke-virtual {v3, v2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 401
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    .end local v2    # "newVolume":I
    :cond_0
    return-void
.end method

.method public onSyncRouteAdded(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 5
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 460
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteCategoryObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean;->createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 463
    .local v0, "routeObj":Ljava/lang/Object;
    new-instance v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    invoke-direct {v1, p1, v0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;Ljava/lang/Object;)V

    .line 464
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->setTag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 465
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mVolumeCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    invoke-virtual {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateUserRouteProperties(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V

    .line 467
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    invoke-static {v2, v0}, Landroid/support/v7/media/MediaRouterJellybean;->addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    .end local v0    # "routeObj":Ljava/lang/Object;
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 475
    .restart local v0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v1

    .line 476
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 477
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 478
    .local v2, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    iget-object v3, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    .line 483
    .end local v0    # "routeObj":Ljava/lang/Object;
    .end local v1    # "index":I
    .end local v2    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_1
    :goto_0
    return-void
.end method

.method public onSyncRouteChanged(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 500
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findUserRouteRecord(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 502
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 503
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 504
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    invoke-virtual {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateUserRouteProperties(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V

    .line 507
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    :cond_0
    return-void
.end method

.method public onSyncRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 487
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findUserRouteRecord(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 489
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 490
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 491
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    iget-object v2, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->setTag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    iget-object v2, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object v3, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouterJellybean;->removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    :cond_0
    return-void
.end method

.method public onSyncRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 511
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 518
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findUserRouteRecord(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 519
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 520
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 521
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    iget-object v2, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->selectRoute(Ljava/lang/Object;)V

    .line 523
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    :cond_1
    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v0

    .line 525
    .restart local v0    # "index":I
    if-ltz v0, :cond_3

    .line 526
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 527
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    iget-object v2, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->selectRoute(Ljava/lang/Object;)V

    .line 530
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_3
    :goto_0
    return-void
.end method

.method public onVolumeSetRequest(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "volume"    # I

    .line 444
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    .line 445
    .local v0, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onVolumeUpdateRequest(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "direction"    # I

    .line 452
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    .line 453
    .local v0, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    if-eqz v0, :cond_0

    .line 454
    iget-object v1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 456
    :cond_0
    return-void
.end method

.method protected publishRoutes()V
    .locals 4

    .line 533
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    .line 535
    .local v0, "builder":Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 536
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 537
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    iget-object v3, v3, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 541
    return-void
.end method

.method protected selectRoute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "routeObj"    # Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSelectRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSelectRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

    .line 658
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSelectRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    const v2, 0x800003

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 660
    return-void
.end method

.method protected updateCallback()V
    .locals 3

    .line 635
    iget-boolean v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    .line 637
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean;->removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 640
    :cond_0
    iget v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    if-eqz v0, :cond_1

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    .line 642
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/support/v7/media/MediaRouterJellybean;->addCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 644
    :cond_1
    return-void
.end method

.method protected updateSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)V
    .locals 3
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 581
    new-instance v0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 582
    invoke-virtual {p0, v2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getRouteName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .local v0, "builder":Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V

    .line 584
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 585
    return-void
.end method

.method protected updateUserRouteProperties(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 620
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 621
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 622
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 623
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    .line 622
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setPlaybackType(Ljava/lang/Object;I)V

    .line 624
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 625
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    .line 624
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setPlaybackStream(Ljava/lang/Object;I)V

    .line 626
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 627
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    .line 626
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolume(Ljava/lang/Object;I)V

    .line 628
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 629
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    .line 628
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeMax(Ljava/lang/Object;I)V

    .line 630
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 631
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    .line 630
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeHandling(Ljava/lang/Object;I)V

    .line 632
    return-void
.end method
