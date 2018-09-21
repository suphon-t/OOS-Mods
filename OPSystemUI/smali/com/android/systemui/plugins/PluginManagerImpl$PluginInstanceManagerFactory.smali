.class public Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginInstanceManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/plugins/PluginManagerImpl;)Lcom/android/systemui/plugins/PluginInstanceManager;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "allowMultiple"    # Z
    .param p5, "looper"    # Landroid/os/Looper;
    .param p7, "manager"    # Lcom/android/systemui/plugins/PluginManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;Z",
            "Landroid/os/Looper;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/systemui/plugins/PluginManagerImpl;",
            ")",
            "Lcom/android/systemui/plugins/PluginInstanceManager;"
        }
    .end annotation

    .line 321
    .local p3, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v8, Lcom/android/systemui/plugins/PluginInstanceManager;

    new-instance v0, Lcom/android/systemui/plugins/VersionInfo;

    invoke-direct {v0}, Lcom/android/systemui/plugins/VersionInfo;-><init>()V

    .line 322
    move-object/from16 v9, p6

    invoke-virtual {v0, v9}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v6

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/plugins/PluginInstanceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Lcom/android/systemui/plugins/VersionInfo;Lcom/android/systemui/plugins/PluginManagerImpl;)V

    .line 321
    return-object v8
.end method
