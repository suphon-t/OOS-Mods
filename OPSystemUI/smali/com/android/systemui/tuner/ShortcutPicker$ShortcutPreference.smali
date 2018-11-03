.class Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;
.super Lcom/android/systemui/tuner/SelectablePreference;
.source "ShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/ShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcut"    # Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    .param p3, "appLabel"    # Ljava/lang/CharSequence;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/SelectablePreference;-><init>(Landroid/content/Context;)V

    .line 174
    iput-object p2, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 175
    iget-object v0, p2, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const v1, 0x7f11062e

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/tuner/SelectablePreference;->notifyChanged()V

    .line 193
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mBinding:Z

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    iget-object v0, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mBinding:Z

    .line 186
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/SelectablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
