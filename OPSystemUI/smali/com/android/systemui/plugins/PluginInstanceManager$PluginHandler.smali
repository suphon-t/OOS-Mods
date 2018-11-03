.class Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;
.super Landroid/os/Handler;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginHandler"
.end annotation


# instance fields
.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/plugins/PluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/PluginInstanceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 223
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 224
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkVersion(Ljava/lang/Class;Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/VersionInfo;)Lcom/android/systemui/plugins/VersionInfo;
    .locals 5
    .param p3, "version"    # Lcom/android/systemui/plugins/VersionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;TT;",
            "Lcom/android/systemui/plugins/VersionInfo;",
            ")",
            "Lcom/android/systemui/plugins/VersionInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    .local p1, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    new-instance v0, Lcom/android/systemui/plugins/VersionInfo;

    invoke-direct {v0}, Lcom/android/systemui/plugins/VersionInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v0

    .line 374
    .local v0, "pv":Lcom/android/systemui/plugins/VersionInfo;
    invoke-virtual {v0}, Lcom/android/systemui/plugins/VersionInfo;->hasVersionInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p3, v0}, Lcom/android/systemui/plugins/VersionInfo;->checkVersion(Lcom/android/systemui/plugins/VersionInfo;)V

    .line 383
    return-object v0

    .line 377
    :cond_0
    invoke-interface {p2}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v1

    .line 378
    .local v1, "fallbackVersion":I
    invoke-virtual {p3}, Lcom/android/systemui/plugins/VersionInfo;->getDefaultVersion()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 381
    const/4 v2, 0x0

    return-object v2

    .line 379
    :cond_1
    new-instance v2, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    const/4 v3, 0x0

    const-string v4, "Invalid legacy version"

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v2
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 272
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$900(Lcom/android/systemui/plugins/PluginInstanceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 277
    invoke-static {v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 279
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v2}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$800(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    const-string v2, "PluginInstanceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple plugins found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$900(Lcom/android/systemui/plugins/PluginInstanceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 284
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 285
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v5, "name":Landroid/content/ComponentName;
    invoke-virtual {p0, v5}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    move-result-object v6

    .line 288
    .local v6, "t":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    if-nez v6, :cond_2

    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "name":Landroid/content/ComponentName;
    .end local v6    # "t":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    goto :goto_0

    .line 289
    .restart local v4    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "name":Landroid/content/ComponentName;
    .restart local v6    # "t":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    iget-object v7, v7, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    invoke-virtual {v7, v3, v6}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 290
    iget-object v7, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "name":Landroid/content/ComponentName;
    .end local v6    # "t":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    goto :goto_0

    .line 292
    :cond_3
    return-void
.end method


# virtual methods
.method protected handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;
    .locals 20
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<",
            "TT;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    move-object/from16 v1, p0

    .line 297
    iget-object v0, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$1100(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 299
    const-string v0, "PluginInstanceManager"

    const-string v3, "Somehow hit second debuggable check"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v2

    .line 302
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 305
    .local v10, "cls":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v3, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v12, v0

    .line 307
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.android.systemui.permission.PLUGIN"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7

    if-eqz v0, :cond_1

    .line 309
    :try_start_1
    const-string v0, "PluginInstanceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plugin doesn\'t have permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    return-object v2

    .line 365
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v17, v3

    goto/16 :goto_3

    .line 313
    .restart local v12    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$600(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginManagerImpl;

    move-result-object v0

    iget-object v4, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/plugins/PluginManagerImpl;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v13, v0

    .line 314
    .local v13, "classLoader":Ljava/lang/ClassLoader;
    new-instance v8, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;

    iget-object v0, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 315
    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v12, v11}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0, v13}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 316
    .local v8, "pluginContext":Landroid/content/Context;
    const/4 v14, 0x1

    invoke-static {v10, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v15, v0

    .line 319
    .local v15, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/Plugin;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    move-object v7, v0

    .line 321
    .local v7, "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    :try_start_3
    iget-object v0, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$1200(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v0

    invoke-direct {v1, v15, v7, v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->checkVersion(Ljava/lang/Class;Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/VersionInfo;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v9

    .line 323
    .local v9, "version":Lcom/android/systemui/plugins/VersionInfo;
    new-instance v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;
    :try_end_3
    .catch Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v10

    move-object/from16 v16, v7

    .line 323
    .end local v7    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    .local v16, "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    :try_start_4
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/plugins/VersionInfo;)V
    :try_end_4
    .catch Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 324
    .end local v9    # "version":Lcom/android/systemui/plugins/VersionInfo;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 324
    .end local v16    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    .restart local v7    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    .line 324
    .end local v7    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    .restart local v16    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    :goto_0
    move-object v4, v0

    .line 325
    .local v4, "e":Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
    :try_start_5
    iget-object v0, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v5, "tuner"

    const-string v6, "drawable"

    iget-object v7, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 326
    invoke-static {v7}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 325
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 327
    .local v5, "icon":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v6, "system_notification_accent_color"

    const-string v7, "color"

    const-string v9, "android"

    invoke-virtual {v0, v6, v7, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 329
    .local v6, "color":I
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v7}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v7

    const-string v9, "ALR"

    invoke-direct {v0, v7, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 331
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    move-object/from16 v17, v3

    const-wide/16 v2, 0x0

    .line 333
    .end local v3    # "pkg":Ljava/lang/String;
    .local v17, "pkg":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 336
    invoke-static {v2}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    move-object v2, v0

    .line 337
    .local v2, "nb":Landroid/app/Notification$Builder;
    move-object v3, v10

    .line 339
    .local v3, "label":Ljava/lang/String;
    :try_start_7
    iget-object v0, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v7, p1

    :try_start_8
    invoke-virtual {v0, v7, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v9, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v9}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$1000(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    move-object v3, v0

    .line 341
    goto :goto_1

    .line 365
    .end local v2    # "nb":Landroid/app/Notification$Builder;
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
    .end local v5    # "icon":I
    .end local v6    # "color":I
    .end local v8    # "pluginContext":Landroid/content/Context;
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "classLoader":Ljava/lang/ClassLoader;
    .end local v15    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 340
    .restart local v2    # "nb":Landroid/app/Notification$Builder;
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v4    # "e":Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
    .restart local v5    # "icon":I
    .restart local v6    # "color":I
    .restart local v8    # "pluginContext":Landroid/content/Context;
    .restart local v12    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v15    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object/from16 v7, p1

    .line 342
    :goto_1
    :try_start_9
    invoke-virtual {v4}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->isTooNew()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Plugin \""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" is too old"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Contact plugin developer to get an updated version.\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v4}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 345
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 349
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Plugin \""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" is too new"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Check to see if an OTA is available.\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v4}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 353
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "package://"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 353
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 355
    .local v0, "i":Landroid/content/Intent;
    iget-object v9, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v9}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v11, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 356
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v11, Landroid/app/Notification$Action$Builder;

    const-string v14, "Disable plugin"

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-direct {v11, v3, v14, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 356
    .end local v3    # "label":Ljava/lang/String;
    .local v18, "label":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 357
    iget-object v3, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$500(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v3

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 358
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    const/4 v0, 0x6

    invoke-virtual {v3, v10, v0, v14, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 361
    .end local v0    # "i":Landroid/content/Intent;
    .local v19, "i":Landroid/content/Intent;
    const-string v0, "PluginInstanceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Plugin has invalid interface version "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v16

    invoke-interface {v11}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v14

    .end local v16    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    .local v11, "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", expected "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 362
    invoke-static {v14}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$1200(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 363
    const/4 v3, 0x0

    return-object v3

    .line 365
    .end local v2    # "nb":Landroid/app/Notification$Builder;
    .end local v4    # "e":Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
    .end local v5    # "icon":I
    .end local v6    # "color":I
    .end local v8    # "pluginContext":Landroid/content/Context;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "classLoader":Ljava/lang/ClassLoader;
    .end local v15    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "label":Ljava/lang/String;
    .end local v19    # "i":Landroid/content/Intent;
    :catch_6
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_3

    .line 365
    .end local v17    # "pkg":Ljava/lang/String;
    .local v3, "pkg":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v17, v3

    .line 366
    .end local v3    # "pkg":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17    # "pkg":Ljava/lang/String;
    :goto_3
    const-string v2, "PluginInstanceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v17    # "pkg":Ljava/lang/String;
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    const/4 v2, 0x0

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 229
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 265
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 245
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 246
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    .line 248
    .local v2, "plugin":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    iget-object v3, v2, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    iget-object v3, v3, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    const/4 v4, 0x2

    iget-object v5, v2, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 251
    iget-object v3, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 246
    .end local v2    # "plugin":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 254
    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 256
    .end local v0    # "pkg":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, "p":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$800(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 259
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto :goto_2

    .line 232
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 233
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    .line 234
    .local v1, "plugin":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    iget-object v2, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v2}, Lcom/android/systemui/plugins/PluginInstanceManager;->access$700(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/PluginListener;->onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V

    .line 235
    iget-object v2, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v2, :cond_3

    .line 238
    iget-object v2, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v2}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    .line 232
    .end local v1    # "plugin":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 241
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    .line 243
    nop

    .line 267
    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
