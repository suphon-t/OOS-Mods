.class public abstract Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractImsStatusPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_IMS_REGISTRATION_STATE:Ljava/lang/String; = "ims_reg_state"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v3, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method
