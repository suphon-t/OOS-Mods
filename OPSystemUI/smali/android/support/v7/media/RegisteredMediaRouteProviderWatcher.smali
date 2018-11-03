.class final Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;

    invoke-direct {v0, p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;

    invoke-direct {v0, p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 130
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 131
    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    .line 132
    .local v2, "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    invoke-virtual {v2, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    return v1

    .line 130
    .end local v2    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method scanPackages()V
    .locals 11

    .line 89
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "targetIndex":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.MediaRouteProviderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 98
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 99
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_2

    .line 100
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 101
    .local v5, "sourceIndex":I
    if-gez v5, :cond_1

    .line 102
    new-instance v6, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    iget-object v7, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Landroid/support/v7/media/RegisteredMediaRouteProvider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 105
    .local v6, "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    invoke-virtual {v6}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->start()V

    .line 106
    iget-object v7, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    .local v8, "targetIndex":I
    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    .end local v0    # "targetIndex":I
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

    invoke-interface {v0, v6}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;->addProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 108
    .end local v6    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    nop

    .line 115
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "sourceIndex":I
    .end local v8    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :goto_1
    move v0, v8

    goto :goto_2

    .line 108
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "sourceIndex":I
    :cond_1
    if-lt v5, v0, :cond_2

    .line 109
    iget-object v6, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    .line 110
    .restart local v6    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    invoke-virtual {v6}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->start()V

    .line 111
    invoke-virtual {v6}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->rebindIfDisconnected()V

    .line 112
    iget-object v7, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    .restart local v8    # "targetIndex":I
    invoke-static {v7, v5, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .end local v0    # "targetIndex":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "sourceIndex":I
    .end local v6    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    goto :goto_1

    .line 115
    .end local v8    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 119
    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-lt v2, v0, :cond_4

    .line 120
    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    .line 121
    .local v3, "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    iget-object v4, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

    invoke-interface {v4, v3}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;->removeProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 122
    iget-object v4, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v3}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->stop()V

    .line 119
    .end local v3    # "provider":Landroid/support/v7/media/RegisteredMediaRouteProvider;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 126
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public start()V
    .locals 5

    .line 56
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
