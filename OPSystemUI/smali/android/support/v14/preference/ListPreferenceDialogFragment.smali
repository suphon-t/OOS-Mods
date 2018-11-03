.class public Landroid/support/v14/preference/ListPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "ListPreferenceDialogFragment.java"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/support/v14/preference/ListPreferenceDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v14/preference/ListPreferenceDialogFragment;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getListPreference()Landroid/support/v7/preference/ListPreference;
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/support/v14/preference/ListPreferenceDialogFragment;

    invoke-direct {v0}, Landroid/support/v14/preference/ListPreferenceDialogFragment;-><init>()V

    .line 38
    .local v0, "fragment":Landroid/support/v14/preference/ListPreferenceDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 39
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-nez p1, :cond_1

    .line 48
    invoke-direct {p0}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->getListPreference()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    .line 50
    .local v0, "preference":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 56
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 58
    .end local v0    # "preference":Landroid/support/v7/preference/ListPreference;
    goto :goto_0

    .line 51
    .restart local v0    # "preference":Landroid/support/v7/preference/ListPreference;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "preference":Landroid/support/v7/preference/ListPreference;
    :cond_1
    const-string v0, "ListPreferenceDialogFragment.index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 60
    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 61
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 63
    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .line 107
    invoke-direct {p0}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->getListPreference()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    .line 108
    .local v0, "preference":Landroid/support/v7/preference/ListPreference;
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    .line 109
    iget-object v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 114
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 81
    iget-object v0, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    new-instance v2, Landroid/support/v14/preference/ListPreferenceDialogFragment$1;

    invoke-direct {v2, p0}, Landroid/support/v14/preference/ListPreferenceDialogFragment$1;-><init>(Landroid/support/v14/preference/ListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    const-string v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 70
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Landroid/support/v14/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
