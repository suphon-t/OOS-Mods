.class public Lcom/android/settingslib/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field private mAttrUserRestriction:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field private mUseAdminDisabledSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 48
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroid/support/v7/preference/Preference;

    .line 51
    if-eqz p3, :cond_5

    .line 52
    sget-object v2, Lcom/android/settingslib/R$styleable;->RestrictedPreference:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 54
    .local v2, "attributes":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/settingslib/R$styleable;->RestrictedPreference_userRestriction:I

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 56
    .local v3, "userRestriction":Landroid/util/TypedValue;
    const/4 v4, 0x0

    .line 57
    .local v4, "data":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    iget v5, v3, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 58
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    .line 59
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 61
    :cond_0
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 64
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    move-object v5, v0

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 66
    iget-object v5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 67
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 66
    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    iput-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 69
    return-void

    .line 72
    :cond_3
    sget v0, Lcom/android/settingslib/R$styleable;->RestrictedPreference_useAdminDisabledSummary:I

    .line 73
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 74
    .local v0, "useAdminDisabledSummary":Landroid/util/TypedValue;
    if-eqz v0, :cond_5

    .line 75
    iget v5, v0, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_4

    iget v5, v0, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    nop

    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 80
    .end local v0    # "useAdminDisabledSummary":Landroid/util/TypedValue;
    .end local v2    # "attributes":Landroid/content/res/TypedArray;
    .end local v3    # "userRestriction":Landroid/util/TypedValue;
    .end local v4    # "data":Ljava/lang/CharSequence;
    :cond_5
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;I)V
    .locals 1
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 137
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 139
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 140
    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    return v0
.end method

.method public onAttachedToHierarchy()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 128
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 86
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    if-eqz v0, :cond_2

    .line 90
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->disabled_by_admin_summary_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 94
    .local v1, "disabledText":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v0    # "summaryView":Landroid/widget/TextView;
    .end local v1    # "disabledText":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z
    .locals 5
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 151
    .local v2, "disabled":Z
    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, "changed":Z
    iget-boolean v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eq v4, v2, :cond_1

    .line 154
    iput-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    .line 155
    const/4 v3, 0x1

    .line 157
    :cond_1
    iget-object v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v2, :cond_2

    move v0, v1

    nop

    :cond_2
    invoke-virtual {v4, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 158
    return v3
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 0
    .param p1, "useSummary"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 106
    return-void
.end method
