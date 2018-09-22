.class public Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSpaceBroadcastReceiver.java"


# instance fields
.field private final mController:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0
    .param p1, "controller"    # Lcom/google/android/systemui/smartspace/SmartSpaceController;

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;->mController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    .line 46
    return-void
.end method

.method private notify(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 11
    .param p1, "updateCard"    # Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "isPrimaryCard"    # Z

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 97
    .local v7, "publishTime":J
    const/4 v0, 0x0

    .line 99
    .local v0, "gsaInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SmartSpaceReceiver"

    const-string v3, "Cannot find GSA"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "gsaInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v9, "gsaInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    move-object v9, v0

    new-instance v10, Lcom/google/android/systemui/smartspace/NewCardInfo;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-wide v4, v7

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/NewCardInfo;-><init>(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V

    .line 105
    .local v0, "newCard":Lcom/google/android/systemui/smartspace/NewCardInfo;
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;->mController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onNewCard(Lcom/google/android/systemui/smartspace/NewCardInfo;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p1

    .line 50
    move-object/from16 v2, p2

    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "SmartSpaceReceiver"

    const-string v3, "receiving update"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 56
    .local v3, "myUserId":I
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 57
    const-string v5, "rebroadcast"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    return-void

    .line 60
    :cond_1
    const-string v0, "rebroadcast"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const-string v0, "uid"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 63
    return-void

    .line 64
    :cond_2
    const-string v5, "uid"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 65
    const-string v5, "uid"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    :cond_3
    const-string v5, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CARD"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 69
    .local v5, "bytes":[B
    if-eqz v5, :cond_9

    .line 70
    new-instance v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;

    invoke-direct {v6}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;-><init>()V

    .line 72
    .local v6, "proto":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;
    :try_start_0
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 73
    iget-object v7, v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    array-length v8, v7

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 74
    .local v10, "card":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    iget v11, v10, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardPriority:I

    if-ne v11, v4, :cond_4

    move v11, v4

    goto :goto_1

    :cond_4
    move v11, v0

    .line 76
    .local v11, "isPrimary":Z
    :goto_1
    iget v12, v10, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardPriority:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    move v12, v4

    goto :goto_2

    :cond_5
    move v12, v0

    .line 78
    .local v12, "isSecondary":Z
    :goto_2
    if-nez v11, :cond_7

    if-eqz v12, :cond_6

    goto :goto_3

    .line 81
    :cond_6
    const-string v13, "SmartSpaceReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unrecognized card priority: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v10, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardPriority:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .end local v10    # "card":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    .end local v11    # "isPrimary":Z
    .end local v12    # "isSecondary":Z
    move-object/from16 v13, p0

    goto :goto_4

    .line 79
    .restart local v10    # "card":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    .restart local v11    # "isPrimary":Z
    .restart local v12    # "isSecondary":Z
    :cond_7
    :goto_3
    move-object/from16 v13, p0

    :try_start_1
    invoke-direct {v13, v10, v1, v2, v11}, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;->notify(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Context;Landroid/content/Intent;Z)V
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .end local v10    # "card":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    .end local v11    # "isPrimary":Z
    .end local v12    # "isSecondary":Z
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_5

    .line 86
    :cond_8
    move-object/from16 v13, p0

    goto :goto_6

    .line 84
    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    .line 85
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :goto_5
    const-string v4, "SmartSpaceReceiver"

    const-string v7, "proto"

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .end local v6    # "proto":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;
    :goto_6
    goto :goto_7

    .line 88
    :cond_9
    move-object/from16 v13, p0

    const-string v0, "SmartSpaceReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiving update with no proto: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_7
    return-void
.end method
