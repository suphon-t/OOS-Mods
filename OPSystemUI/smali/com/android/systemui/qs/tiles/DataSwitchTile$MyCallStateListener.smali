.class Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "DataSwitchTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataSwitchTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 276
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->access$200(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->access$102(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z

    .line 280
    return-void
.end method
