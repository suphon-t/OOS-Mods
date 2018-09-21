.class Lcom/android/systemui/statusbar/NotificationMediaManager$1;
.super Landroid/media/session/MediaController$Callback;
.source "NotificationMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 69
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$102(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 75
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 55
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$000(Lcom/android/systemui/statusbar/NotificationMediaManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 65
    :cond_0
    return-void
.end method
