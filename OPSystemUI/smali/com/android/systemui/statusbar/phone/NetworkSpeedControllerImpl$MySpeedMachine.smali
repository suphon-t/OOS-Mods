.class Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;
.super Ljava/lang/Object;
.source "NetworkSpeedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySpeedMachine"
.end annotation


# instance fields
.field incrementRxBytes:J

.field incrementTxBytes:J

.field isTurnOn:Z

.field mIsFirstLoadTether:Z

.field oldRxBytes:J

.field oldTetherRxBytes:J

.field oldTetherTxBytes:J

.field oldTxBytes:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 2

    .line 345
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 335
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 336
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 337
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 338
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    .line 340
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 341
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    .line 342
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    .line 347
    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->updateSpeedonBG()V

    return-void
.end method

.method private updateSpeedonBG()V
    .locals 24

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1100(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 351
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v1

    .line 352
    .local v1, "totalTxBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    .line 353
    .local v3, "totalRxBytes":J
    iget-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    sub-long v5, v1, v5

    iput-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 354
    iget-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    sub-long v5, v3, v5

    iput-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 355
    iput-wide v1, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 356
    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 357
    const-wide/16 v5, 0x0

    .line 358
    .local v5, "incrementTetherTxBytes":J
    const-wide/16 v7, 0x0

    .line 360
    .local v7, "incrementTetherRxBytes":J
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1200(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v9, :cond_0

    .line 361
    iput-wide v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 362
    iput-wide v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    .line 363
    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    .line 387
    move-wide/from16 v20, v3

    goto/16 :goto_2

    .line 365
    :cond_0
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)[J

    move-result-object v9

    .line 366
    .local v9, "bytes":[J
    if-eqz v9, :cond_1

    array-length v14, v9

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 367
    aget-wide v14, v9, v11

    .line 368
    .local v14, "tetherRxBytes":J
    aget-wide v12, v9, v10

    .line 369
    .local v12, "tetherTxBytes":J
    move-wide/from16 v16, v5

    iget-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .end local v5    # "incrementTetherTxBytes":J
    .local v16, "incrementTetherTxBytes":J
    sub-long v5, v12, v5

    .line 370
    .end local v16    # "incrementTetherTxBytes":J
    .restart local v5    # "incrementTetherTxBytes":J
    move-wide/from16 v18, v12

    iget-wide v11, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    .end local v12    # "tetherTxBytes":J
    .local v18, "tetherTxBytes":J
    sub-long v7, v14, v11

    .line 371
    move-wide/from16 v10, v18

    iput-wide v10, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 372
    .end local v18    # "tetherTxBytes":J
    .local v10, "tetherTxBytes":J
    iput-wide v14, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    .end local v10    # "tetherTxBytes":J
    .end local v14    # "tetherRxBytes":J
    goto :goto_0

    .line 374
    :cond_1
    move-wide/from16 v16, v5

    .end local v5    # "incrementTetherTxBytes":J
    .restart local v16    # "incrementTetherTxBytes":J
    move-wide/from16 v5, v16

    .end local v16    # "incrementTetherTxBytes":J
    .restart local v5    # "incrementTetherTxBytes":J
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetWorkSpeed TetherTx:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v13

    int-to-long v13, v13

    div-long v13, v5, v13

    invoke-static {v12, v13, v14}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " tTetherRx:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v13

    int-to-long v13, v13

    div-long v13, v7, v13

    invoke-static {v12, v13, v14}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " systemTx:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    iget-wide v13, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 375
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v15

    move-wide/from16 v20, v3

    int-to-long v3, v15

    .end local v3    # "totalRxBytes":J
    .local v20, "totalRxBytes":J
    div-long/2addr v13, v3

    invoke-static {v12, v13, v14}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " systemRx:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    iget-wide v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v4

    int-to-long v14, v4

    div-long/2addr v12, v14

    invoke-static {v3, v12, v13}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 377
    .end local v20    # "totalRxBytes":J
    .restart local v3    # "totalRxBytes":J
    :cond_2
    move-wide/from16 v20, v3

    .end local v3    # "totalRxBytes":J
    .restart local v20    # "totalRxBytes":J
    :goto_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    if-eqz v3, :cond_3

    .line 378
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    goto :goto_2

    .line 381
    :cond_3
    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 387
    .end local v9    # "bytes":[J
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1800(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 388
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetWorkSpeed is first load."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_4
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 390
    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 391
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1802(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Z)Z

    goto :goto_3

    .line 393
    :cond_5
    const-wide/16 v3, 0x0

    :goto_3
    iget-wide v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    cmp-long v9, v9, v3

    if-gez v9, :cond_6

    .line 394
    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 396
    :cond_6
    iget-wide v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    cmp-long v9, v9, v3

    if-gez v9, :cond_7

    .line 397
    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 399
    :cond_7
    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    iget-wide v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_8

    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    goto :goto_4

    :cond_8
    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 400
    .local v3, "incrementBytes":J
    :goto_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v9

    int-to-long v9, v9

    div-long v9, v3, v9

    .line 401
    .local v9, "incrementPs":J
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v11, v9, v10}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v11

    .line 402
    .local v11, "speedstr":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 403
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NetWorkSpeed refresh totalTxBytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", totalRxBytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v20

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v20    # "totalRxBytes":J
    .local v14, "totalRxBytes":J
    move-wide/from16 v22, v1

    const-string v1, ", incrementPs="

    .end local v1    # "totalTxBytes":J
    .local v22, "totalTxBytes":J
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeed="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,incrementBytes:"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 405
    .end local v14    # "totalRxBytes":J
    .end local v22    # "totalTxBytes":J
    .restart local v1    # "totalTxBytes":J
    .restart local v20    # "totalRxBytes":J
    :cond_9
    move-wide/from16 v22, v1

    move-wide/from16 v14, v20

    .end local v1    # "totalTxBytes":J
    .end local v20    # "totalRxBytes":J
    .restart local v14    # "totalRxBytes":J
    .restart local v22    # "totalTxBytes":J
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 406
    .local v1, "message":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 407
    iput-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 409
    .end local v1    # "message":Landroid/os/Message;
    .end local v3    # "incrementBytes":J
    .end local v5    # "incrementTetherTxBytes":J
    .end local v7    # "incrementTetherRxBytes":J
    .end local v9    # "incrementPs":J
    .end local v11    # "speedstr":Ljava/lang/String;
    .end local v14    # "totalRxBytes":J
    .end local v22    # "totalTxBytes":J
    goto :goto_6

    .line 410
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 411
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 412
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "send MSG_CLOSE_NETWORTSPEED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v1    # "message":Landroid/os/Message;
    :goto_6
    return-void
.end method


# virtual methods
.method public isTurnOn()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 418
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 419
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 420
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 421
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 422
    return-void
.end method

.method public setTurnOff()V
    .locals 1

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    .line 430
    return-void
.end method

.method public setTurnOn()V
    .locals 1

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    .line 426
    return-void
.end method
