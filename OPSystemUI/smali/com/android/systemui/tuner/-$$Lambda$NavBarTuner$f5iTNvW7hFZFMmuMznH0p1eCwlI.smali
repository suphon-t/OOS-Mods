.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Landroid/widget/EditText;

.field private final synthetic f$2:Landroid/support/v7/preference/Preference;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Landroid/support/v7/preference/ListPreference;

.field private final synthetic f$5:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$2:Landroid/support/v7/preference/Preference;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$4:Landroid/support/v7/preference/ListPreference;

    iput-object p6, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$5:Landroid/support/v7/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$2:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$4:Landroid/support/v7/preference/ListPreference;

    iget-object v5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;->f$5:Landroid/support/v7/preference/ListPreference;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindButton$8(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/content/DialogInterface;I)V

    return-void
.end method
