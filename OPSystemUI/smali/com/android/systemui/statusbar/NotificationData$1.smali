.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 443
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 445
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 19
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 449
    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 450
    .local v3, "na":Landroid/service/notification/StatusBarNotification;
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 451
    .local v4, "nb":Landroid/service/notification/StatusBarNotification;
    const/4 v5, 0x3

    .line 452
    .local v5, "aImportance":I
    const/4 v6, 0x3

    .line 453
    .local v6, "bImportance":I
    const/4 v7, 0x0

    .line 454
    .local v7, "aRank":I
    const/4 v8, 0x0

    .line 456
    .local v8, "bRank":I
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationData;->access$000(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 458
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 459
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 460
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v5

    .line 461
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    .line 462
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v7

    .line 463
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    .line 466
    :cond_0
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationData;->access$100(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v9

    .line 469
    .local v9, "mediaNotification":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    if-le v5, v12, :cond_1

    move v10, v12

    goto :goto_0

    :cond_1
    move v10, v11

    .line 471
    .local v10, "aMedia":Z
    :goto_0
    iget-object v13, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-le v6, v12, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    move v13, v11

    .line 474
    .local v13, "bMedia":Z
    :goto_1
    const/4 v14, 0x4

    if-lt v5, v14, :cond_3

    .line 475
    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v15

    if-eqz v15, :cond_3

    move v15, v12

    goto :goto_2

    :cond_3
    move v15, v11

    .line 476
    .local v15, "aSystemMax":Z
    :goto_2
    if-lt v6, v14, :cond_4

    .line 477
    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v11, v12

    nop

    .line 479
    .local v11, "bSystemMax":Z
    :cond_4
    iget-object v14, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v14

    .line 480
    .local v14, "isHeadsUp":Z
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v12

    const/16 v17, -0x1

    if-eq v14, v12, :cond_6

    .line 481
    if-eqz v14, :cond_5

    move/from16 v16, v17

    goto :goto_3

    :cond_5
    const/16 v16, 0x1

    :goto_3
    return v16

    .line 482
    :cond_6
    if-eqz v14, :cond_7

    .line 484
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->access$300(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v12

    return v12

    .line 487
    :cond_7
    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsGamingModeNotificaiton:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 488
    return v17

    .line 489
    :cond_8
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsGamingModeNotificaiton:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 490
    const/4 v12, 0x1

    return v12

    .line 492
    :cond_9
    const/4 v12, 0x1

    if-eq v10, v13, :cond_b

    .line 494
    if-eqz v10, :cond_a

    move/from16 v12, v17

    nop

    :cond_a
    return v12

    .line 495
    :cond_b
    if-eq v15, v11, :cond_d

    .line 497
    if-eqz v15, :cond_c

    move/from16 v12, v17

    nop

    :cond_c
    return v12

    .line 498
    :cond_d
    if-eq v7, v8, :cond_e

    .line 499
    sub-int v12, v7, v8

    return v12

    .line 501
    :cond_e
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-wide v0, v12, Landroid/app/Notification;->when:J

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    move-object/from16 v18, v3

    iget-wide v2, v12, Landroid/app/Notification;->when:J

    .end local v3    # "na":Landroid/service/notification/StatusBarNotification;
    .local v18, "na":Landroid/service/notification/StatusBarNotification;
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 443
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result p1

    return p1
.end method
