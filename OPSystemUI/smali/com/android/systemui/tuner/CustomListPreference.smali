.class public Lcom/android/systemui/tuner/CustomListPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method


# virtual methods
.method protected isAutoClosePreference()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .line 48
    return-void
.end method

.method protected onDialogCreated(Landroid/app/DialogFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p1, "fragment"    # Landroid/app/DialogFragment;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 51
    return-object p2
.end method

.method protected onDialogStateRestored(Landroid/app/DialogFragment;Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/DialogFragment;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 45
    return-void
.end method
