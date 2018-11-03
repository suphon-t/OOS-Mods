.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/PluginFragment;

.field private final synthetic f$1:Landroid/util/ArrayMap;

.field private final synthetic f$2:Landroid/content/Context;

.field private final synthetic f$3:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/PluginFragment;Landroid/util/ArrayMap;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;->f$0:Lcom/android/systemui/tuner/PluginFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;->f$1:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;->f$3:Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;->f$0:Lcom/android/systemui/tuner/PluginFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;->f$1:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;->f$3:Landroid/support/v7/preference/PreferenceScreen;

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/tuner/PluginFragment;->lambda$loadPrefs$0(Lcom/android/systemui/tuner/PluginFragment;Landroid/util/ArrayMap;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/content/pm/PackageInfo;)V

    return-void
.end method
