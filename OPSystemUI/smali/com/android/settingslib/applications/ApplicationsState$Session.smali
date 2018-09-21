.class public Lcom/android/settingslib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field private mFlags:I

.field private final mHasLifecycle:Z

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field mRebuildForeground:Z

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method static synthetic access$300(Lcom/android/settingslib/applications/ApplicationsState$Session;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 647
    iget v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    return v0
.end method


# virtual methods
.method handleRebuildList()V
    .locals 8

    .line 746
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_0

    .line 748
    monitor-exit v0

    return-void

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 752
    .local v1, "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 753
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 754
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 755
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 756
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    if-eqz v4, :cond_1

    .line 757
    const/4 v4, -0x2

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 758
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    .line 760
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 762
    if-eqz v1, :cond_2

    .line 763
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 768
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 769
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 771
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    .line 773
    .local v5, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    nop

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 774
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 775
    .local v4, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v4, :cond_5

    if-eqz v1, :cond_3

    invoke-interface {v1, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 776
    :cond_3
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v6

    .line 778
    if-eqz v2, :cond_4

    .line 780
    :try_start_2
    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    goto :goto_1

    .line 785
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 783
    :cond_4
    :goto_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    monitor-exit v6

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 773
    .end local v4    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 789
    .end local v3    # "i":I
    :cond_6
    if-eqz v2, :cond_7

    .line 790
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 793
    :try_start_3
    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 794
    monitor-exit v3

    goto :goto_4

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 797
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v3

    .line 798
    :try_start_4
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v4, :cond_9

    .line 799
    iput-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 800
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v4, :cond_8

    .line 801
    iput-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 802
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5

    .line 804
    :cond_8
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6, p0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 805
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v4, v6, p0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 807
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v4}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 811
    .end local v4    # "msg":Landroid/os/Message;
    :cond_9
    :goto_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 813
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 814
    return-void

    .line 811
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 769
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v5    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 760
    .end local v1    # "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .end local v2    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 818
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mHasLifecycle:Z

    if-nez v0, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 824
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 700
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_0

    .line 701
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 702
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 703
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v2, p0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 704
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 707
    :cond_0
    monitor-exit v0

    .line 708
    return-void

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    .line 688
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 689
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-boolean v1, v2, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 690
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 692
    :cond_0
    monitor-exit v0

    .line 694
    return-void

    .line 692
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
