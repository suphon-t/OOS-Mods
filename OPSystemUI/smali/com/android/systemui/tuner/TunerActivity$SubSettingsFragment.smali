.class public Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "TunerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubSettingsFragment"
.end annotation


# instance fields
.field private mParentScreen:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 115
    nop

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/PreferenceFragment;

    .line 117
    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 118
    nop

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 121
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 125
    .local v1, "p":Landroid/support/v7/preference/Preference;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 126
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 127
    .end local v1    # "p":Landroid/support/v7/preference/Preference;
    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 132
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 135
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 137
    .local v1, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 138
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 139
    .end local v1    # "p":Landroid/support/v7/preference/Preference;
    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method
