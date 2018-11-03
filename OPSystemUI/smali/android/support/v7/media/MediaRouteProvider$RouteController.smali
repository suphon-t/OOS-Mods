.class public abstract Landroid/support/v7/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RouteController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 0

    .line 353
    return-void
.end method

.method public onSelect()V
    .locals 0

    .line 359
    return-void
.end method

.method public onSetVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .line 391
    return-void
.end method

.method public onUnselect()V
    .locals 0

    .line 365
    return-void
.end method

.method public onUnselect(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 382
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 383
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 0
    .param p1, "delta"    # I

    .line 399
    return-void
.end method
