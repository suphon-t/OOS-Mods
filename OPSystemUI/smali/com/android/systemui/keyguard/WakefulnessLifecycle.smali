.class public Lcom/android/systemui/keyguard/WakefulnessLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "WakefulnessLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/Lifecycle<",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mWakefulness:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    return-void
.end method

.method private setWakefulness(I)V
    .locals 3
    .param p1, "wakefulness"    # I

    .line 82
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 83
    const-string/jumbo v0, "wakefulness"

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 84
    return-void
.end method


# virtual methods
.method public dispatchFinishedGoingToSleep()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 72
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$AKoGNPXjF07Pzc3_fzdQTCHgk6E;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$AKoGNPXjF07Pzc3_fzdQTCHgk6E;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 73
    return-void
.end method

.method public dispatchFinishedWakingUp()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 56
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$v8UUYbN3IpgugNoVVCKp-k3ABDI;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$v8UUYbN3IpgugNoVVCKp-k3ABDI;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 57
    return-void
.end method

.method public dispatchStartedGoingToSleep()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 64
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$ASgSeR7gTZT1Q2JGNWCU20EppLY;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$ASgSeR7gTZT1Q2JGNWCU20EppLY;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 65
    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 48
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$TPhVA13qrDBGFKbgQpRNBPBvAqI;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$TPhVA13qrDBGFKbgQpRNBPBvAqI;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 49
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 77
    const-string v0, "WakefulnessLifecycle:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWakefulness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public getWakefulness()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    return v0
.end method
