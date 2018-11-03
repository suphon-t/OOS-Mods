.class public abstract Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "SysUiTaskStackChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkCurrentUserId(Landroid/content/Context;Z)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debug"    # Z

    .line 32
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 33
    .local v0, "currentUserId":I
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;->checkCurrentUserId(IZ)Z

    move-result v1

    return v1
.end method
