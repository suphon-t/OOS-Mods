.class Lcom/android/systemui/recents/events/EventBus$4;
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

.field final synthetic val$eventHandler:Lcom/android/systemui/recents/events/EventHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/events/EventBus;

    .line 833
    iput-object p1, p0, Lcom/android/systemui/recents/events/EventBus$4;->this$0:Lcom/android/systemui/recents/events/EventBus;

    iput-object p2, p0, Lcom/android/systemui/recents/events/EventBus$4;->val$eventHandler:Lcom/android/systemui/recents/events/EventHandler;

    iput-object p3, p0, Lcom/android/systemui/recents/events/EventBus$4;->val$event:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$4;->this$0:Lcom/android/systemui/recents/events/EventBus;

    iget-object v1, p0, Lcom/android/systemui/recents/events/EventBus$4;->val$eventHandler:Lcom/android/systemui/recents/events/EventHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus$4;->val$event:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->access$000(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 837
    return-void
.end method
