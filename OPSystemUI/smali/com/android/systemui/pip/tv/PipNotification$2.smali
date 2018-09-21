.class Lcom/android/systemui/pip/tv/PipNotification$2;
.super Landroid/media/session/MediaController$Callback;
.source "PipNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipNotification;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$2;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$2;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$000(Lcom/android/systemui/pip/tv/PipNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$2;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$300(Lcom/android/systemui/pip/tv/PipNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$2;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$100(Lcom/android/systemui/pip/tv/PipNotification;)V

    .line 107
    :cond_0
    return-void
.end method
