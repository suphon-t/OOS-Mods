.class Lcom/android/systemui/qs/external/TileServiceManager$3;
.super Landroid/content/BroadcastReceiver;
.source "TileServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/TileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .line 239
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager$3;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 242
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 246
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 247
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager$3;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v2}, Lcom/android/systemui/qs/external/TileServiceManager;->access$500(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileLifecycleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 249
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    return-void

    .line 254
    :cond_1
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v3, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 258
    .local v5, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 259
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 258
    invoke-virtual {v5, v3, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 260
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 261
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 262
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 263
    return-void

    .line 265
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    goto :goto_0

    .line 268
    .end local v3    # "queryIntent":Landroid/content/Intent;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServiceManager$3;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v3}, Lcom/android/systemui/qs/external/TileServiceManager;->access$400(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/external/TileServices;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    .line 269
    return-void
.end method
