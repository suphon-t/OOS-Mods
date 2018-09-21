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

    .line 102
    iput-object p1, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 5
    .param p1, "why"    # I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 128
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onFinishedGoingToSleep(I)V

    .line 127
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 5
    .param p1, "bouncer"    # Z

    .line 146
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 147
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onKeyguardBouncerChanged(Z)V

    .line 146
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .line 155
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 156
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onKeyguardVisibilityChanged(Z)V

    .line 155
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 137
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 138
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onScreenTurnedOff()V

    .line 137
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 5
    .param p1, "why"    # I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 119
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onStartedGoingToSleep(I)V

    .line 118
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/plugin/LSState;->access$102(Lcom/android/systemui/plugin/LSState;Z)Z

    .line 107
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState$1;->this$0:Lcom/android/systemui/plugin/LSState;

    iget-object v0, v0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 108
    .local v3, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onStartedWakingUp()V

    .line 107
    .end local v3    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method
