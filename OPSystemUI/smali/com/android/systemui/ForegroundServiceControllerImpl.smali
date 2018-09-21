.class public Lcom/android/systemui/ForegroundServiceControllerImpl;
.super Ljava/lang/Object;
.source "ForegroundServiceControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/ForegroundServiceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMutex:Ljava/lang/Object;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "importance"    # I

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 111
    return-void
.end method

.method public getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
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

    .line 82
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .line 84
    .local v1, "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v1, :cond_0

    .line 85
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 87
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->getFeatures(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 88
    .end local v1    # "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStandardLayoutKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .line 75
    .local v1, "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 76
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->getStandardLayoutKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 77
    .end local v1    # "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDungeonNeededForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 55
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .line 57
    .local v1, "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 58
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->isDungeonNeeded()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 59
    .end local v1    # "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 171
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0
.end method

.method public isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 178
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertWindowNotification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0
.end method

.method public isSystemAlertWarningNeeded(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .line 66
    .local v1, "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 67
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->getStandardLayoutKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    monitor-exit v0

    return v2

    .line 68
    .end local v1    # "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAppOpChanged(IILjava/lang/String;Z)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 93
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 94
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .line 96
    .local v2, "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v2, :cond_0

    .line 97
    new-instance v3, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;-><init>(Lcom/android/systemui/ForegroundServiceControllerImpl$1;)V

    move-object v2, v3

    .line 98
    iget-object v3, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    :cond_0
    if-eqz p4, :cond_1

    .line 101
    invoke-virtual {v2, p3, p1}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->addOp(Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v2, p3, p1}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeOp(Ljava/lang/String;I)Z

    .line 105
    .end local v2    # "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :goto_0
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .line 117
    .local v1, "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v1, :cond_0

    .line 123
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->setRunningServices([Ljava/lang/String;J)V

    .line 129
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 134
    .end local v1    # "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "newImportance"    # I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .line 141
    .local v1, "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v1, :cond_0

    .line 142
    new-instance v2, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;-><init>(Lcom/android/systemui/ForegroundServiceControllerImpl$1;)V

    move-object v1, v2

    .line 143
    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 148
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 149
    const-string v3, "android.foregroundApps"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "svcs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->setRunningServices([Ljava/lang/String;J)V

    .line 152
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "svcs":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4

    .line 155
    const/4 v2, 0x1

    if-le p2, v2, :cond_3

    .line 156
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->addImportantNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 158
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 160
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    nop

    .line 162
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->addStandardLayoutNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v1    # "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    :cond_4
    :goto_0
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
