.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;
.implements Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalMediaRouter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;
    }
.end annotation


# instance fields
.field final mApplicationContext:Landroid/content/Context;

.field private mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field final mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

.field private mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

.field private final mDisplayManager:Landroid/support/v4/hardware/display/DisplayManagerCompat;

.field private final mLowRam:Z

.field private mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

.field final mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

.field private final mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

.field private final mRemoteControlClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v7/media/MediaRouteProvider$RouteController;",
            ">;"
        }
    .end annotation
.end field

.field final mRouters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/media/MediaRouter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

.field private mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

.field final mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

.field private final mUniqueIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 2008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 1969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 1970
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    .line 1971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 1972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    .line 1974
    new-instance v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-direct {v0}, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    .line 1976
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    .line 1977
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 1989
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 1994
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .line 2009
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2010
    invoke-static {p1}, Landroid/support/v4/hardware/display/DisplayManagerCompat;->getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDisplayManager:Landroid/support/v4/hardware/display/DisplayManagerCompat;

    .line 2011
    const-string v0, "activity"

    .line 2012
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2011
    invoke-static {v0}, Landroid/support/v4/app/ActivityManagerCompat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    .line 2018
    invoke-static {p1, p0}, Landroid/support/v7/media/SystemMediaRouteProvider;->obtain(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    .line 2019
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
    .param p1, "x1"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .line 1964
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
    .param p1, "x1"    # Z

    .line 1964
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    return-void
.end method

.method private assignRouteUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "routeDescriptorId"    # Ljava/lang/String;

    .line 2464
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2465
    .local v0, "componentName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2466
    .local v1, "uniqueId":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 2467
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v3, Landroid/support/v4/util/Pair;

    invoke-direct {v3, v0, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    return-object v1

    .line 2470
    :cond_0
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Either "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isn\'t unique in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    const/4 v2, 0x2

    move v3, v2

    .line 2473
    .local v3, "i":I
    :goto_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s_%d"

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2474
    .local v4, "newUniqueId":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 2475
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v5, Landroid/support/v4/util/Pair;

    invoke-direct {v5, v0, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2476
    return-object v4

    .line 2472
    .end local v4    # "newUniqueId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I
    .locals 3
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .line 2296
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2297
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2298
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 2299
    return v1

    .line 2297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2302
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findRouteByUniqueId(Ljava/lang/String;)I
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 2482
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2483
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2484
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$300(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2485
    return v1

    .line 2483
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2488
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "routeDescriptorId"    # Ljava/lang/String;

    .line 2492
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2493
    .local v0, "componentName":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v2, Landroid/support/v4/util/Pair;

    invoke-direct {v2, v0, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private isSystemDefaultRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2595
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    if-ne v0, v1, :cond_0

    .line 2596
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT_ROUTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemLiveAudioOnlyRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2589
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 2590
    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 2591
    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 6
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "unselectReason"    # I

    .line 2602
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2603
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2604
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2606
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2607
    aget-object v3, v0, v2

    .line 2608
    .local v3, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    .line 2609
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 2611
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  "

    .line 2613
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2606
    .end local v3    # "caller":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2615
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    if-nez v2, :cond_2

    .line 2616
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedRouteInternal is called while sGlobal is null: pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2617
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2616
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2619
    :cond_2
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default route is selected while a BT route is available: pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2620
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2619
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    .end local v0    # "callStack":[Ljava/lang/StackTraceElement;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_b

    .line 2625
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_7

    .line 2626
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2627
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route unselected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_4
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x107

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    .line 2632
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_5

    .line 2633
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2634
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2635
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2637
    :cond_5
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2638
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2639
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    invoke-virtual {v1, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2640
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2641
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    goto :goto_2

    .line 2642
    :cond_6
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2646
    :cond_7
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2647
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    .line 2648
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    .line 2647
    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2649
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_8

    .line 2650
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2652
    :cond_8
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 2653
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_9
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x106

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2657
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_a

    .line 2658
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteGroup;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 2659
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2660
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2661
    .local v2, "r":Landroid/support/v7/media/MediaRouter$RouteInfo;
    nop

    .line 2662
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v3

    .line 2663
    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2662
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v3

    .line 2664
    .local v3, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2665
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    .end local v2    # "r":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v3    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    goto :goto_3

    .line 2669
    .end local v0    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2671
    :cond_b
    return-void
.end method

.method private updatePlaybackInfoFromSelectedRoute()V
    .locals 5

    .line 2757
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_5

    .line 2758
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    .line 2759
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    .line 2760
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    .line 2761
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    .line 2762
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    .line 2764
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2765
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2766
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2767
    .local v2, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->updatePlaybackInfo()V

    .line 2765
    .end local v2    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2769
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v1, :cond_4

    .line 2770
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2771
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getBluetoothRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 2775
    :cond_1
    const/4 v1, 0x0

    .line 2777
    .local v1, "controlType":I
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v2, v2, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2779
    const/4 v1, 0x2

    .line 2781
    :cond_2
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v3, v3, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v4, v4, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->configureVolume(III)V

    .end local v0    # "count":I
    .end local v1    # "controlType":I
    goto :goto_2

    .line 2773
    .restart local v0    # "count":I
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2785
    .end local v0    # "count":I
    :cond_4
    :goto_2
    goto :goto_3

    .line 2786
    :cond_5
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_6

    .line 2787
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2790
    :cond_6
    :goto_3
    return-void
.end method

.method private updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 20
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "providerDescriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2307
    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p2}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2310
    const/4 v3, 0x0

    .line 2311
    .local v3, "targetIndex":I
    const/4 v4, 0x0

    .line 2312
    .local v4, "selectedRouteDescriptorChanged":Z
    if-eqz v2, :cond_10

    .line 2313
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2314
    nop

    .line 2315
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v6

    .line 2316
    .local v6, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 2319
    .local v7, "routeCount":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2320
    .local v8, "addedGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    .local v9, "updatedGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;>;"
    move v11, v4

    move v4, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v4, "targetIndex":I
    .local v11, "selectedRouteDescriptorChanged":Z
    :goto_0
    if-ge v3, v7, :cond_a

    .line 2323
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/media/MediaRouteDescriptor;

    .line 2324
    .local v13, "routeDescriptor":Landroid/support/v7/media/MediaRouteDescriptor;
    invoke-virtual {v13}, Landroid/support/v7/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v14

    .line 2325
    .local v14, "id":Ljava/lang/String;
    invoke-virtual {v1, v14}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v15

    .line 2326
    .local v15, "sourceIndex":I
    invoke-virtual {v13}, Landroid/support/v7/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    :goto_1
    move/from16 v17, v16

    .line 2327
    .local v17, "isGroup":Z
    if-gez v15, :cond_4

    .line 2329
    invoke-direct {v0, v1, v14}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->assignRouteUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2330
    .local v10, "uniqueId":Ljava/lang/String;
    move/from16 v5, v17

    if-eqz v5, :cond_1

    .end local v17    # "isGroup":Z
    .local v5, "isGroup":Z
    new-instance v12, Landroid/support/v7/media/MediaRouter$RouteGroup;

    invoke-direct {v12, v1, v14, v10}, Landroid/support/v7/media/MediaRouter$RouteGroup;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v12, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {v12, v1, v14, v10}, Landroid/support/v7/media/MediaRouter$RouteInfo;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    .local v12, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :goto_2
    move-object/from16 v18, v6

    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v6

    .end local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .local v18, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    add-int/lit8 v16, v4, 0x1

    .local v16, "targetIndex":I
    invoke-interface {v6, v4, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2333
    .end local v4    # "targetIndex":I
    iget-object v4, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2335
    if-eqz v5, :cond_2

    .line 2336
    new-instance v4, Landroid/support/v4/util/Pair;

    invoke-direct {v4, v12, v13}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2346
    move/from16 v19, v7

    goto :goto_4

    .line 2338
    :cond_2
    invoke-virtual {v12, v13}, Landroid/support/v7/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    .line 2340
    sget-boolean v4, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 2341
    const-string v4, "MediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v7

    const-string v7, "Route added: "

    .end local v7    # "routeCount":I
    .local v19, "routeCount":I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2343
    .end local v19    # "routeCount":I
    .restart local v7    # "routeCount":I
    :cond_3
    move/from16 v19, v7

    .end local v7    # "routeCount":I
    .restart local v19    # "routeCount":I
    :goto_3
    iget-object v4, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v6, 0x101

    invoke-virtual {v4, v6, v12}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2346
    .end local v10    # "uniqueId":Ljava/lang/String;
    .end local v12    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :goto_4
    nop

    .line 2322
    move/from16 v4, v16

    goto/16 :goto_7

    .line 2346
    .end local v5    # "isGroup":Z
    .end local v16    # "targetIndex":I
    .end local v18    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v19    # "routeCount":I
    .restart local v4    # "targetIndex":I
    .restart local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .restart local v7    # "routeCount":I
    .restart local v17    # "isGroup":Z
    :cond_4
    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v5, v17

    .end local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v7    # "routeCount":I
    .end local v17    # "isGroup":Z
    .restart local v5    # "isGroup":Z
    .restart local v18    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .restart local v19    # "routeCount":I
    if-ge v15, v4, :cond_5

    .line 2347
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2350
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2353
    .local v6, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    instance-of v7, v6, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eq v7, v5, :cond_7

    .line 2354
    if-eqz v5, :cond_6

    new-instance v7, Landroid/support/v7/media/MediaRouter$RouteGroup;

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v1, v14, v10}, Landroid/support/v7/media/MediaRouter$RouteGroup;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance v7, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2355
    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v1, v14, v10}, Landroid/support/v7/media/MediaRouter$RouteInfo;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object v6, v7

    .line 2356
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v15, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2359
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v7

    add-int/lit8 v10, v4, 0x1

    .local v10, "targetIndex":I
    invoke-static {v7, v15, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 2362
    .end local v4    # "targetIndex":I
    instance-of v4, v6, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v4, :cond_8

    .line 2363
    new-instance v4, Landroid/support/v4/util/Pair;

    invoke-direct {v4, v6, v13}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2366
    :cond_8
    invoke-direct {v0, v6, v13}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 2368
    iget-object v4, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne v6, v4, :cond_9

    .line 2369
    const/4 v4, 0x1

    .line 2322
    .end local v5    # "isGroup":Z
    .end local v6    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v11    # "selectedRouteDescriptorChanged":Z
    .end local v13    # "routeDescriptor":Landroid/support/v7/media/MediaRouteDescriptor;
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "sourceIndex":I
    .local v4, "selectedRouteDescriptorChanged":Z
    move v11, v4

    .end local v10    # "targetIndex":I
    .local v4, "targetIndex":I
    .restart local v11    # "selectedRouteDescriptorChanged":Z
    :cond_9
    :goto_6
    move v4, v10

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v18

    move/from16 v7, v19

    goto/16 :goto_0

    .line 2376
    .end local v3    # "i":I
    .end local v18    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v19    # "routeCount":I
    .local v6, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .restart local v7    # "routeCount":I
    :cond_a
    move-object/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v7    # "routeCount":I
    .restart local v18    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .restart local v19    # "routeCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/util/Pair;

    .line 2377
    .local v5, "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;"
    iget-object v6, v5, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2378
    .local v6, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v7, v5, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v6, v7}, Landroid/support/v7/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    .line 2379
    sget-boolean v7, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 2380
    const-string v7, "MediaRouter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Route added: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_b
    iget-object v7, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v10, 0x101

    invoke-virtual {v7, v10, v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2383
    .end local v5    # "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v6    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    goto :goto_8

    .line 2384
    :cond_c
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/util/Pair;

    .line 2385
    .restart local v5    # "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;"
    iget-object v6, v5, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2386
    .restart local v6    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v7, v5, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-direct {v0, v6, v7}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v7

    if-eqz v7, :cond_d

    .line 2387
    iget-object v7, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne v6, v7, :cond_d

    .line 2388
    const/4 v11, 0x1

    .line 2391
    .end local v5    # "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v6    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_d
    goto :goto_9

    .line 2392
    .end local v8    # "addedGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;>;"
    .end local v9    # "updatedGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;>;"
    .end local v18    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v19    # "routeCount":I
    :cond_e
    nop

    .line 2398
    move v3, v4

    goto :goto_a

    .line 2393
    .end local v11    # "selectedRouteDescriptorChanged":Z
    .local v3, "targetIndex":I
    .local v4, "selectedRouteDescriptorChanged":Z
    :cond_f
    const-string v5, "MediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring invalid provider descriptor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_10
    move v11, v4

    .end local v4    # "selectedRouteDescriptorChanged":Z
    .restart local v11    # "selectedRouteDescriptorChanged":Z
    :goto_a
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_b
    if-lt v4, v3, :cond_11

    .line 2400
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2401
    .local v5, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    .line 2403
    iget-object v6, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2398
    .end local v5    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 2407
    .end local v4    # "i":I
    :cond_11
    invoke-direct {v0, v11}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 2414
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .restart local v4    # "i":I
    :goto_c
    if-lt v4, v3, :cond_13

    .line 2415
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2416
    .restart local v5    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    sget-boolean v6, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v6, :cond_12

    .line 2417
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Route removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :cond_12
    iget-object v6, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v7, 0x102

    invoke-virtual {v6, v7, v5}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2414
    .end local v5    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 2423
    .end local v4    # "i":I
    :cond_13
    sget-boolean v4, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v4, :cond_14

    .line 2424
    const-string v4, "MediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    :cond_14
    iget-object v4, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v5, 0x203

    invoke-virtual {v4, v5, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2428
    .end local v3    # "targetIndex":I
    .end local v11    # "selectedRouteDescriptorChanged":Z
    :cond_15
    return-void
.end method

.method private updateRouteDescriptorAndNotify(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;)I
    .locals 4
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "routeDescriptor"    # Landroid/support/v7/media/MediaRouteDescriptor;

    .line 2432
    invoke-virtual {p1, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v0

    .line 2433
    .local v0, "changes":I
    if-eqz v0, :cond_5

    .line 2434
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 2435
    sget-boolean v1, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2436
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x103

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2441
    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 2442
    sget-boolean v1, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2443
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route volume changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_2
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x104

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2448
    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_5

    .line 2449
    sget-boolean v1, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 2450
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route presentation display changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_4
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x105

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2457
    :cond_5
    return v0
.end method

.method private updateSelectedRouteIfNeeded(Z)V
    .locals 8
    .param p1, "selectedRouteDescriptorChanged"    # Z

    .line 2498
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2499
    const-string v0, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the default route because it is no longer selectable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2503
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2504
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2505
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-direct {p0, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isSystemDefaultRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2506
    iput-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2507
    const-string v0, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found default route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    goto :goto_1

    .line 2510
    .end local v2    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_1
    goto :goto_0

    .line 2514
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2515
    const-string v0, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the bluetooth route because it is no longer selectable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2519
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2520
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2521
    .local v1, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-direct {p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2522
    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2523
    const-string v0, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found bluetooth route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    goto :goto_3

    .line 2526
    .end local v1    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_4
    goto :goto_2

    .line 2530
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_7

    .line 2535
    :cond_6
    if-eqz p1, :cond_d

    .line 2538
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_b

    .line 2539
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteGroup;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 2541
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2542
    .local v1, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2543
    .local v3, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2544
    .end local v3    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    goto :goto_4

    .line 2546
    :cond_7
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 2547
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2548
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v7/media/MediaRouteProvider$RouteController;>;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2549
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2550
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v7/media/MediaRouteProvider$RouteController;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2551
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2552
    .local v4, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 2553
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2554
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2556
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v7/media/MediaRouteProvider$RouteController;>;"
    .end local v4    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :cond_8
    goto :goto_5

    .line 2558
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2559
    .local v4, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-static {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2560
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v5

    .line 2562
    invoke-static {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v7}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v7

    .line 2561
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v5

    .line 2563
    .local v5, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2564
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-static {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2566
    .end local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v5    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :cond_a
    goto :goto_6

    .line 2569
    .end local v0    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    .end local v1    # "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v7/media/MediaRouteProvider$RouteController;>;>;"
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    goto :goto_8

    .line 2531
    :cond_c
    :goto_7
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unselecting the current route because it is no longer selectable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2571
    :cond_d
    :goto_8
    return-void
.end method


# virtual methods
.method public addProvider(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 5
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .line 2247
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2248
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 2250
    new-instance v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-direct {v1, p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;-><init>(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 2251
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    sget-boolean v2, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2253
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x201

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2257
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2259
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 2261
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 2263
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_1
    return-void
.end method

.method chooseFallbackRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 3

    .line 2578
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2579
    .local v1, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_0

    .line 2580
    invoke-direct {p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2581
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2582
    return-object v1

    .line 2584
    .end local v1    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_0
    goto :goto_0

    .line 2585
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method getBluetoothRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .line 2124
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .line 2113
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0

    .line 2117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 2737
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 2738
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    .line 2739
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 2740
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    .line 2742
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoute(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 2096
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2097
    .local v1, "info":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$300(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2098
    return-object v1

    .line 2100
    .end local v1    # "info":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_0
    goto :goto_0

    .line 2101
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRouter(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2033
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2034
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter;

    .line 2035
    .local v1, "router":Landroid/support/v7/media/MediaRouter;
    if-nez v1, :cond_1

    .line 2036
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2037
    :cond_1
    iget-object v2, v1, Landroid/support/v7/media/MediaRouter;->mContext:Landroid/content/Context;

    if-ne v2, p1, :cond_0

    .line 2038
    return-object v1

    .line 2041
    .end local v0    # "i":I
    .end local v1    # "router":Landroid/support/v7/media/MediaRouter;
    :cond_2
    new-instance v0, Landroid/support/v7/media/MediaRouter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/media/MediaRouter;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter$1;)V

    .line 2042
    .local v0, "router":Landroid/support/v7/media/MediaRouter;
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    return-object v0
.end method

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

    .line 2105
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .line 2128
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0

    .line 2132
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z
    .locals 6
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;
    .param p2, "flags"    # I

    .line 2155
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2156
    return v1

    .line 2160
    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v0, :cond_1

    .line 2161
    return v2

    .line 2165
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2166
    .local v0, "routeCount":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 2167
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2168
    .local v4, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2

    .line 2169
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2170
    goto :goto_1

    .line 2172
    :cond_2
    invoke-virtual {v4, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2173
    return v2

    .line 2166
    .end local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2178
    .end local v3    # "i":I
    :cond_4
    return v1
.end method

.method public onSystemRouteSelectedByDescriptorId(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 2676
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->removeMessages(I)V

    .line 2677
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2678
    .local v0, "providerIndex":I
    if-ltz v0, :cond_0

    .line 2679
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2680
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-virtual {v1, p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v2

    .line 2681
    .local v2, "routeIndex":I
    if-ltz v2, :cond_0

    .line 2682
    invoke-static {v1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    .line 2685
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .end local v2    # "routeIndex":I
    :cond_0
    return-void
.end method

.method public removeProvider(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 5
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .line 2267
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2268
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 2270
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 2272
    invoke-virtual {p1, v1}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 2274
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2275
    .local v2, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-direct {p0, v2, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2277
    sget-boolean v1, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2278
    const-string v1, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x202

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2281
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2283
    .end local v2    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_1
    return-void
.end method

.method public requestSetVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    .line 2079
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    goto :goto_0

    .line 2081
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2082
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2083
    .local v0, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v0, :cond_1

    .line 2084
    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 2087
    .end local v0    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :cond_1
    :goto_0
    return-void
.end method

.method public requestUpdateVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "delta"    # I

    .line 2090
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 2093
    :cond_0
    return-void
.end method

.method selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2139
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2140
    return-void
.end method

.method selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "unselectReason"    # I

    .line 2143
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2144
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select removed route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    return-void

    .line 2147
    :cond_0
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$400(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2148
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select disabled route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return-void

    .line 2151
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2152
    return-void
.end method

.method public start()V
    .locals 2

    .line 2022
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->addProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 2026
    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;-><init>(Landroid/content/Context;Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    .line 2028
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->start()V

    .line 2029
    return-void
.end method

.method public updateDiscoveryRequest()V
    .locals 9

    .line 2183
    const/4 v0, 0x0

    .line 2184
    .local v0, "discover":Z
    const/4 v1, 0x0

    .line 2185
    .local v1, "activeScan":Z
    new-instance v2, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v2}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    .line 2186
    .local v2, "builder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-ltz v3, :cond_5

    .line 2187
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/media/MediaRouter;

    .line 2188
    .local v5, "router":Landroid/support/v7/media/MediaRouter;
    if-nez v5, :cond_0

    .line 2189
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2191
    :cond_0
    iget-object v6, v5, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2192
    .local v6, "count":I
    nop

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 2193
    iget-object v7, v5, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    .line 2194
    .local v7, "callback":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    iget-object v8, v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v2, v8}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addSelector(Landroid/support/v7/media/MediaRouteSelector;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    .line 2195
    iget v8, v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 2196
    const/4 v1, 0x1

    .line 2197
    const/4 v0, 0x1

    .line 2199
    :cond_1
    iget v8, v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 2200
    iget-boolean v8, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-nez v8, :cond_2

    .line 2201
    const/4 v0, 0x1

    .line 2204
    :cond_2
    iget v8, v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    .line 2205
    const/4 v0, 0x1

    .line 2192
    .end local v7    # "callback":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2209
    .end local v4    # "j":I
    .end local v5    # "router":Landroid/support/v7/media/MediaRouter;
    .end local v6    # "count":I
    :cond_4
    :goto_2
    goto :goto_0

    .line 2210
    .end local v3    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v3

    goto :goto_3

    :cond_6
    sget-object v3, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    .line 2213
    .local v3, "selector":Landroid/support/v7/media/MediaRouteSelector;
    :goto_3
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 2214
    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 2215
    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v5

    if-ne v5, v1, :cond_7

    .line 2216
    return-void

    .line 2218
    :cond_7
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v1, :cond_9

    .line 2220
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-nez v5, :cond_8

    .line 2221
    return-void

    .line 2223
    :cond_8
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    goto :goto_4

    .line 2226
    :cond_9
    new-instance v5, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-direct {v5, v3, v1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;-><init>(Landroid/support/v7/media/MediaRouteSelector;Z)V

    iput-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 2228
    :goto_4
    sget-boolean v5, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v5, :cond_a

    .line 2229
    const-string v5, "MediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated discovery request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_a
    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    iget-boolean v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v5, :cond_b

    .line 2232
    const-string v5, "MediaRouter"

    const-string v6, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :cond_b
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2240
    .local v5, "providerCount":I
    nop

    .local v4, "i":I
    :goto_5
    if-ge v4, v5, :cond_c

    .line 2241
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-static {v6}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v6, v7}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 2240
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2243
    .end local v4    # "i":I
    :cond_c
    return-void
.end method

.method updateProviderDescriptor(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 2
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;
    .param p2, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 2287
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2288
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2290
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2291
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-direct {p0, v1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2293
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_0
    return-void
.end method
