.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$0AVJL9CTzprG2BMD2je5SHaUt-w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment;

.field private final synthetic f$1:Landroid/support/v14/preference/SwitchPreference;

.field private final synthetic f$2:Landroid/support/v7/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment;Landroid/support/v14/preference/SwitchPreference;Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$0AVJL9CTzprG2BMD2je5SHaUt-w;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$0AVJL9CTzprG2BMD2je5SHaUt-w;->f$1:Landroid/support/v14/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$0AVJL9CTzprG2BMD2je5SHaUt-w;->f$2:Landroid/support/v7/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$0AVJL9CTzprG2BMD2je5SHaUt-w;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$0AVJL9CTzprG2BMD2je5SHaUt-w;->f$1:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$0AVJL9CTzprG2BMD2je5SHaUt-w;->f$2:Landroid/support/v7/preference/Preference;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->lambda$setupGroup$1(Lcom/android/systemui/tuner/LockscreenFragment;Landroid/support/v14/preference/SwitchPreference;Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
