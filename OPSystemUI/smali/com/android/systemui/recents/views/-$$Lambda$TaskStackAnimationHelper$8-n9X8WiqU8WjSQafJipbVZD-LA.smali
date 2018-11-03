.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$8-n9X8WiqU8WjSQafJipbVZD-LA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field private final synthetic f$1:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$8-n9X8WiqU8WjSQafJipbVZD-LA;->f$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$8-n9X8WiqU8WjSQafJipbVZD-LA;->f$1:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$8-n9X8WiqU8WjSQafJipbVZD-LA;->f$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$8-n9X8WiqU8WjSQafJipbVZD-LA;->f$1:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->lambda$startTaskGridDeleteTaskAnimation$1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method
