.class Lcom/android/systemui/pip/phone/PipManager$1;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipManager;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onActivityPinned()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$200(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMediaController;->onActivityPinned()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onActivityPinned()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$400(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipAppOpsListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->onActivityPinned(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$500(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setPipVisibility(Z)V

    .line 81
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    .line 86
    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$500(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/app/IActivityManager;

    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    .line 87
    .local v0, "topPipActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 88
    .local v1, "topActivity":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 89
    .local v3, "userId":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipManager;->access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onActivityUnpinned()V

    .line 90
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onActivityUnpinned(Landroid/content/ComponentName;)V

    .line 91
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipManager;->access$400(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipAppOpsListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->onActivityUnpinned()V

    .line 93
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipManager;->access$500(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setPipVisibility(Z)V

    .line 94
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 1
    .param p1, "clearedTask"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    .line 113
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onPinnedStackAnimationEnded()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onPinnedStackAnimationEnded()V

    .line 108
    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 100
    return-void
.end method
