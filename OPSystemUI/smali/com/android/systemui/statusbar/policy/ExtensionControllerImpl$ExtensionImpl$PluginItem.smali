.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/android/systemui/plugins/Plugin;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "TP;>;",
        "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mConverter:Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter<",
            "TT;TP;>;"
        }
    .end annotation
.end field

.field private mItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/lang/String;Ljava/lang/Class;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)V
    .locals 0
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TP;>;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter<",
            "TT;TP;>;)V"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    .local p4, "converter":Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;, "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter<TT;TP;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mConverter:Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;

    .line 210
    const-class p1, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {p1, p2, p0, p3}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    .line 211
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 238
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 239
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 1
    .param p2, "pluginContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    .local p1, "plugin":Lcom/android/systemui/plugins/Plugin;, "TP;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->access$602(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Landroid/content/Context;)Landroid/content/Context;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mConverter:Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mConverter:Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;->getInterfaceFromPlugin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mItem:Ljava/lang/Object;

    goto :goto_0

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mItem:Ljava/lang/Object;

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->access$400(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 222
    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    .local p1, "plugin":Lcom/android/systemui/plugins/Plugin;, "TP;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->access$602(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Landroid/content/Context;)Landroid/content/Context;

    .line 227
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mItem:Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->access$400(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 229
    return-void
.end method

.method public sortOrder()I
    .locals 1

    .line 243
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    const/4 v0, 0x0

    return v0
.end method
