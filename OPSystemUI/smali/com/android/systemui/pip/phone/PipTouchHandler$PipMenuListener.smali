.class Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p2, "x1"    # Lcom/android/systemui/pip/phone/PipTouchHandler$1;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onPipDismiss()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    .line 171
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureDismissByTap(Landroid/content/Context;Landroid/util/Pair;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    .line 177
    return-void
.end method

.method public onPipExpand()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    .line 157
    :cond_0
    return-void
.end method

.method public onPipMenuStateChanged(IZ)V
    .locals 1
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$300(Lcom/android/systemui/pip/phone/PipTouchHandler;IZ)V

    .line 150
    return-void
.end method

.method public onPipMinimize()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestMinimizedState(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;

    .line 163
    return-void
.end method

.method public onPipShowMenu()V
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 182
    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v6

    .line 181
    const/4 v2, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 183
    return-void
.end method
