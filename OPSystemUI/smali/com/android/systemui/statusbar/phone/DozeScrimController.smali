.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Ljava/lang/Object;
.source "DozeScrimController.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mFullyPulsing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private final mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "DozeScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 1
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dozeParameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 162
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 84
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 85
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method private cancelPulsing()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    .line 139
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    .line 145
    :cond_1
    return-void
.end method

.method private pulseFinished()V
    .locals 1

    .line 155
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 160
    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    .line 148
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public extendPulse()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public isPulsing()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .line 97
    if-eqz p1, :cond_4

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 114
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    .line 117
    return-void

    .line 102
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 103
    const-string v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse supressed. Dozing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " had callback? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 108
    return-void

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pulseOutNow()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    :cond_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 89
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-nez v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    .line 93
    :cond_1
    return-void
.end method
