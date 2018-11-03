.class Lcom/android/systemui/recents/RecentsImpl$4;
.super Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
.source "RecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;

.field final synthetic val$toTask:Lcom/android/systemui/shared/recents/model/Task;

.field final synthetic val$toTaskRect:Landroid/graphics/RectF;

.field final synthetic val$toTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;Landroid/os/Handler;Landroid/graphics/RectF;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 911
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$4;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iput-object p3, p0, Lcom/android/systemui/recents/RecentsImpl$4;->val$toTaskRect:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/android/systemui/recents/RecentsImpl$4;->val$toTask:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p5, p0, Lcom/android/systemui/recents/RecentsImpl$4;->val$toTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    .line 914
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 915
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl$4;->val$toTaskRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 916
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl$4;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl$4;->val$toTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl$4;->val$toTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->access$400(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 917
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    new-instance v3, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl$4;->val$toTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v4, v1, v0}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method
