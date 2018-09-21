.class Lcom/android/systemui/shared/recents/model/FilteredTaskList;
.super Ljava/lang/Object;
.source "FilteredTaskList.java"


# instance fields
.field private mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

.field private final mFilteredTaskIndices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilteredTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTaskIndices:Landroid/util/ArrayMap;

    return-void
.end method

.method private updateFilteredTaskIndices()V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 113
    .local v0, "taskCount":I
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTaskIndices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 116
    .local v2, "t":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTaskIndices:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v2    # "t":Lcom/android/systemui/shared/recents/model/Task;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateFilteredTasks()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 92
    .local v0, "taskIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/shared/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 93
    .local v1, "taskCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 94
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 95
    .local v4, "t":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v5, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    .end local v4    # "t":Lcom/android/systemui/shared/recents/model/Task;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "i":I
    :cond_0
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 99
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 100
    .local v3, "t":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

    invoke-interface {v4, v0, v3, v2}, Lcom/android/systemui/shared/recents/model/TaskFilter;->acceptTask(Landroid/util/SparseArray;Lcom/android/systemui/shared/recents/model/Task;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v3    # "t":Lcom/android/systemui/shared/recents/model/Task;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "taskIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/shared/recents/model/Task;>;"
    .end local v1    # "taskCount":I
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTaskIndices()V

    .line 108
    return-void
.end method


# virtual methods
.method contains(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method indexOf(Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 73
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method remove(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    .local v0, "removed":Z
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 63
    return v0

    .line 65
    .end local v0    # "removed":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method set(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/model/Task;>;"
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 56
    return-void
.end method

.method setFilter(Lcom/android/systemui/shared/recents/model/TaskFilter;)Z
    .locals 2
    .param p1, "filter"    # Lcom/android/systemui/shared/recents/model/TaskFilter;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .local v0, "prevFilteredTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 42
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method size()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
