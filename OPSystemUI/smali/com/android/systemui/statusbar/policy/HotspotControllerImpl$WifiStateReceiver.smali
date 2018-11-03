.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;

    .line 224
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 243
    const-string/jumbo v0, "wifi_state"

    const/16 v1, 0xe

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, "state":I
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HotspotController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$602(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$702(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    .line 257
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 228
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    if-nez v0, :cond_1

    .line 229
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HotspotController"

    const-string v1, "Registering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    .line 234
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    if-eqz v0, :cond_3

    .line 235
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HotspotController"

    const-string v1, "Unregistering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->mRegistered:Z

    .line 239
    :cond_3
    :goto_0
    return-void
.end method
