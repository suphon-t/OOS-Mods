.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastNetwork:Landroid/net/Network;

.field private mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 235
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 243
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "lastValidated":Z
    :goto_0
    nop

    .line 245
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 249
    .local v1, "validated":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->mLastNetwork:Landroid/net/Network;

    invoke-virtual {p1, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 250
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v0, :cond_1

    .line 252
    return-void

    .line 254
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->mLastNetwork:Landroid/net/Network;

    .line 255
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 257
    return-void
.end method
