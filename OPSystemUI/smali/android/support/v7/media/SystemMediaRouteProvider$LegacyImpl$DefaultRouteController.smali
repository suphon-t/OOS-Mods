.class final Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultRouteController"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    .line 171
    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 174
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget-object v0, v0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 175
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-virtual {v0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V

    .line 176
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 6
    .param p1, "delta"    # I

    .line 180
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget-object v0, v0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 181
    .local v0, "volume":I
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget-object v2, v2, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 182
    .local v2, "maxVolume":I
    add-int v3, v0, p1

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 183
    .local v3, "newVolume":I
    if-eq v3, v0, :cond_0

    .line 184
    iget-object v5, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget-object v5, v5, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v1, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 186
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-virtual {v1}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V

    .line 187
    return-void
.end method
