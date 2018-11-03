.class public interface abstract Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.super Ljava/lang/Object;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationChangeCallback"
.end annotation


# virtual methods
.method public onLocationActiveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 34
    return-void
.end method

.method public onLocationSettingsChanged(Z)V
    .locals 0
    .param p1, "locationEnabled"    # Z

    .line 42
    return-void
.end method
