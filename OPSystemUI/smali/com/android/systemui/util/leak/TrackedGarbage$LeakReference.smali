.class Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;
.super Ljava/lang/ref/WeakReference;
.source "TrackedGarbage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/TrackedGarbage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final createdUptimeMillis:J


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->clazz:Ljava/lang/Class;

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->createdUptimeMillis:J

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;

    .line 67
    iget-wide v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->createdUptimeMillis:J

    return-wide v0
.end method
