.class public abstract Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "ObservablePreferenceFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# instance fields
.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 60
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 115
    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 108
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 129
    .local v0, "lifecycleHandled":Z
    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 132
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 94
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    .line 95
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 122
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 87
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    .line 88
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 80
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStart()V

    .line 81
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 101
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStop()V

    .line 102
    return-void
.end method
