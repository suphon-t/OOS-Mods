.class Lcom/android/systemui/keyguard/KeyguardViewMediator$5;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .line 1784
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1787
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 1872
    :pswitch_0
    const-string v0, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay notifyDrawn callback for boot by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1874
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1875
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1876
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1877
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    goto/16 :goto_2

    .line 1852
    :pswitch_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "START_KEYGUARD_EXIT_ANIM_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1867
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1868
    goto/16 :goto_2

    .line 1803
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1804
    goto/16 :goto_2

    .line 1819
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1820
    goto/16 :goto_2

    .line 1814
    :pswitch_5
    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNED_ON"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1816
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1817
    goto/16 :goto_2

    .line 1822
    :pswitch_6
    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1824
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1825
    goto/16 :goto_2

    .line 1862
    :pswitch_7
    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1863
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Timeout while waiting for activity drawn!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1865
    goto/16 :goto_2

    .line 1855
    :goto_0
    :pswitch_8
    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1856
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1857
    .local v0, "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5200(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    .line 1858
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onSucccessfulUnlock()V

    .line 1859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1860
    goto/16 :goto_2

    .line 1847
    .end local v0    # "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    .line 1848
    .local v0, "message":Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->getCallback()Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->getMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1849
    goto/16 :goto_2

    .line 1842
    .end local v0    # "message":Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 1843
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1844
    monitor-exit v0

    .line 1845
    goto/16 :goto_2

    .line 1844
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1837
    :pswitch_b
    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1838
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    move v1, v3

    nop

    :cond_1
    invoke-static {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 1839
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1840
    goto :goto_2

    .line 1832
    :pswitch_c
    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1834
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1835
    goto :goto_2

    .line 1827
    :pswitch_d
    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1829
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1830
    goto :goto_2

    .line 1809
    :pswitch_e
    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNING_ON"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1811
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1812
    goto :goto_2

    .line 1806
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1807
    goto :goto_2

    .line 1798
    :pswitch_10
    const-string v0, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1800
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1801
    goto :goto_2

    .line 1795
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1796
    goto :goto_2

    .line 1792
    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1793
    goto :goto_2

    .line 1789
    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1790
    nop

    .line 1882
    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
