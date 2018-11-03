.class Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;
.super Ljava/lang/Object;
.source "HighResThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    .line 201
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$loadTask$0(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "thumbnail"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v0

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$300(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$600(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    .line 240
    :cond_0
    return-void

    .line 236
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private loadTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 231
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$400(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    .line 233
    .local v0, "thumbnail":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$500(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/shared/recents/model/-$$Lambda$HighResThumbnailLoader$1$s-1KK0EnA0WJuK_oehEz11H5MbU;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/shared/recents/model/-$$Lambda$HighResThumbnailLoader$1$s-1KK0EnA0WJuK_oehEz11H5MbU;-><init>(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 205
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 207
    :goto_0
    const/4 v0, 0x0

    .line 208
    .local v0, "next":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v1

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$100(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    move-object v0, v2

    .line 219
    if-eqz v0, :cond_2

    .line 220
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$300(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 211
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$202(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;Z)Z

    .line 212
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 213
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->access$202(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 214
    :catch_0
    move-exception v2

    .line 216
    :goto_2
    nop

    .line 223
    :cond_2
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    if-eqz v0, :cond_3

    .line 225
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;->loadTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 227
    .end local v0    # "next":Lcom/android/systemui/shared/recents/model/Task;
    :cond_3
    goto :goto_0

    .line 223
    .restart local v0    # "next":Lcom/android/systemui/shared/recents/model/Task;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
