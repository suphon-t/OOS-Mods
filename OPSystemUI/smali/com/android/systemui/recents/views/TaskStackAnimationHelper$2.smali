.class Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startScrollToFocusedTaskAnimation(Lcom/android/systemui/shared/recents/model/Task;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field final synthetic val$newScroll:F


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 493
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;->val$newScroll:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->access$000(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;->val$newScroll:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 497
    return-void
.end method
