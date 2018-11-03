.class public Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.super Ljava/lang/Object;
.source "MetricsFeatureProvider.java"


# instance fields
.field private mLoggerWriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/instrumentation/LogWriter;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public hidden(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 52
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2}, Lcom/android/settingslib/core/instrumentation/LogWriter;->hidden(Landroid/content/Context;I)V

    .line 53
    .end local v1    # "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # I
    .param p3, "category"    # I

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 46
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->visible(Landroid/content/Context;II)V

    .line 47
    .end local v1    # "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
