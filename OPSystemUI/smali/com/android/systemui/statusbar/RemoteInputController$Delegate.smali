.class public interface abstract Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
.super Ljava/lang/Object;
.source "RemoteInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/RemoteInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract lockScrollTo(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method

.method public abstract requestDisallowLongPressAndDismiss()V
.end method

.method public abstract setRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
.end method
