.class public Lcom/android/settingslib/widget/FooterPreference;
.super Landroid/support/v7/preference/Preference;
.source "FooterPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    sget v0, Lcom/android/settingslib/R$attr;->footerPreferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/widget/FooterPreference;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 1

    .line 58
    sget v0, Lcom/android/settingslib/R$drawable;->ic_info_outline_24dp:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/FooterPreference;->setIcon(I)V

    .line 59
    const-string v0, "footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/FooterPreference;->setKey(Ljava/lang/String;)V

    .line 60
    const v0, 0x7ffffffe

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/FooterPreference;->setOrder(I)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/FooterPreference;->setSelectable(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 51
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "title":Landroid/widget/TextView;
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 55
    return-void
.end method
