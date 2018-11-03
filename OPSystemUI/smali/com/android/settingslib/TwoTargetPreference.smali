.class public Lcom/android/settingslib/TwoTargetPreference;
.super Landroid/support/v7/preference/Preference;
.source "TwoTargetPreference.java"


# instance fields
.field private mIconSize:I

.field private mMediumIconSize:I

.field private mSmallIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    sget v0, Lcom/android/settingslib/R$layout;->preference_two_target:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/TwoTargetPreference;->setLayoutResource(I)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->two_target_pref_small_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/TwoTargetPreference;->mSmallIconSize:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->two_target_pref_medium_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/TwoTargetPreference;->mMediumIconSize:I

    .line 74
    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->getSecondTargetResId()I

    move-result v0

    .line 75
    .local v0, "secondTargetResId":I
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/settingslib/TwoTargetPreference;->setWidgetLayoutResource(I)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 87
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 88
    .local v0, "icon":Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/settingslib/TwoTargetPreference;->mIconSize:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settingslib/TwoTargetPreference;->mSmallIconSize:I

    iget v3, p0, Lcom/android/settingslib/TwoTargetPreference;->mSmallIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    goto :goto_0

    .line 93
    :pswitch_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settingslib/TwoTargetPreference;->mMediumIconSize:I

    iget v3, p0, Lcom/android/settingslib/TwoTargetPreference;->mMediumIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :goto_0
    sget v1, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "divider":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "widgetFrame":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->shouldHideSecondTarget()Z

    move-result v3

    .line 100
    .local v3, "shouldHideSecondTarget":Z
    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v1, :cond_1

    .line 101
    if-eqz v3, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    if-eqz v2, :cond_3

    .line 104
    if-eqz v3, :cond_2

    move v4, v5

    nop

    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected shouldHideSecondTarget()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->getSecondTargetResId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
