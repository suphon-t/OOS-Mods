.class public Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NextAlarmControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 41
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->updateNextAlarm()V

    .line 47
    return-void
.end method

.method private fireNextAlarmChanged()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 78
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateNextAlarm()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->fireNextAlarmChanged()V

    .line 74
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 57
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 50
    const-string v0, "NextAlarmController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    const-string v0, "  mNextAlarm="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->updateNextAlarm()V

    .line 69
    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    return-void
.end method
