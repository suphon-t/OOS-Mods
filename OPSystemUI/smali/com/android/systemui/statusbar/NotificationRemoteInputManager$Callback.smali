.class public interface abstract Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract handleRemoteViewClick(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z
.end method

.method public abstract onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
.end method

.method public abstract onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
.end method

.method public abstract onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
.end method

.method public abstract shouldHandleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z
.end method
