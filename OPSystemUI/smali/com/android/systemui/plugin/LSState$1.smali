.class Lcom/android/systemui/plugin/LSState$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/LSState;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/LSState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/LSState;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 5
    .param p1, "why"    # I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 132
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onFinishedGoingToSleep(I)V

    .line 131
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 5
    .param p1, "bouncer"    # Z

    .line 150
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 151
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onKeyguardBouncerChanged(Z)V

    .line 150
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .line 159
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 160
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onKeyguardVisibilityChanged(Z)V

    .line 159
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 141
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 142
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onScreenTurnedOff()V

    .line 141
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 5
    .param p1, "why"    # I

    .line 120
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 123
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onStartedGoingToSleep(I)V

    .line 122
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 111
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 112
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onStartedWakingUp()V

    .line 111
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method
