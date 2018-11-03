.class Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiListenerExecutor"
.end annotation


# instance fields
.field private final mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p2, "listener"    # Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 981
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 983
    return-void
.end method

.method public static synthetic lambda$onWifiStateChanged$0(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;I)V
    .locals 1
    .param p1, "state"    # I

    .line 987
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-interface {v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    return-void
.end method

.method public static synthetic lambda$runAndLog$1(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "verboseLog"    # Ljava/lang/String;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 1003
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->access$000(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    const-string v0, "WifiTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1009
    :cond_1
    return-void
.end method

.method private runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "verboseLog"    # Ljava/lang/String;

    .line 1002
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method


# virtual methods
.method public onAccessPointsChanged()V
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    const-string v0, "Invoking onAccessPointsChanged callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method public onConnectedChanged()V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$6PbPNXCvqbAnKbPWPJrs-dDWQEQ;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$6PbPNXCvqbAnKbPWPJrs-dDWQEQ;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    const-string v0, "Invoking onConnectedChanged callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 994
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .line 987
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$PZBvWEzpVHhaI95PbZNbzEgAH1I;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$PZBvWEzpVHhaI95PbZNbzEgAH1I;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;I)V

    const-string v1, "Invoking onWifiStateChanged callback with state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 988
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 987
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 989
    return-void
.end method
