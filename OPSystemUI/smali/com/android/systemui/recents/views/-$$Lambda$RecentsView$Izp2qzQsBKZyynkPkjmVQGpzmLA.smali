.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/RecentsView;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/model/TaskStack;

.field private final synthetic f$2:Lcom/android/systemui/shared/recents/model/Task;

.field private final synthetic f$3:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;->f$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;->f$1:Lcom/android/systemui/shared/recents/model/TaskStack;

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;->f$2:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p4, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;->f$3:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;->f$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;->f$1:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v2, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;->f$2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$Izp2qzQsBKZyynkPkjmVQGpzmLA;->f$3:Lcom/android/systemui/recents/views/TaskView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/recents/views/RecentsView;->lambda$startTaskActivity$2(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method
