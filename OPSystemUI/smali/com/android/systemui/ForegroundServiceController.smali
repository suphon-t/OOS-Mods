.class public interface abstract Lcom/android/systemui/ForegroundServiceController;
.super Ljava/lang/Object;
.source "ForegroundServiceController.java"


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;I)V
.end method

.method public abstract getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStandardLayoutKey(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isDungeonNeededForUser(I)Z
.end method

.method public abstract isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract isSystemAlertWarningNeeded(ILjava/lang/String;)Z
.end method

.method public abstract onAppOpChanged(IILjava/lang/String;Z)V
.end method

.method public abstract removeNotification(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract updateNotification(Landroid/service/notification/StatusBarNotification;I)V
.end method
