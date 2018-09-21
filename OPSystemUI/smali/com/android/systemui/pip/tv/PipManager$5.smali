.class Lcom/android/systemui/pip/tv/PipManager$5;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 628
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I

    .line 666
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PipManager"

    const-string v1, "onActivityPinned()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1300(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 669
    .local v0, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v0, :cond_1

    .line 670
    const-string v1, "PipManager"

    const-string v2, "Cannot find pinned stack"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void

    .line 673
    :cond_1
    sget-boolean v1, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PipManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PINNED_STACK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget v2, v0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-static {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->access$1802(Lcom/android/systemui/pip/tv/PipManager;I)I

    .line 675
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->access$1502(Lcom/android/systemui/pip/tv/PipManager;I)I

    .line 676
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->access$1902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 679
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1, v4}, Lcom/android/systemui/pip/tv/PipManager;->access$402(Lcom/android/systemui/pip/tv/PipManager;I)I

    .line 680
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->access$2002(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 681
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->access$2200(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    .line 682
    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$2100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v2

    .line 681
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 683
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$2200(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->access$300(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V

    .line 684
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 685
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipEntered()V

    .line 684
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 687
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1, v4}, Lcom/android/systemui/pip/tv/PipManager;->access$2300(Lcom/android/systemui/pip/tv/PipManager;Z)V

    .line 688
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 2
    .param p1, "clearedTask"    # Z

    .line 692
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PipManager"

    const-string v1, "onPinnedActivityRestartAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->movePipToFullscreen()V

    .line 696
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    .line 700
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PipManager"

    const-string v1, "onPinnedStackAnimationEnded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1200(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$2400(Lcom/android/systemui/pip/tv/PipManager;)V

    .line 707
    :goto_0
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 6

    .line 631
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PipManager"

    const-string v1, "onTaskStackChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1200(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 634
    const/4 v0, 0x0

    .line 636
    .local v0, "hasPip":Z
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$1300(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 637
    .local v2, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v2, :cond_4

    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-nez v3, :cond_1

    goto :goto_2

    .line 642
    :cond_1
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 643
    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v5}, Lcom/android/systemui/pip/tv/PipManager;->access$1500(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 645
    const/4 v0, 0x1

    .line 646
    goto :goto_1

    .line 642
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 649
    .end local v3    # "i":I
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 651
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v3, v1}, Lcom/android/systemui/pip/tv/PipManager;->access$1400(Lcom/android/systemui/pip/tv/PipManager;Z)V

    .line 652
    return-void

    .line 638
    :cond_4
    :goto_2
    const-string v1, "PipManager"

    const-string v3, "There is nothing in pinned stack"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/systemui/pip/tv/PipManager;->access$1400(Lcom/android/systemui/pip/tv/PipManager;Z)V

    .line 640
    return-void

    .line 655
    .end local v0    # "hasPip":Z
    .end local v2    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1200(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 656
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1600(Lcom/android/systemui/pip/tv/PipManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1700(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    .line 657
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v2

    if-eq v2, v0, :cond_7

    .line 658
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2, v0}, Lcom/android/systemui/pip/tv/PipManager;->access$602(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 659
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 662
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_7
    return-void
.end method
