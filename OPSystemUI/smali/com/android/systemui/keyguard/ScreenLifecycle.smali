.class public Lcom/android/systemui/keyguard/ScreenLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "ScreenLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/Lifecycle<",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mScreenState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    return-void
.end method

.method private setScreenState(I)V
    .locals 3
    .param p1, "screenState"    # I

    .line 69
    iput p1, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 70
    const-string v0, "screenState"

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 71
    return-void
.end method


# virtual methods
.method public dispatchScreenTurnedOff()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 59
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$K8LiTMkPknhhclqjA2eboLxaGEU;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$K8LiTMkPknhhclqjA2eboLxaGEU;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 60
    return-void
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    .line 48
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 49
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 50
    return-void
.end method

.method public dispatchScreenTurningOff()V
    .locals 1

    .line 53
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 54
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 55
    return-void
.end method

.method public dispatchScreenTurningOn()V
    .locals 1

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 44
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$w9PiqN50NESCg48fJRhE_dJBSdc;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$w9PiqN50NESCg48fJRhE_dJBSdc;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 45
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 64
    const-string v0, "ScreenLifecycle:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public getScreenState()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    return v0
.end method
