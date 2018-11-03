.class public Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
.super Ljava/lang/Object;
.source "ReferenceCountedTrigger.java"


# instance fields
.field mCount:I

.field mDecrementRunnable:Ljava/lang/Runnable;

.field mErrorRunnable:Ljava/lang/Runnable;

.field mFirstIncRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mIncrementRunnable:Ljava/lang/Runnable;

.field mLastDecRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "firstIncRunnable"    # Ljava/lang/Runnable;
    .param p2, "lastDecRunnable"    # Ljava/lang/Runnable;
    .param p3, "errorRunanable"    # Ljava/lang/Runnable;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mIncrementRunnable:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$2;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mDecrementRunnable:Ljava/lang/Runnable;

    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    iput-object p3, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    .line 58
    return-void
.end method


# virtual methods
.method public addLastDecrementRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public decrement()V
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    .line 84
    iget v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    goto :goto_0

    .line 86
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-gez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid ref count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    :goto_0
    return-void
.end method

.method public decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 114
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    return-object v0
.end method

.method public flushLastDecrementRunnables()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 101
    .local v0, "numRunnables":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "numRunnables":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    return-void
.end method

.method public increment()V
    .locals 3

    .line 62
    iget v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    .local v0, "numRunnables":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "numRunnables":I
    .end local v1    # "i":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    .line 69
    return-void
.end method
