.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessPointCallback"
.end annotation


# virtual methods
.method public abstract onAccessPointsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSettingsActivityTriggered(Landroid/content/Intent;)V
.end method
