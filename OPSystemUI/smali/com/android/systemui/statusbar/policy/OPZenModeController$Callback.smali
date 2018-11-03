.class public interface abstract Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;
.super Ljava/lang/Object;
.source "OPZenModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/OPZenModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onDndChanged(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 26
    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 0
    .param p1, "threekey"    # I

    .line 25
    return-void
.end method
