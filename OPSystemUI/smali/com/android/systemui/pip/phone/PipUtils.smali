.class public Lcom/android/systemui/pip/phone/PipUtils;
.super Ljava/lang/Object;
.source "PipUtils.java"


# direct methods
.method public static getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityManager"    # Landroid/app/IActivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/IActivityManager;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "sysUiPackageName":Ljava/lang/String;
    const/4 v2, 0x2

    .line 43
    invoke-interface {p1, v2, v0}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 44
    .local v2, "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 46
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 47
    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 49
    .local v4, "cn":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    new-instance v5, Landroid/util/Pair;

    iget-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 46
    .end local v4    # "cn":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 56
    .end local v1    # "sysUiPackageName":Ljava/lang/String;
    .end local v2    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipUtils"

    const-string v3, "Unable to get pinned stack."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
