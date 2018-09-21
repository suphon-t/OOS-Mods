.class public interface abstract Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
.super Ljava/lang/Object;
.source "NotificationGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGroupChangeListener"
.end annotation


# virtual methods
.method public abstract onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
.end method

.method public abstract onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
.end method

.method public abstract onGroupsChanged()V
.end method
