.class public Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;
.super Landroid/content/ContextWrapper;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginContextWrapper"
.end annotation


# instance fields
.field private final mClassLoader:Ljava/lang/ClassLoader;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 392
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 393
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;->mClassLoader:Ljava/lang/ClassLoader;

    .line 394
    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 403
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
