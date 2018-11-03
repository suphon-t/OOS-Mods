.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;->f$1:Landroid/support/v7/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;->f$1:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0, v1, p1, p2}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindLayout$2(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
