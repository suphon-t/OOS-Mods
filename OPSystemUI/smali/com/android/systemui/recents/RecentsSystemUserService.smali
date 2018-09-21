.class public Lcom/android/systemui/recents/RecentsSystemUserService;
.super Landroid/app/Service;
.source "RecentsSystemUserService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSystemUserService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 44
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v1, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/Recents;

    .line 48
    .local v1, "recents":Lcom/android/systemui/recents/Recents;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Lcom/android/systemui/recents/Recents;->getSystemUserCallbacks()Landroid/os/IBinder;

    move-result-object v2

    return-object v2

    .line 51
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public onCreate()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    return-void
.end method
