.class Lcom/android/systemui/qs/tiles/DataSwitchTile$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSwitchTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataSwitchTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 118
    const-string v0, "DataSwitchTile"

    const-string v1, "mSimReceiver:onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->refreshState()V

    .line 120
    return-void
.end method
