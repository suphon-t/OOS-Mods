.class public Lcom/android/systemui/SliceBroadcastRelayHandler;
.super Lcom/android/systemui/SystemUI;
.source "SliceBroadcastRelayHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;
    }
.end annotation


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRelays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    .line 79
    new-instance v0, Lcom/android/systemui/SliceBroadcastRelayHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SliceBroadcastRelayHandler$1;-><init>(Lcom/android/systemui/SliceBroadcastRelayHandler;)V

    iput-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getAndRemoveRelay(Landroid/net/Uri;)Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    return-object v0
.end method

.method private getOrCreateRelay(Landroid/net/Uri;)Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    .line 68
    .local v0, "ret":Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;
    if-nez v0, :cond_0

    .line 69
    new-instance v1, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    invoke-direct {v1, p1}, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;-><init>(Landroid/net/Uri;)V

    move-object v0, v1

    .line 70
    iget-object v1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-object v0
.end method


# virtual methods
.method handleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    const-string v0, "com.android.settingslib.action.REGISTER_SLICE_RECEIVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 54
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "receiver"

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 56
    .local v1, "receiverClass":Landroid/content/ComponentName;
    const-string v2, "filter"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 58
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-direct {p0, v0}, Lcom/android/systemui/SliceBroadcastRelayHandler;->getOrCreateRelay(Landroid/net/Uri;)Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;->register(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/IntentFilter;)V

    .line 59
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "receiverClass":Landroid/content/ComponentName;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    :cond_0
    const-string v0, "com.android.settingslib.action.UNREGISTER_SLICE_RECEIVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 62
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/systemui/SliceBroadcastRelayHandler;->getAndRemoveRelay(Landroid/net/Uri;)Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;->unregister(Landroid/content/Context;)V

    .line 64
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settingslib.action.REGISTER_SLICE_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.settingslib.action.UNREGISTER_SLICE_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method
