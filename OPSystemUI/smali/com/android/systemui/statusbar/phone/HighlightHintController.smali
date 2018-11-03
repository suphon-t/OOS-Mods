.class public interface abstract Lcom/android/systemui/statusbar/phone/HighlightHintController;
.super Ljava/lang/Object;
.source "HighlightHintController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getHighlighColor()I
.end method

.method public abstract getNotificationData()Lcom/android/systemui/statusbar/NotificationData;
.end method

.method public abstract isHighLightHintShow()Z
.end method

.method public abstract onBarStatechange(I)V
.end method

.method public abstract onExpandedVisibleChange(Z)V
.end method

.method public abstract onHeadUpPinnedModeChange(Z)V
.end method

.method public abstract onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData;)V
.end method

.method public abstract showOvalLayout()Z
.end method
