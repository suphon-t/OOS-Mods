.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/support/v7/preference/ListPreference;

.field private final synthetic f$4:Landroid/support/v7/preference/ListPreference;

.field private final synthetic f$5:Landroid/support/v7/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$3:Landroid/support/v7/preference/ListPreference;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$4:Landroid/support/v7/preference/ListPreference;

    iput-object p6, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$5:Landroid/support/v7/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$3:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$4:Landroid/support/v7/preference/ListPreference;

    iget-object v5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;->f$5:Landroid/support/v7/preference/Preference;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindButton$4(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V

    return-void
.end method
