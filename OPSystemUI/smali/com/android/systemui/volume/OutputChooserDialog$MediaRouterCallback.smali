.class final Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "OutputChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OutputChooserDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/systemui/volume/OutputChooserDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p2, "x1"    # Lcom/android/systemui/volume/OutputChooserDialog$1;

    .line 606
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 609
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$200(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    .line 610
    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 619
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$200(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    .line 620
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 614
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$200(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    .line 615
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 624
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$200(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    .line 625
    return-void
.end method
