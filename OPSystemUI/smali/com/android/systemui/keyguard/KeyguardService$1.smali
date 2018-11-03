.class Lcom/android/systemui/keyguard/KeyguardService$1;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardService;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 83
    return-void
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public notifyLidSwitchChanged(Z)V
    .locals 1
    .param p1, "lidOpen"    # Z

    .line 238
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyLidSwitchChanged(Z)V

    .line 240
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onBootCompleted()V

    .line 219
    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    .line 111
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    .line 117
    return-void
.end method

.method public onFinishedGoingToSleep(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "cameraGestureTriggered"    # Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onFinishedGoingToSleep(IZ)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 133
    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 2

    .line 146
    const-string v0, "KeyguardService.mBinder#onFinishedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 149
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 150
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOff()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 181
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 163
    const-string v0, "KeyguardService.mBinder#onScreenTurnedOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 167
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 168
    return-void
.end method

.method public onScreenTurningOff()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 174
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 154
    const-string v0, "KeyguardService.mBinder#onScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 159
    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onShortPowerPressedGoHome()V

    .line 233
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedGoingToSleep(I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 125
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 137
    const-string v0, "KeyguardService.mBinder#onStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedWakingUp()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 141
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 142
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .line 191
    const-string v0, "KeyguardService.mBinder#onSystemReady"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 194
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 195
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 211
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    .line 213
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 185
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 187
    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 1
    .param p1, "isOccluded"    # Z
    .param p2, "animate"    # Z

    .line 95
    const-string v0, "KeyguardService.mBinder#setOccluded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 98
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 99
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1
    .param p1, "switching"    # Z

    .line 205
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwitchingUser(Z)V

    .line 207
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .line 223
    const-string v0, "KeyguardService.mBinder#startKeyguardExitAnimation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 226
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 227
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 87
    const-string v0, "KeyguardService.mBinder#verifyUnlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 91
    return-void
.end method
