.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$2:Landroid/support/v7/preference/ListPreference;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$3:Landroid/support/v7/preference/Preference;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$4:Landroid/support/v7/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$2:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$3:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;->f$4:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindButton$6(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method
