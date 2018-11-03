.class public Lcom/android/systemui/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "DozeScreenState.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mApplyPendingScreenState:Ljava/lang/Runnable;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private final mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mPendingScreenState:I

.field private mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1
    .param p1, "service"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "parameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p4, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$eRrLSFQgxPfG2I_jJDfdCLwKzVE;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$eRrLSFQgxPfG2I_jJDfdCLwKzVE;-><init>(Lcom/android/systemui/doze/DozeScreenState;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 57
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 60
    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-direct {v0, p4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 61
    return-void
.end method

.method private applyPendingScreenState()V
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 122
    return-void
.end method

.method private applyScreenState(I)V
    .locals 3
    .param p1, "screenState"    # I

    .line 125
    if-eqz p1, :cond_1

    .line 126
    sget-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeScreenState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDozeScreenState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(I)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 129
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 131
    :cond_1
    return-void
.end method

.method public static synthetic lambda$eRrLSFQgxPfG2I_jJDfdCLwKzVE(Lcom/android/systemui/doze/DozeScreenState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenState;->applyPendingScreenState()V

    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 8
    .param p1, "oldState"    # Lcom/android/systemui/doze/DozeMachine$State;
    .param p2, "newState"    # Lcom/android/systemui/doze/DozeMachine$State;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2, v0}, Lcom/android/systemui/doze/DozeMachine$State;->screenState(Lcom/android/systemui/statusbar/phone/DozeParameters;)I

    move-result v0

    .line 67
    .local v0, "screenState":I
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 69
    iput v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 70
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 74
    return-void

    .line 77
    :cond_0
    if-nez v0, :cond_1

    .line 79
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 83
    .local v1, "messagePending":Z
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_2

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    .line 85
    .local v3, "pulseEnding":Z
    :goto_0
    if-nez v1, :cond_4

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v5, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    .line 115
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    goto/16 :goto_3

    .line 90
    :cond_4
    :goto_1
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 93
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 94
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v4

    nop

    .line 96
    .local v2, "shouldDelayTransition":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 97
    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 100
    :cond_6
    if-nez v1, :cond_a

    .line 101
    sget-boolean v5, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 102
    const-string v5, "DozeScreenState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display state changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " delayed by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    if-eqz v2, :cond_7

    const/16 v4, 0x1770

    nop

    :cond_7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_8
    if-eqz v2, :cond_9

    .line 107
    iget-object v4, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 109
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 111
    :cond_a
    sget-boolean v4, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz v4, :cond_b

    .line 112
    const-string v4, "DozeScreenState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pending display state change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v2    # "shouldDelayTransition":Z
    :cond_b
    :goto_2
    nop

    .line 117
    :goto_3
    return-void
.end method
