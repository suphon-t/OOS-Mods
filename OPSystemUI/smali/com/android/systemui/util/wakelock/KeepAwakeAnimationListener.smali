.class public Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeepAwakeAnimationListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field static sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 34
    sget-object v0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "animation"

    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 37
    :cond_0
    return-void
.end method

.method private onEnd()V
    .locals 1

    .line 70
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 71
    sget-object v0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    .line 72
    return-void
.end method

.method private onStart()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 66
    sget-object v0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    .line 67
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onEnd()V

    .line 62
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onEnd()V

    .line 47
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 52
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onStart()V

    .line 57
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onStart()V

    .line 42
    return-void
.end method
