.class public Lcom/android/systemui/GuestResumeSessionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GuestResumeSessionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
    }
.end annotation


# instance fields
.field private mNewSessionDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 40
    invoke-static {p0, p1}, Lcom/android/systemui/GuestResumeSessionReceiver;->wipeGuestSession(Landroid/content/Context;I)V

    return-void
.end method

.method private cancelDialog()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    .line 143
    :cond_0
    return-void
.end method

.method private static wipeGuestSession(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 96
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 99
    .local v0, "userManager":Landroid/os/UserManager;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .local v1, "currentUser":Landroid/content/pm/UserInfo;
    nop

    .line 102
    nop

    .line 104
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, p1, :cond_0

    .line 105
    const-string v2, "GuestResumeSessionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User requesting to start a new session ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is not current user ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    const-string v2, "GuestResumeSessionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User requesting to start a new session ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is not a guest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_1
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v2

    .line 116
    .local v2, "marked":Z
    if-nez v2, :cond_2

    .line 117
    const-string v3, "GuestResumeSessionReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t mark the guest for deletion for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 120
    :cond_2
    iget-object v3, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0, v3}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 123
    .local v3, "newGuest":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_3

    .line 124
    :try_start_1
    const-string v4, "GuestResumeSessionReceiver"

    const-string v5, "Could not create new guest, switching back to system user"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 126
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->removeUser(I)Z

    .line 127
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 128
    return-void

    .line 132
    :catch_0
    move-exception v4

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 131
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    nop

    .line 136
    return-void

    .line 132
    :goto_0
    nop

    .line 133
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "GuestResumeSessionReceiver"

    const-string v6, "Couldn\'t wipe session because ActivityManager or WindowManager is dead"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 100
    .end local v1    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v2    # "marked":Z
    .end local v3    # "newGuest":Landroid/content/pm/UserInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GuestResumeSessionReceiver"

    const-string v3, "Couldn\'t wipe session because ActivityManager is dead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/GuestResumeSessionReceiver;->cancelDialog()V

    .line 61
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, "userId":I
    if-ne v1, v2, :cond_0

    .line 63
    const-string v2, "GuestResumeSessionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " sent to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "GuestResumeSessionReceiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without EXTRA_USER_HANDLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    nop

    .line 71
    nop

    .line 73
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 78
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "systemui.guest_has_logged_in"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 80
    .local v4, "notFirstLogin":I
    if-eqz v4, :cond_2

    .line 81
    new-instance v5, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-direct {v5, p1, v1}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    .line 82
    iget-object v5, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v5, "systemui.guest_has_logged_in"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 84
    .end local v1    # "userId":I
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "notFirstLogin":I
    goto :goto_0

    .line 70
    .restart local v1    # "userId":I
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Landroid/os/RemoteException;
    return-void

    .line 88
    .end local v1    # "userId":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .local v3, "f":Landroid/content/IntentFilter;
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    return-void
.end method
