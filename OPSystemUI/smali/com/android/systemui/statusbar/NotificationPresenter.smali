.class public interface abstract Lcom/android/systemui/statusbar/NotificationPresenter;
.super Ljava/lang/Object;
.source "NotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;
.implements Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;
.implements Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getMaxNotificationsWhileLocked(Z)I
.end method

.method public abstract isDeviceInVrMode()Z
.end method

.method public abstract isDeviceLocked(I)Z
.end method

.method public abstract isPresenterFullyCollapsed()Z
.end method

.method public abstract isPresenterLocked()Z
.end method

.method public abstract onUpdateRowStates()V
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public abstract onWorkChallengeChanged()V
.end method

.method public abstract startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end method

.method public abstract updateMediaMetaData(ZZ)V
.end method

.method public abstract updateNotificationViews()V
.end method

.method public abstract wakeUpIfDozing(JLandroid/view/View;)V
.end method
