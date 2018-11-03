.class public interface abstract Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OverviewProxyListener"
.end annotation


# virtual methods
.method public onBackButtonAlphaChanged(FZ)V
    .locals 0
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 422
    return-void
.end method

.method public onConnectionChanged(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .line 417
    return-void
.end method

.method public onInteractionFlagsChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 419
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 0
    .param p1, "fromHome"    # Z

    .line 420
    return-void
.end method

.method public onQuickScrubStarted()V
    .locals 0

    .line 421
    return-void
.end method

.method public onQuickStepStarted()V
    .locals 0

    .line 418
    return-void
.end method
