.class public abstract Lcom/android/settingslib/utils/AsyncLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    .local p0, "this":Lcom/android/settingslib/utils/AsyncLoader;, "Lcom/android/settingslib/utils/AsyncLoader<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/settingslib/utils/AsyncLoader;, "Lcom/android/settingslib/utils/AsyncLoader<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    .line 66
    .local v0, "oldResult":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 72
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    .line 75
    :cond_3
    return-void
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/android/settingslib/utils/AsyncLoader;, "Lcom/android/settingslib/utils/AsyncLoader<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected abstract onDiscardResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected onReset()V
    .locals 1

    .line 79
    .local p0, "this":Lcom/android/settingslib/utils/AsyncLoader;, "Lcom/android/settingslib/utils/AsyncLoader<TT;>;"
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoader;->onStopLoading()V

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 42
    .local p0, "this":Lcom/android/settingslib/utils/AsyncLoader;, "Lcom/android/settingslib/utils/AsyncLoader<TT;>;"
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoader;->deliverResult(Ljava/lang/Object;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoader;->forceLoad()V

    .line 49
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 53
    .local p0, "this":Lcom/android/settingslib/utils/AsyncLoader;, "Lcom/android/settingslib/utils/AsyncLoader<TT;>;"
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoader;->cancelLoad()Z

    .line 54
    return-void
.end method
