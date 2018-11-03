.class public Lcom/android/systemui/recents/events/EventBus;
.super Landroid/content/BroadcastReceiver;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;,
        Lcom/android/systemui/recents/events/EventBus$ReusableEvent;,
        Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;,
        Lcom/android/systemui/recents/events/EventBus$Event;
    }
.end annotation


# static fields
.field private static final EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mEventTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/recents/events/EventBus$Event;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInterprocessEventNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriberTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/events/EventHandlerMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscribers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/events/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 366
    new-instance v0, Lcom/android/systemui/recents/events/EventBus$1;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/EventBus$1;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/events/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    .line 380
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/events/EventBus;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 422
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    .line 423
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    .line 424
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/events/EventBus;
    .param p1, "x1"    # Lcom/android/systemui/recents/events/EventHandler;
    .param p2, "x2"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/events/EventBus;->processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private findRegisteredSubscriber(Ljava/lang/Object;Z)Z
    .locals 4
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "removeFoundSubscriber"    # Z

    .line 928
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 929
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/events/Subscriber;

    .line 930
    .local v2, "sub":Lcom/android/systemui/recents/events/Subscriber;
    invoke-virtual {v2}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 931
    if-eqz p2, :cond_0

    .line 932
    iget-object v3, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 934
    :cond_0
    return v1

    .line 928
    .end local v2    # "sub":Lcom/android/systemui/recents/events/Subscriber;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 937
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefault()Lcom/android/systemui/recents/events/EventBus;
    .locals 3

    .line 430
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    if-nez v0, :cond_1

    .line 431
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    if-nez v1, :cond_0

    .line 436
    new-instance v1, Lcom/android/systemui/recents/events/EventBus;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/EventBus;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    .line 438
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 439
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    return-object v0
.end method

.method private isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p3, "isInterprocessEventOut"    # Landroid/util/MutableBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/util/MutableBoolean;",
            ")Z"
        }
    .end annotation

    .line 945
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 946
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 947
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, p2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 950
    const-class v1, Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;

    aget-object v4, p2, v2

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "onInterprocessBusEvent"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z

    .line 953
    return v3

    .line 954
    :cond_0
    const-class v1, Lcom/android/systemui/recents/events/EventBus$Event;

    aget-object v4, p2, v2

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "onBusEvent"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 956
    iput-boolean v2, p3, Landroid/util/MutableBoolean;->value:Z

    .line 957
    return v3

    .line 979
    :cond_1
    return v2
.end method

.method private static logWithPid(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 993
    const-string v0, "EventBus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return-void
.end method

.method private processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 4
    .param p1, "eventHandler"    # Lcom/android/systemui/recents/events/EventHandler;
    .param p2, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .line 865
    iget-boolean v0, p2, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    if-eqz v0, :cond_1

    .line 866
    iget-boolean v0, p2, Lcom/android/systemui/recents/events/EventBus$Event;->trace:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    const-string v0, "Event dispatch cancelled"

    invoke-static {v0}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 869
    :goto_0
    return-void

    .line 873
    :cond_1
    :try_start_0
    iget-boolean v0, p2, Lcom/android/systemui/recents/events/EventBus$Event;->trace:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 874
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 876
    :goto_1
    iget-object v0, p1, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v0}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v0

    .line 877
    .local v0, "sub":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 878
    const-wide/16 v1, 0x0

    .line 882
    .local v1, "t1":J
    iget-object v3, p1, Lcom/android/systemui/recents/events/EventHandler;->method:Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-virtual {v3, v0, p2}, Lcom/android/systemui/recents/events/EventHandlerMethod;->invoke(Ljava/lang/Object;Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 890
    .end local v1    # "t1":J
    goto :goto_2

    .line 891
    :cond_3
    const-string v1, "EventBus"

    const-string v2, "Failed to deliver event to null subscriber"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "sub":Ljava/lang/Object;
    goto :goto_2

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 893
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "EventBus"

    const-string v2, "Failed to invoke method"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    nop

    .line 898
    return-void
.end method

.method private queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .line 811
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 812
    .local v0, "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    if-nez v0, :cond_0

    .line 816
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPreDispatch()V

    .line 817
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    .line 818
    return-void

    .line 822
    :cond_0
    const/4 v1, 0x0

    .line 823
    .local v1, "hasPostedEvent":Z
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPreDispatch()V

    .line 827
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    .line 828
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 829
    .local v2, "eventHandlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 830
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/events/EventHandler;

    .line 831
    .local v4, "eventHandler":Lcom/android/systemui/recents/events/EventHandler;
    iget-object v5, v4, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v5}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 832
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    if-eqz v5, :cond_1

    .line 833
    iget-object v5, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recents/events/EventBus$4;

    invoke-direct {v6, p0, v4, p1}, Lcom/android/systemui/recents/events/EventBus$4;-><init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    const/4 v1, 0x1

    goto :goto_1

    .line 841
    :cond_1
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/recents/events/EventBus;->processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 829
    .end local v4    # "eventHandler":Lcom/android/systemui/recents/events/EventHandler;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    .end local v3    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 848
    iget-object v3, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/recents/events/EventBus$5;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/recents/events/EventBus$5;-><init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 855
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    .line 857
    :goto_2
    return-void
.end method

.method private registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V
    .locals 23
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I
    .param p3, "hasInterprocessEventsChangedOut"    # Landroid/util/MutableBoolean;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 717
    move-object/from16 v4, p3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    .line 718
    .local v5, "callingThreadId":J
    iget-object v0, v1, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_8

    .line 723
    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/recents/events/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 724
    return-void

    .line 727
    :cond_0
    const-wide/16 v7, 0x0

    .line 732
    .local v7, "t1":J
    new-instance v9, Lcom/android/systemui/recents/events/Subscriber;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v2, v10, v11}, Lcom/android/systemui/recents/events/Subscriber;-><init>(Ljava/lang/Object;J)V

    .line 733
    .local v9, "sub":Lcom/android/systemui/recents/events/Subscriber;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 734
    .local v10, "subscriberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v11, v1, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 735
    .local v11, "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    if-eqz v11, :cond_2

    .line 742
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/events/EventHandlerMethod;

    .line 743
    .local v12, "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    iget-object v13, v1, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v14, v12, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 744
    .local v13, "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    new-instance v14, Lcom/android/systemui/recents/events/EventHandler;

    invoke-direct {v14, v9, v12, v3}, Lcom/android/systemui/recents/events/EventHandler;-><init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-direct {v1, v13}, Lcom/android/systemui/recents/events/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    .line 746
    .end local v12    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    .end local v13    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    return-void

    .line 756
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 757
    iget-object v12, v1, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v12, v1, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v12, Landroid/util/MutableBoolean;

    invoke-direct {v12, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 763
    .local v12, "isInterprocessEvent":Landroid/util/MutableBoolean;
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    .line 764
    .local v13, "methods":[Ljava/lang/reflect/Method;
    array-length v14, v13

    move v15, v0

    :goto_1
    if-ge v15, v14, :cond_7

    aget-object v2, v13, v15

    .line 765
    .local v2, "m":Ljava/lang/reflect/Method;
    move-wide/from16 v16, v5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 766
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v16, "callingThreadId":J
    iput-boolean v0, v12, Landroid/util/MutableBoolean;->value:Z

    .line 767
    invoke-direct {v1, v2, v5, v12}, Lcom/android/systemui/recents/events/EventBus;->isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 768
    aget-object v6, v5, v0

    .line 769
    .local v6, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$Event;>;"
    iget-object v0, v1, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 770
    .local v0, "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    if-nez v0, :cond_3

    .line 771
    move-object/from16 v19, v0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .local v19, "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .end local v19    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .restart local v0    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    move-object/from16 v20, v5

    iget-object v5, v1, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v20, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    move-object v5, v0

    goto :goto_2

    .end local v20    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    .end local v0    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .local v5, "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .restart local v20    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_2
    iget-boolean v0, v12, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_5

    .line 777
    const/4 v0, 0x1

    move-wide/from16 v21, v7

    :try_start_0
    new-array v7, v0, [Ljava/lang/Class;

    .end local v7    # "t1":J
    .local v21, "t1":J
    const-class v8, Landroid/os/Bundle;

    const/16 v18, 0x0

    aput-object v8, v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 779
    iget-object v7, v1, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    if-eqz v4, :cond_4

    .line 782
    iput-boolean v0, v4, Landroid/util/MutableBoolean;->value:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :cond_4
    goto :goto_3

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Expected InterprocessEvent to have a Bundle constructor"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 788
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v21    # "t1":J
    .restart local v7    # "t1":J
    :cond_5
    move-wide/from16 v21, v7

    const/16 v18, 0x0

    .end local v7    # "t1":J
    .restart local v21    # "t1":J
    :goto_3
    new-instance v0, Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-direct {v0, v2, v6}, Lcom/android/systemui/recents/events/EventHandlerMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 789
    .local v0, "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    new-instance v7, Lcom/android/systemui/recents/events/EventHandler;

    invoke-direct {v7, v9, v0, v3}, Lcom/android/systemui/recents/events/EventHandler;-><init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V

    .line 790
    .local v7, "handler":Lcom/android/systemui/recents/events/EventHandler;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-direct {v1, v5}, Lcom/android/systemui/recents/events/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    .end local v0    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v6    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$Event;>;"
    .end local v7    # "handler":Lcom/android/systemui/recents/events/EventHandler;
    .end local v20    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_4

    .line 764
    .end local v21    # "t1":J
    .local v7, "t1":J
    :cond_6
    move/from16 v18, v0

    move-wide/from16 v21, v7

    .end local v7    # "t1":J
    .restart local v21    # "t1":J
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v5, v16

    move/from16 v0, v18

    move-wide/from16 v7, v21

    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 805
    .end local v16    # "callingThreadId":J
    .end local v21    # "t1":J
    .local v5, "callingThreadId":J
    .restart local v7    # "t1":J
    :cond_7
    move-wide/from16 v16, v5

    move-wide/from16 v21, v7

    .end local v5    # "callingThreadId":J
    .end local v7    # "t1":J
    .restart local v16    # "callingThreadId":J
    .restart local v21    # "t1":J
    return-void

    .line 719
    .end local v9    # "sub":Lcom/android/systemui/recents/events/Subscriber;
    .end local v10    # "subscriberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    .end local v12    # "isInterprocessEvent":Landroid/util/MutableBoolean;
    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .end local v16    # "callingThreadId":J
    .end local v21    # "t1":J
    .restart local v5    # "callingThreadId":J
    :cond_8
    move-wide/from16 v16, v5

    .end local v5    # "callingThreadId":J
    .restart local v16    # "callingThreadId":J
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can not register() a subscriber from a non-main thread."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sortEventHandlersByPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;)V"
        }
    .end annotation

    .line 986
    .local p1, "eventHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/events/EventHandler;>;"
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 987
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->dumpInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public dumpInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "prefix"    # Ljava/lang/String;

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "innerInnerPrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v2, "output":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v3, "Registered class types:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 668
    .local v3, "subsciberTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v4, Lcom/android/systemui/recents/events/EventBus$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/events/EventBus$2;-><init>(Lcom/android/systemui/recents/events/EventBus;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 674
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 675
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 676
    .local v6, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .end local v6    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 680
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v5, "Event map:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 684
    .local v5, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v6, Lcom/android/systemui/recents/events/EventBus$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/events/EventBus$3;-><init>(Lcom/android/systemui/recents/events/EventBus;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 690
    nop

    .local v4, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 691
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 692
    .restart local v6    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string v7, " -> "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    iget-object v7, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 697
    .local v7, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/events/EventHandler;

    .line 698
    .local v9, "handler":Lcom/android/systemui/recents/events/EventHandler;
    iget-object v10, v9, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v10}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v10

    .line 699
    .local v10, "subscriber":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 700
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 701
    .local v11, "id":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " [0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const-string v12, "\n"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .end local v9    # "handler":Lcom/android/systemui/recents/events/EventHandler;
    .end local v10    # "subscriber":Ljava/lang/Object;
    .end local v11    # "id":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 690
    .end local v6    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 708
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 640
    const-string v0, "interprocess_event_bundle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 641
    .local v0, "eventBundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 643
    .local v1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;>;"
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 644
    .local v3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;>;"
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;>;"
    goto :goto_0

    .line 645
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    const-string v3, "EventBus"

    const-string v4, "Failed to create InterprocessEvent"

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-void
.end method

.method public post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    .line 586
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 587
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/Object;

    .line 450
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    .line 451
    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    .line 464
    return-void
.end method

.method public send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .line 559
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 560
    .local v0, "callingThreadId":J
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 569
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    .line 570
    iput-boolean v2, p1, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    .line 571
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 572
    return-void

    .line 561
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can not send() a message from a non-main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .line 594
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 595
    .local v0, "callingThreadId":J
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 600
    :goto_0
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/Object;

    .line 514
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 515
    .local v0, "callingThreadId":J
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 520
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/recents/events/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    return-void

    .line 524
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 525
    .local v3, "subscriberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 526
    .local v4, "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    if-eqz v4, :cond_3

    .line 529
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/events/EventHandlerMethod;

    .line 530
    .local v6, "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    iget-object v7, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 531
    .local v7, "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    .line 532
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/events/EventHandler;

    iget-object v9, v9, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v9}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, p1, :cond_1

    .line 533
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 531
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 536
    .end local v6    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    .end local v7    # "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v8    # "i":I
    :cond_2
    goto :goto_0

    .line 538
    :cond_3
    return-void

    .line 516
    .end local v3    # "subscriberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can not unregister() a subscriber from a non-main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
