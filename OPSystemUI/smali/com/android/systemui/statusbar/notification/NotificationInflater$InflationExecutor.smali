.class Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;
.super Ljava/lang/Object;
.source "NotificationInflater.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflationExecutor"
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 724
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CPU_COUNT:I

    .line 728
    sget v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CORE_POOL_SIZE:I

    .line 729
    sget v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CPU_COUNT:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->MAXIMUM_POOL_SIZE:I

    .line 732
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CORE_POOL_SIZE:I

    sget v2, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->MAXIMUM_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 747
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$1;

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 752
    return-void
.end method
