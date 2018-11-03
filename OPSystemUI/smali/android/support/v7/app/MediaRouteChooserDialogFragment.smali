.class public Landroid/support/v7/app/MediaRouteChooserDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    .line 48
    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    .line 61
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 64
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 66
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v1, :cond_1

    .line 67
    sget-object v1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 70
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 57
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->updateLayout()V

    .line 125
    :cond_0
    return-void
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteChooserDialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    new-instance v0, Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-direct {v0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteChooserDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    .line 115
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteChooserDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 116
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    return-object v0
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 3
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;

    .line 79
    if-eqz p1, :cond_2

    .line 83
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 84
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 91
    :cond_0
    const-string v1, "selector"

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/MediaRouteChooserDialog;

    .line 95
    .local v1, "dialog":Landroid/support/v7/app/MediaRouteChooserDialog;
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 99
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Landroid/support/v7/app/MediaRouteChooserDialog;
    :cond_1
    return-void

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
