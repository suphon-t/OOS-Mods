.class final Landroid/support/v7/media/RegisteredMediaRouteProvider;
.super Landroid/support/v7/media/MediaRouteProvider;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;,
        Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;,
        Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;,
        Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;",
            ">;"
        }
    .end annotation
.end field

.field final mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    const-string v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 90
    new-instance v0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-direct {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    .line 92
    iput-object p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 93
    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    invoke-direct {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    .line 94
    return-void
.end method

.method private attachControllersToConnection()V
    .locals 4

    .line 331
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 333
    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->attachConnection(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private bind()V
    .locals 5

    .line 221
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v0, :cond_2

    .line 222
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MediaRouteProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    .line 230
    iget-boolean v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 231
    const-string v1, "MediaRouteProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Bind failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_1
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 235
    const-string v2, "MediaRouteProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Bind failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v0    # "service":Landroid/content/Intent;
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_2
    :goto_0
    return-void
.end method

.method private createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 7
    .param p1, "routeId"    # Ljava/lang/String;
    .param p2, "routeGroupId"    # Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v0

    .line 255
    .local v0, "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v1

    .line 257
    .local v1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 258
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 259
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouteDescriptor;

    .line 260
    .local v4, "route":Landroid/support/v7/media/MediaRouteDescriptor;
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    new-instance v5, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    invoke-direct {v5, p0, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v5, "controller":Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;
    iget-object v6, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-boolean v6, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz v6, :cond_0

    .line 264
    iget-object v6, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v5, v6}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->attachConnection(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    .line 266
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 267
    return-object v5

    .line 258
    .end local v4    # "route":Landroid/support/v7/media/MediaRouteDescriptor;
    .end local v5    # "controller":Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private detachControllersFromConnection()V
    .locals 3

    .line 338
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 339
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 340
    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    invoke-virtual {v2}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->detachConnection()V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 315
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 317
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 318
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->detachControllersFromConnection()V

    .line 319
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->dispose()V

    .line 320
    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 322
    :cond_0
    return-void
.end method

.method private shouldBind()Z
    .locals 2

    .line 205
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDiscoveryRequest()Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 208
    return v1

    .line 213
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    return v1

    .line 217
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private unbind()V
    .locals 3

    .line 242
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz v0, :cond_1

    .line 243
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Unbinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    .line 248
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 249
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 251
    :cond_1
    return-void
.end method

.method private updateBinding()V
    .locals 1

    .line 197
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->bind()V

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    .line 202
    :goto_0
    return-void
.end method


# virtual methods
.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 164
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onConnectionDescriptorChanged(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 3
    .param p1, "connection"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
    .param p2, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 306
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 307
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Descriptor changed, descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 312
    :cond_1
    return-void
.end method

.method onConnectionDied(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 287
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 288
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service connection died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 293
    :cond_1
    return-void
.end method

.method onConnectionError(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V
    .locals 3
    .param p1, "connection"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
    .param p2, "error"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 297
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service connection error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    .line 302
    :cond_1
    return-void
.end method

.method onConnectionReady(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 275
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 277
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->attachControllersToConnection()V

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDiscoveryRequest()Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object v0

    .line 280
    .local v0, "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 284
    .end local v0    # "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    :cond_0
    return-void
.end method

.method onControllerReleased(Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;)V
    .locals 1
    .param p1, "controller"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    .line 325
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->detachConnection()V

    .line 327
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 328
    return-void
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 98
    if-eqz p1, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;
    .param p2, "routeGroupId"    # Ljava/lang/String;

    .line 107
    if-eqz p1, :cond_1

    .line 110
    if-eqz p2, :cond_0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeGroupId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 118
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 121
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 122
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 126
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz v0, :cond_5

    .line 131
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 133
    if-eqz p2, :cond_1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 134
    .local v0, "messenger":Landroid/os/Messenger;
    :goto_0
    invoke-static {v0}, Landroid/support/v7/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    new-instance v1, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/os/Messenger;)V

    .line 136
    .local v1, "connection":Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
    invoke-virtual {v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->register()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iput-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    goto :goto_1

    .line 139
    :cond_2
    sget-boolean v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 140
    const-string v2, "MediaRouteProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Registration failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "connection":Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
    :cond_3
    :goto_1
    goto :goto_2

    .line 144
    :cond_4
    const-string v1, "MediaRouteProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Service returned invalid messenger binder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "messenger":Landroid/os/Messenger;
    :cond_5
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 151
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 155
    return-void
.end method

.method public rebindIfDisconnected()V
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    .line 192
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->bind()V

    .line 194
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 168
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-nez v0, :cond_1

    .line 169
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 174
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 176
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .line 179
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 180
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 185
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 187
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
