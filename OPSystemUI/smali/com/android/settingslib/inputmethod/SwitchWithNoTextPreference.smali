.class public Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SwitchWithNoTextPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 28
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
