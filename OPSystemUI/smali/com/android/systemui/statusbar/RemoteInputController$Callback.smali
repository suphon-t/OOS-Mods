.class public interface abstract Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.super Ljava/lang/Object;
.source "RemoteInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/RemoteInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onRemoteInputActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 278
    return-void
.end method

.method public onRemoteInputSent(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 280
    return-void
.end method
