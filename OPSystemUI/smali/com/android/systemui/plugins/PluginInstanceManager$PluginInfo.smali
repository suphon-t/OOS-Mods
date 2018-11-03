.class Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;
.super Ljava/lang/Object;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field mPackage:Ljava/lang/String;

.field mPlugin:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPluginContext:Landroid/content/Context;

.field private final mVersion:Lcom/android/systemui/plugins/VersionInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/plugins/VersionInfo;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p4, "pluginContext"    # Landroid/content/Context;
    .param p5, "info"    # Lcom/android/systemui/plugins/VersionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/VersionInfo;",
            ")V"
        }
    .end annotation

    .line 421
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    .local p3, "plugin":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p3, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 423
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    .line 424
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 425
    iput-object p4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    .line 426
    iput-object p5, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mVersion:Lcom/android/systemui/plugins/VersionInfo;

    .line 427
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    .line 413
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    .line 413
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Lcom/android/systemui/plugins/VersionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    .line 413
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mVersion:Lcom/android/systemui/plugins/VersionInfo;

    return-object v0
.end method
