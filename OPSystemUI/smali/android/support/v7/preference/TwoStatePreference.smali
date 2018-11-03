.class public abstract Landroid/support/v7/preference/TwoStatePreference;
.super Landroid/support/v7/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field protected mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onClick()V

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 67
    .local v0, "newValue":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 253
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    .line 260
    .local v0, "myState":Landroid/support/v7/preference/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 261
    iget-boolean v1, v0, Landroid/support/v7/preference/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 262
    return-void

    .line 255
    .end local v0    # "myState":Landroid/support/v7/preference/TwoStatePreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 256
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 240
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 241
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    return-object v0

    .line 246
    :cond_0
    new-instance v1, Landroid/support/v7/preference/TwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 247
    .local v1, "myState":Landroid/support/v7/preference/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v7/preference/TwoStatePreference$SavedState;->checked:Z

    .line 248
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 190
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 190
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 192
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 79
    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mCheckedSet:Z

    if-nez v2, :cond_2

    .line 81
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    .line 82
    iput-boolean v1, p0, Landroid/support/v7/preference/TwoStatePreference;->mCheckedSet:Z

    .line 83
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->persistBoolean(Z)Z

    .line 84
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 86
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->notifyChanged()V

    .line 89
    :cond_2
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .line 180
    iput-boolean p1, p0, Landroid/support/v7/preference/TwoStatePreference;->mDisableDependentsState:Z

    .line 181
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 140
    iput-object p1, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->notifyChanged()V

    .line 144
    :cond_0
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 112
    iput-object p1, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->notifyChanged()V

    .line 116
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .line 102
    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mDisableDependentsState:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 103
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method protected syncSummaryView(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 200
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/TwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    .line 202
    return-void
.end method

.method protected syncSummaryView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 209
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 213
    .local v0, "summaryView":Landroid/widget/TextView;
    const/4 v1, 0x1

    .line 214
    .local v1, "useDefaultSummary":Z
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    iget-object v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v1, 0x0

    goto :goto_0

    .line 217
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mChecked:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    iget-object v2, p0, Landroid/support/v7/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const/4 v1, 0x0

    .line 221
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 222
    invoke-virtual {p0}, Landroid/support/v7/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 223
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 224
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v1, 0x0

    .line 228
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v2, 0x8

    .line 229
    .local v2, "newVisibility":I
    if-nez v1, :cond_4

    .line 231
    const/4 v2, 0x0

    .line 233
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 234
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :cond_5
    return-void
.end method
