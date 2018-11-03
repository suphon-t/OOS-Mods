.class Lcom/android/systemui/pip/tv/PipControlsView$1;
.super Landroid/media/session/MediaController$Callback;
.source "PipControlsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlsView;->access$000(Lcom/android/systemui/pip/tv/PipControlsView;)V

    .line 83
    return-void
.end method
