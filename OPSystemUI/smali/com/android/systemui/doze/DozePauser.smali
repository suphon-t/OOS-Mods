.class public Lcom/android/systemui/doze/DozePauser;
.super Ljava/lang/Object;
.source "DozePauser.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

.field private final mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/android/systemui/doze/DozePauser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/doze/DozePauser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "machine"    # Lcom/android/systemui/doze/DozeMachine;
    .param p3, "alarmManager"    # Landroid/app/AlarmManager;
    .param p4, "policy"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/systemui/doze/DozePauser;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 36
    new-instance v0, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozePauser$RaYrBg9_HgEkLP8ozxXkVSg4K5c;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$$Lambda$DozePauser$RaYrBg9_HgEkLP8ozxXkVSg4K5c;-><init>(Lcom/android/systemui/doze/DozePauser;)V

    sget-object v2, Lcom/android/systemui/doze/DozePauser;->TAG:Ljava/lang/String;

    invoke-direct {v0, p3, v1, v2, p1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozePauser;->mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

    .line 37
    iput-object p4, p0, Lcom/android/systemui/doze/DozePauser;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 38
    return-void
.end method

.method public static synthetic lambda$RaYrBg9_HgEkLP8ozxXkVSg4K5c(Lcom/android/systemui/doze/DozePauser;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozePauser;->onTimeout()V

    return-void
.end method

.method private onTimeout()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 55
    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/systemui/doze/DozeMachine$State;
    .param p2, "newState"    # Lcom/android/systemui/doze/DozeMachine$State;

    .line 42
    sget-object v0, Lcom/android/systemui/doze/DozePauser$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser;->mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser;->mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

    iget-object v2, p0, Lcom/android/systemui/doze/DozePauser;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v2, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)V

    .line 46
    nop

    .line 51
    :goto_0
    return-void
.end method
