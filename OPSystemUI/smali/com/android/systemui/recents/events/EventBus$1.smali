.class Lcom/android/systemui/recents/events/EventBus$1;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/recents/events/EventHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventHandler;)I
    .locals 4
    .param p1, "h1"    # Lcom/android/systemui/recents/events/EventHandler;
    .param p2, "h2"    # Lcom/android/systemui/recents/events/EventHandler;

    .line 371
    iget v0, p1, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    iget v1, p2, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    if-eq v0, v1, :cond_0

    .line 372
    iget v0, p2, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    iget v1, p1, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    sub-int/2addr v0, v1

    return v0

    .line 374
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    iget-wide v0, v0, Lcom/android/systemui/recents/events/Subscriber;->registrationTime:J

    iget-object v2, p1, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    iget-wide v2, v2, Lcom/android/systemui/recents/events/Subscriber;->registrationTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 366
    check-cast p1, Lcom/android/systemui/recents/events/EventHandler;

    check-cast p2, Lcom/android/systemui/recents/events/EventHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/events/EventBus$1;->compare(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventHandler;)I

    move-result p1

    return p1
.end method
