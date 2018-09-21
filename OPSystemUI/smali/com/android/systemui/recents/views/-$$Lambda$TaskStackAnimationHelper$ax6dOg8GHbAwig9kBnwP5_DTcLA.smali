.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$ax6dOg8GHbAwig9kBnwP5_DTcLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

.field private final synthetic f$1:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$ax6dOg8GHbAwig9kBnwP5_DTcLA;->f$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$ax6dOg8GHbAwig9kBnwP5_DTcLA;->f$1:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$ax6dOg8GHbAwig9kBnwP5_DTcLA;->f$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$ax6dOg8GHbAwig9kBnwP5_DTcLA;->f$1:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->lambda$startTaskStackDeleteTaskAnimation$2(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method
