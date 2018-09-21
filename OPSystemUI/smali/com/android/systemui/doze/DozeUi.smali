.class public Lcom/android/systemui/doze/DozeUi;
.super Ljava/lang/Object;
.source "DozeUi.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field private final mCanAnimateTransition:Z

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/doze/DozeHost;

.field private mKeyguardShowing:Z

.field private final mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastTimeTickElapsed:J

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "machine"    # Lcom/android/systemui/doze/DozeMachine;
    .param p4, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p5, "host"    # Lcom/android/systemui/doze/DozeHost;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p8, "keyguardUpdateMonitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/systemui/doze/DozeUi$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeUi$1;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    .line 69
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 72
    iput-object p5, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 73
    iput-object p6, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-virtual {p7}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    .line 75
    iput-object p7, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 76
    new-instance v0, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeUi$FO90hbI6xqXYUh2DtwuwM-uzJzs;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeUi$FO90hbI6xqXYUh2DtwuwM-uzJzs;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    const-string v2, "doze_time_tick"

    invoke-direct {v0, p2, v1, v2, p6}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p8, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/doze/DozeUi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeUi;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeUi;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeUi;)Lcom/android/systemui/doze/DozeMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeUi;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object v0
.end method

.method public static synthetic lambda$FO90hbI6xqXYUh2DtwuwM-uzJzs(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->onTimeTick()V

    return-void
.end method

.method static synthetic lambda$onTimeTick$0()V
    .locals 0

    .line 202
    return-void
.end method

.method private onTimeTick()V
    .locals 3

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object v2, Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;->INSTANCE:Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 205
    return-void
.end method

.method private pulseWhileDozing(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeUi$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeUi$2;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    .line 105
    return-void
.end method

.method private roundToNextMinute(J)J
    .locals 3
    .param p1, "timeInMillis"    # J

    .line 187
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 188
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 189
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 191
    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 193
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private scheduleTimeTick()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeUi;->roundToNextMinute(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 165
    .local v0, "delta":J
    iget-object v2, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)V

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    .line 167
    return-void
.end method

.method private unscheduleTimeTick()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 175
    return-void
.end method

.method private updateAnimateScreenOff()V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "controlScreenOff":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v1, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateScreenOff(Z)V

    .line 90
    .end local v0    # "controlScreenOff":Z
    :cond_1
    return-void
.end method

.method private updateAnimateWakeup(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/doze/DozeMachine$State;

    .line 144
    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    goto :goto_1

    .line 152
    :pswitch_0
    goto :goto_1

    .line 148
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0, v2}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    .line 149
    nop

    .line 157
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private verifyLastTimeTick()V
    .locals 6

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    sub-long/2addr v0, v2

    .line 179
    .local v0, "millisSinceLastTick":J
    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "delay":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/doze/DozeLog;->traceMissedTick(Ljava/lang/String;)V

    .line 182
    const-string v3, "DozeMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missed AOD time tick by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v2    # "delay":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object v0
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/systemui/doze/DozeMachine$State;
    .param p2, "newState"    # Lcom/android/systemui/doze/DozeMachine$State;

    .line 109
    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->startDozing()V

    .line 134
    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getPulseReason()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeUi;->pulseWhileDozing(I)V

    .line 131
    goto :goto_0

    .line 127
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->unscheduleTimeTick()V

    .line 128
    goto :goto_0

    .line 123
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 124
    goto :goto_0

    .line 111
    :pswitch_5
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;

    invoke-direct {v3, v2}, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;-><init>(Lcom/android/systemui/doze/DozeHost;)V

    invoke-interface {v1, v3}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;

    invoke-direct {v3, v2}, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;-><init>(Lcom/android/systemui/doze/DozeHost;)V

    invoke-interface {v1, v3}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 121
    nop

    .line 140
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeUi;->updateAnimateWakeup(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 141
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
