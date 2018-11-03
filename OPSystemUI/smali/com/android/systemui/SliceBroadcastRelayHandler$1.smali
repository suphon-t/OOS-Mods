.class Lcom/android/systemui/SliceBroadcastRelayHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SliceBroadcastRelayHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SliceBroadcastRelayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SliceBroadcastRelayHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/SliceBroadcastRelayHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SliceBroadcastRelayHandler;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler$1;->this$0:Lcom/android/systemui/SliceBroadcastRelayHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler$1;->this$0:Lcom/android/systemui/SliceBroadcastRelayHandler;

    invoke-virtual {v0, p2}, Lcom/android/systemui/SliceBroadcastRelayHandler;->handleIntent(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
