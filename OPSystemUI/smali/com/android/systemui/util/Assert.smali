.class public Lcom/android/systemui/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public static isMainThread()V
    .locals 2

    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
