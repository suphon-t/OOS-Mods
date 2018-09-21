.class Lcom/android/systemui/recents/events/EventBus$3;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/events/EventBus;->dumpInternal(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/events/EventBus;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/events/EventBus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/events/EventBus;

    .line 684
    iput-object p1, p0, Lcom/android/systemui/recents/events/EventBus$3;->this$0:Lcom/android/systemui/recents/events/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 687
    .local p1, "o1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "o2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 684
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/events/EventBus$3;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1
.end method
