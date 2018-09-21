.class Lcom/android/systemui/SystemUIApplication$3;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/OverlayPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/plugins/OverlayPlugin;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SystemUIApplication;

    .line 210
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$3;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPluginConnected$0(ZLcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0
    .param p0, "b"    # Z
    .param p1, "o"    # Lcom/android/systemui/plugins/OverlayPlugin;

    .line 225
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/OverlayPlugin;->setCollapseDesired(Z)V

    return-void
.end method

.method public static synthetic lambda$onPluginConnected$1(Lcom/android/systemui/SystemUIApplication$3;Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIApplication$3$KtEuVDRzZWbFRFHh7e6NcPePYDw;

    invoke-direct {v1, p1}, Lcom/android/systemui/-$$Lambda$SystemUIApplication$3$KtEuVDRzZWbFRFHh7e6NcPePYDw;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/OverlayPlugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3;->this$0:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 216
    .local v0, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    .line 218
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    .line 217
    invoke-interface {p1, v1, v2}, Lcom/android/systemui/plugins/OverlayPlugin;->setup(Landroid/view/View;Landroid/view/View;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    .line 222
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/OverlayPlugin;->holdStatusBarOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$SystemUIApplication$3$p3nb_gGx-K0KPgblBW5zld3voX0;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$SystemUIApplication$3$p3nb_gGx-K0KPgblBW5zld3voX0;-><init>(Lcom/android/systemui/SystemUIApplication$3;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;)V

    .line 226
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    .line 227
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 226
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForcePluginOpen(Z)V

    .line 230
    :cond_3
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 210
    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SystemUIApplication$3;->onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 2
    .param p1, "plugin"    # Lcom/android/systemui/plugins/OverlayPlugin;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 235
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    .line 236
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 235
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForcePluginOpen(Z)V

    .line 237
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 210
    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIApplication$3;->onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method
