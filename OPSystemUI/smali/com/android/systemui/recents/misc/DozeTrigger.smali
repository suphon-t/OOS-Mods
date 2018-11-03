.class public Lcom/android/systemui/recents/misc/DozeTrigger;
.super Ljava/lang/Object;
.source "DozeTrigger.java"


# instance fields
.field mDozeDurationMilliseconds:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mDozeRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mIsAsleep:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mIsDozing:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mOnSleepRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "dozeDurationMilliseconds"    # I
    .param p2, "onSleepRunnable"    # Ljava/lang/Runnable;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/DozeTrigger$1;-><init>(Lcom/android/systemui/recents/misc/DozeTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    .line 50
    iput p1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeDurationMilliseconds:I

    .line 51
    iput-object p2, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mOnSleepRunnable:Ljava/lang/Runnable;

    .line 52
    return-void
.end method


# virtual methods
.method forcePoke()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeDurationMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    .line 95
    return-void
.end method

.method public isAsleep()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsAsleep:Z

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    return v0
.end method

.method public poke()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/DozeTrigger;->forcePoke()V

    .line 86
    :cond_0
    return-void
.end method

.method public startDozing()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/DozeTrigger;->forcePoke()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsAsleep:Z

    .line 60
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsAsleep:Z

    .line 69
    return-void
.end method
