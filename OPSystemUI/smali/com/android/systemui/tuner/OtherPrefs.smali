.class public Lcom/android/systemui/tuner/OtherPrefs;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "OtherPrefs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 24
    const v0, 0x7f150004

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/OtherPrefs;->addPreferencesFromResource(I)V

    .line 25
    return-void
.end method
