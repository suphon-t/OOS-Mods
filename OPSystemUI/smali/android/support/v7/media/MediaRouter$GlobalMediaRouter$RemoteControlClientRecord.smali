.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteControlClientRecord"
.end annotation


# instance fields
.field private final mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# virtual methods
.method public updatePlaybackInfo()V
    .locals 2

    .line 2886
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroid/support/v7/media/RemoteControlClientCompat;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RemoteControlClientCompat;->setPlaybackInfo(Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;)V

    .line 2887
    return-void
.end method
