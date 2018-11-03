.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/support/v7/preference/ListPreference;

.field private final synthetic f$3:Landroid/support/v7/preference/Preference;

.field private final synthetic f$4:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$2:Landroid/support/v7/preference/ListPreference;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$3:Landroid/support/v7/preference/Preference;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$4:Landroid/support/v7/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$2:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$3:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;->f$4:Landroid/support/v7/preference/ListPreference;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindButton$7(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
