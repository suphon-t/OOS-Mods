.class public Landroid/support/v7/app/MediaRouteControllerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "MediaRouteControllerDialogFragment.java"


# instance fields
.field private mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->setCancelable(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayout()V

    .line 76
    :cond_0
    return-void
.end method

.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {v0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    .line 59
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    return-object v0
.end method

.method public onStop()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 65
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->clearGroupListAnimation(Z)V

    .line 68
    :cond_0
    return-void
.end method
