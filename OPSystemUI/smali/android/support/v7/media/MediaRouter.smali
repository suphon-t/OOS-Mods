.class public final Landroid/support/v7/media/MediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;,
        Landroid/support/v7/media/MediaRouter$CallbackRecord;,
        Landroid/support/v7/media/MediaRouter$ControlRequestCallback;,
        Landroid/support/v7/media/MediaRouter$Callback;,
        Landroid/support/v7/media/MediaRouter$ProviderInfo;,
        Landroid/support/v7/media/MediaRouter$RouteGroup;,
        Landroid/support/v7/media/MediaRouter$RouteInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# instance fields
.field final mCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    const-string v0, "MediaRouter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    .line 236
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter;->mContext:Landroid/content/Context;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/support/v7/media/MediaRouter$1;

    .line 84
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static checkCallingThread()V
    .locals 2

    .line 797
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 801
    return-void

    .line 798
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findCallbackRecord(Landroid/support/v7/media/MediaRouter$Callback;)I
    .locals 3
    .param p1, "callback"    # Landroid/support/v7/media/MediaRouter$Callback;

    .line 660
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 661
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 662
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    iget-object v2, v2, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    if-ne v2, p1, :cond_0

    .line 663
    return v1

    .line 661
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 257
    if-eqz p0, :cond_1

    .line 260
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 262
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 264
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->start()V

    .line 266
    :cond_0
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getRouter(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    return-object v0

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V
    .locals 1
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;
    .param p2, "callback"    # Landroid/support/v7/media/MediaRouter$Callback;

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 501
    return-void
.end method

.method public addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V
    .locals 5
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;
    .param p2, "callback"    # Landroid/support/v7/media/MediaRouter$Callback;
    .param p3, "flags"    # I

    .line 598
    if-eqz p1, :cond_6

    .line 601
    if-eqz p2, :cond_5

    .line 604
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 606
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback: selector="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v7/media/MediaRouter;->findCallbackRecord(Landroid/support/v7/media/MediaRouter$Callback;)I

    move-result v0

    .line 613
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 614
    new-instance v1, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    invoke-direct {v1, p0, p2}, Landroid/support/v7/media/MediaRouter$CallbackRecord;-><init>(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 615
    .local v1, "record":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    .end local v1    # "record":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    :cond_1
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    .line 619
    .restart local v1    # "record":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    :goto_0
    const/4 v2, 0x0

    .line 620
    .local v2, "updateNeeded":Z
    iget v3, v1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    not-int v3, v3

    and-int/2addr v3, p3

    if-eqz v3, :cond_2

    .line 621
    iget v3, v1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    or-int/2addr v3, p3

    iput v3, v1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    .line 622
    const/4 v2, 0x1

    .line 624
    :cond_2
    iget-object v3, v1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v3, p1}, Landroid/support/v7/media/MediaRouteSelector;->contains(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 625
    new-instance v3, Landroid/support/v7/media/MediaRouteSelector$Builder;

    iget-object v4, v1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-direct {v3, v4}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 626
    invoke-virtual {v3, p1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addSelector(Landroid/support/v7/media/MediaRouteSelector;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v3

    .line 627
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 628
    const/4 v2, 0x1

    .line 630
    :cond_3
    if-eqz v2, :cond_4

    .line 631
    sget-object v3, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateDiscoveryRequest()V

    .line 633
    :cond_4
    return-void

    .line 602
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    .end local v2    # "updateNeeded":Z
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 789
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

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

    .line 274
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 275
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .line 374
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 375
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z
    .locals 2
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;
    .param p2, "flags"    # I

    .line 478
    if-eqz p1, :cond_0

    .line 481
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 483
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z

    move-result v0

    return v0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/support/v7/media/MediaRouter$Callback;

    .line 643
    if-eqz p1, :cond_2

    .line 646
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 648
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 649
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter;->findCallbackRecord(Landroid/support/v7/media/MediaRouter$Callback;)I

    move-result v0

    .line 653
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 654
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 655
    sget-object v1, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateDiscoveryRequest()V

    .line 657
    :cond_1
    return-void

    .line 644
    .end local v0    # "index":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unselect(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 439
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 443
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 447
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 448
    .local v0, "fallbackRoute":Landroid/support/v7/media/MediaRouter$RouteInfo;
    sget-object v1, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 449
    sget-object v1, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    goto :goto_0

    .line 451
    :cond_0
    sget-object v1, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    sget-object v2, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 453
    :goto_0
    return-void

    .line 441
    .end local v0    # "fallbackRoute":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported reason to unselect route"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
