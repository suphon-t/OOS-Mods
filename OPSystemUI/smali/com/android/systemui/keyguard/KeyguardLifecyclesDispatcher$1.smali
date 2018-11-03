.class Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;
.super Landroid/os/Handler;
.source "KeyguardLifecyclesDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchFinishedGoingToSleep()V

    .line 79
    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchStartedGoingToSleep()V

    .line 76
    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchFinishedWakingUp()V

    .line 73
    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchStartedWakingUp()V

    .line 70
    goto :goto_0

    .line 66
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatchScreenTurnedOff()V

    .line 67
    goto :goto_0

    .line 63
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatchScreenTurningOff()V

    .line 64
    goto :goto_0

    .line 60
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatchScreenTurnedOn()V

    .line 61
    goto :goto_0

    .line 57
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatchScreenTurningOn()V

    .line 58
    nop

    .line 83
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
