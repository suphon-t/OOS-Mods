.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;
.super Lcom/android/systemui/SwipeHelper;
.source "TaskStackViewTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .param p2, "swipeDirection"    # I
    .param p3, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p4, "context"    # Landroid/content/Context;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getMaxEscapeAnimDuration()J
    .locals 2

    .line 146
    const-wide/16 v0, 0x2bc

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getScaledDismissSize()F

    move-result v0

    return v0
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 1

    .line 141
    const/high16 v0, 0x44480000    # 800.0f

    return v0
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->access$000(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .line 135
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->access$000(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method
