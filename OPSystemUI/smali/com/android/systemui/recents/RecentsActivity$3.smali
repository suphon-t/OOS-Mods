.class Lcom/android/systemui/recents/RecentsActivity$3;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;

    .line 209
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onPreDraw$0(Lcom/android/systemui/recents/RecentsActivity$3;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 216
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 216
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 215
    return-void
.end method

.method public static synthetic lambda$onPreDraw$1(Lcom/android/systemui/recents/RecentsActivity$3;)V
    .locals 2

    .line 220
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->startLoader(Landroid/content/Context;)V

    .line 221
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->setVisible(Z)V

    .line 222
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->access$100(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 213
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$3$yqqbbfyTHFuJpHT3gETj09GBDFY;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$3$yqqbbfyTHFuJpHT3gETj09GBDFY;-><init>(Lcom/android/systemui/recents/RecentsActivity$3;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 219
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$3$SXW_26Z-B_jvwD3qSXfVNpRowHM;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$3$SXW_26Z-B_jvwD3qSXfVNpRowHM;-><init>(Lcom/android/systemui/recents/RecentsActivity$3;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 223
    const/4 v0, 0x1

    return v0
.end method
