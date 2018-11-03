.class public Lcom/android/systemui/plugins/PluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;,
        Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;,
        Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;,
        Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;
    }
.end annotation


# instance fields
.field private final isDebuggable:Z

.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

.field private mHasOneShot:Z

.field private mListening:Z

.field private mLooper:Landroid/os/Looper;

.field private final mOneShotPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParentClassLoader:Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;",
            "Lcom/android/systemui/plugins/PluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

.field private mWtfsSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    invoke-direct {v0}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;-><init>()V

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 83
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 82
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factory"    # Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;
    .param p3, "debuggable"    # Z
    .param p4, "defaultHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 88
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    .line 91
    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    .line 92
    iput-boolean p3, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    .line 93
    new-instance v0, Lcom/android/systemui/plugins/PluginPrefs;

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    .line 95
    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/plugins/PluginManagerImpl$1;)V

    .line 97
    .local v0, "uncaughtExceptionHandler":Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;
    invoke-static {v0}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 98
    iget-boolean v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v2, Lcom/android/systemui/plugins/-$$Lambda$PluginManagerImpl$DDmEEnITAENQNECHR1R9V5n2bfQ;->INSTANCE:Lcom/android/systemui/plugins/-$$Lambda$PluginManagerImpl$DDmEEnITAENQNECHR1R9V5n2bfQ;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugins/PluginManagerImpl;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$handleWtfs$1(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "what"    # Landroid/util/Log$TerribleFailure;
    .param p3, "system"    # Z

    .line 303
    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;-><init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$new$0()V
    .locals 2

    .line 102
    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 104
    return-void
.end method

.method private startListening()V
    .locals 3

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mListening:Z

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "com.android.systemui.action.PLUGIN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 191
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mHasOneShot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mListening:Z

    .line 198
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    return-void

    .line 196
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 141
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/plugins/PluginManagerImpl;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 142
    return-void
.end method

.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 1
    .param p3, "allowMultiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 146
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/android/systemui/plugins/PluginManager;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 147
    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 151
    .local p2, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 152
    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/Class;
    .param p4, "allowMultiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Z)V"
        }
    .end annotation

    .line 156
    .local p2, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v7, p3

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/plugins/PluginManagerImpl;)Lcom/android/systemui/plugins/PluginInstanceManager;

    move-result-object v0

    .line 163
    .local v0, "p":Lcom/android/systemui/plugins/PluginInstanceManager;
    invoke-virtual {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->loadAll()V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->startListening()V

    .line 166
    return-void
.end method

.method public dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 3
    .param p1, "p"    # Lcom/android/systemui/plugins/Plugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 291
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/plugins/PluginInstanceManager;->dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const/4 v0, 0x1

    return v0

    .line 291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 309
    const-string v0, "  plugin map (%d):"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginListener;

    .line 311
    .local v2, "listener":Lcom/android/systemui/plugins/PluginListener;
    const-string v3, "    %s -> %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    iget-object v6, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 312
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    .line 311
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .end local v2    # "listener":Lcom/android/systemui/plugins/PluginListener;
    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 268
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-object v0
.end method

.method public getContext(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/Context;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 286
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/plugins/PluginManagerImpl;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 287
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    new-instance v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-object v1
.end method

.method public getOneShotPlugin(Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 109
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    .line 110
    .local v0, "info":Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    if-eqz v0, :cond_1

    .line 113
    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/plugins/PluginManagerImpl;->getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;

    move-result-object v1

    return-object v1

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t provide an action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t provide an interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 120
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    return-object v1

    .line 124
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v5, p1

    move-object v9, p2

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/plugins/PluginManagerImpl;)Lcom/android/systemui/plugins/PluginInstanceManager;

    move-result-object v0

    .line 129
    .local v0, "p":Lcom/android/systemui/plugins/PluginInstanceManager;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>;"
    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual {v2, p1}, Lcom/android/systemui/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->getPlugin()Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    move-result-object v2

    .line 131
    .local v2, "info":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    if-eqz v2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    iget-object v3, v2, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mHasOneShot:Z

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->startListening()V

    .line 135
    iget-object v1, v2, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/plugins/Plugin;

    return-object v1

    .line 137
    :cond_1
    return-object v1

    .line 125
    .end local v0    # "p":Lcom/android/systemui/plugins/PluginInstanceManager;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>;"
    .end local v2    # "info":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be called from UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.android.systemui.plugin"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

    return-object v0
.end method

.method public handleWtfs()V
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mWtfsSet:Z

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mWtfsSet:Z

    .line 302
    new-instance v0, Lcom/android/systemui/plugins/-$$Lambda$PluginManagerImpl$x7_zsW6bYkksPPNk4f5aNW7Etqo;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugins/-$$Lambda$PluginManagerImpl$x7_zsW6bYkksPPNk4f5aNW7Etqo;-><init>(Lcom/android/systemui/plugins/PluginManagerImpl;)V

    invoke-static {v0}, Landroid/util/Log;->setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;

    .line 306
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 203
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 205
    .local v1, "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    invoke-virtual {v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->loadAll()V

    .line 206
    .end local v1    # "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    goto :goto_0

    .line 207
    :cond_0
    const-string v0, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 209
    .local v0, "uri":Landroid/net/Uri;
    nop

    .line 210
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 211
    .local v4, "component":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 214
    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 216
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v4    # "component":Landroid/content/ComponentName;
    goto/16 :goto_4

    .line 217
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 218
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 220
    iget-object v5, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "tuner"

    const-string v7, "drawable"

    iget-object v8, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 220
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 222
    .local v5, "icon":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "system_notification_accent_color"

    const-string v8, "color"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 224
    .local v6, "color":I
    move-object v7, v4

    .line 226
    .local v7, "label":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 227
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v10

    .line 229
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_1

    .line 228
    :catch_0
    move-exception v9

    .line 231
    :goto_1
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-string v11, "ALR"

    invoke-direct {v9, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const-wide/16 v10, 0x0

    .line 234
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 235
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 236
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 237
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v9, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v9, v6}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Plugin \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\" has updated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 239
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v9, "Restart SysUI for changes to take effect."

    .line 240
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 241
    .local v2, "nb":Landroid/app/Notification$Builder;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.action.RESTART"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "package://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 242
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 241
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v9

    .line 243
    .local v9, "i":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v10, v8, v9, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 244
    .local v8, "pi":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Action$Builder;

    const/4 v11, 0x0

    const-string v12, "Restart SysUI"

    invoke-direct {v10, v11, v12, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 245
    iget-object v10, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 246
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 245
    invoke-virtual {v10, v4, v1, v11, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 248
    .end local v2    # "nb":Landroid/app/Notification$Builder;
    .end local v5    # "icon":I
    .end local v6    # "color":I
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v9    # "i":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/plugins/PluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloading "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 251
    :cond_3
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 253
    .local v2, "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    invoke-virtual {v2, v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    .line 254
    .end local v2    # "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    goto :goto_2

    .line 256
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 257
    .restart local v2    # "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    invoke-virtual {v2, v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    .line 258
    .end local v2    # "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    goto :goto_3

    .line 261
    .end local v0    # "data":Landroid/net/Uri;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_5
    :goto_4
    return-void
.end method

.method public removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;)V"
        }
    .end annotation

    .line 169
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<*>;"
    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->destroy()V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->stopListening()V

    .line 178
    :cond_2
    return-void
.end method
