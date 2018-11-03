.class Lcom/android/systemui/recents/views/RecentsView$6;
.super Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->launchTaskFromRecents(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$activityType:I

.field final synthetic val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$task:Lcom/android/systemui/shared/recents/model/Task;

.field final synthetic val$windowRect:Landroid/graphics/Rect;

.field final synthetic val$windowingMode:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/os/Handler;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 936
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$6;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput p5, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$windowingMode:I

    iput p6, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$activityType:I

    iput-object p7, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$windowRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$6;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->access$100(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionComposer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$windowingMode:I

    iget v5, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$activityType:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$windowRect:Landroid/graphics/Rect;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->composeAnimationSpecs(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IILandroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
