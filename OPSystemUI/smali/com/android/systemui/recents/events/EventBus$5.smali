.class Lcom/android/systemui/recents/events/EventBus$5;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/events/EventBus;->queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/events/EventBus;

.field final synthetic val$event:Lcom/android/systemui/recents/events/EventBus$Event;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/events/EventBus;

    .line 848
    iput-object p1, p0, Lcom/android/systemui/recents/events/EventBus$5;->this$0:Lcom/android/systemui/recents/events/EventBus;

    iput-object p2, p0, Lcom/android/systemui/recents/events/EventBus$5;->val$event:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$5;->val$event:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {v0}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    .line 852
    return-void
.end method
