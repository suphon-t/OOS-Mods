.class Lcom/android/systemui/SwipeHelper$1;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SwipeHelper;

    .line 288
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$100(Lcom/android/systemui/SwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/SwipeHelper;->access$102(Lcom/android/systemui/SwipeHelper;Z)Z

    .line 293
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->access$200(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->access$200(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v0, v2

    .line 295
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->access$200(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v3

    aget v1, v3, v1

    sub-int/2addr v2, v1

    .line 296
    .local v2, "y":I
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v1}, Lcom/android/systemui/SwipeHelper;->access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v1}, Lcom/android/systemui/SwipeHelper;->access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 300
    invoke-static {v1}, Lcom/android/systemui/SwipeHelper;->access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 301
    .local v1, "currRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->doLongClickCallback(II)V

    .line 304
    .end local v0    # "x":I
    .end local v1    # "currRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "y":I
    :cond_0
    return-void
.end method
