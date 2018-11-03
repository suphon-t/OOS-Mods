.class public Lcom/android/systemui/DejankUtils;
.super Ljava/lang/Object;
.source "DejankUtils.java"


# static fields
.field private static final sAnimationCallbackRunnable:Ljava/lang/Runnable;

.field private static final sChoreographer:Landroid/view/Choreographer;

.field private static final sHandler:Landroid/os/Handler;

.field private static sImmediate:Z

.field private static final sPendingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/DejankUtils;->sChoreographer:Landroid/view/Choreographer;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/android/systemui/DejankUtils$1;

    invoke-direct {v0}, Lcom/android/systemui/DejankUtils$1;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sAnimationCallbackRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static postAfterTraversal(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 59
    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sImmediate:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 64
    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/android/systemui/DejankUtils;->postAnimationCallback()V

    .line 66
    return-void
.end method

.method private static postAnimationCallback()V
    .locals 4

    .line 80
    sget-object v0, Lcom/android/systemui/DejankUtils;->sChoreographer:Landroid/view/Choreographer;

    sget-object v1, Lcom/android/systemui/DejankUtils;->sAnimationCallbackRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 74
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 75
    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public static setImmediate(Z)V
    .locals 0
    .param p0, "immediate"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 86
    sput-boolean p0, Lcom/android/systemui/DejankUtils;->sImmediate:Z

    .line 87
    return-void
.end method
