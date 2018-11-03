.class Lcom/android/systemui/recents/views/RecentsView$2;
.super Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

.field final synthetic val$taskRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/os/Handler;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 627
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$taskRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->access$100(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionComposer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v1, v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$taskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->composeDockAnimationSpec(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
