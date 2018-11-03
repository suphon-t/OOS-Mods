.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;->f$1:Landroid/support/v7/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;->f$1:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindLayout$1(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method
