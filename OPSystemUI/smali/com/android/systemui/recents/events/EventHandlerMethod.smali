.class Lcom/android/systemui/recents/events/EventHandlerMethod;
.super Ljava/lang/Object;
.source "EventBus.java"


# instance fields
.field eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/recents/events/EventBus$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/recents/events/EventBus$Event;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/systemui/recents/events/EventHandlerMethod;->mMethod:Ljava/lang/reflect/Method;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventHandlerMethod;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 99
    iput-object p2, p0, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    .line 100
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventHandlerMethod;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/events/EventHandlerMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
