.class abstract Landroid/support/v7/media/MediaRouteProviderProtocol;
.super Ljava/lang/Object;
.source "MediaRouteProviderProtocol.java"


# direct methods
.method public static isValidRemoteMessenger(Landroid/os/Messenger;)Z
    .locals 2
    .param p0, "messenger"    # Landroid/os/Messenger;

    .line 223
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 227
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 223
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return v0
.end method
