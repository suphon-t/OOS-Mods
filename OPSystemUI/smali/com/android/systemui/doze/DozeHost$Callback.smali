.class public interface abstract Lcom/android/systemui/doze/DozeHost$Callback;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onNotificationHeadsUp()V
    .locals 0

    .line 51
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 52
    return-void
.end method
