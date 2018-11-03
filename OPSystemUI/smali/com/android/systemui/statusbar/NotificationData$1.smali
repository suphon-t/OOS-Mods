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

    .line 416
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 418
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

    .line 422
    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 423
    .local v3, "na":Landroid/service/notification/StatusBarNotification;
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 424
    .local v4, "nb":Landroid/service/notification/StatusBarNotification;
    const/4 v5, 0x3

    .line 425
    .local v5, "aImportance":I
    const/4 v6, 0x3

    .line 426
    .local v6, "bImportance":I
    const/4 v7, 0x0

    .line 427
    .local v7, "aRank":I
    const/4 v8, 0x0

    .line 429
    .local v8, "bRank":I
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationData;->access$000(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 431
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 432
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 433
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v5

    .line 434
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    .line 435
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v7

    .line 436
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    .line 439
    :cond_0
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationData;->access$100(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v9

    .line 442
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

    .line 444
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

    .line 447
    .local v13, "bMedia":Z
    :goto_1
    const/4 v14, 0x4

    if-lt v5, v14, :cond_3

    .line 448
    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v15

    if-eqz v15, :cond_3

    move v15, v12

    goto :goto_2

    :cond_3
    move v15, v11

    .line 449
    .local v15, "aSystemMax":Z
    :goto_2
    if-lt v6, v14, :cond_4

    .line 450
    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v11, v12

    nop

    .line 452
    .local v11, "bSystemMax":Z
    :cond_4
    iget-object v14, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v14

    .line 453
    .local v14, "isHeadsUp":Z
    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v12

    const/16 v17, -0x1

    if-eq v14, v12, :cond_6

    .line 454
    if-eqz v14, :cond_5

    move/from16 v16, v17

    goto :goto_3

    :cond_5
    const/16 v16, 0x1

    :goto_3
    return v16

    .line 455
    :cond_6
    if-eqz v14, :cond_7

    .line 457
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->access$300(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v12

    return v12

    .line 458
    :cond_7
    if-eq v10, v13, :cond_9

    .line 460
    if-eqz v10, :cond_8

    move/from16 v16, v17

    goto :goto_4

    :cond_8
    const/16 v16, 0x1

    :goto_4
    return v16

    .line 461
    :cond_9
    if-eq v15, v11, :cond_b

    .line 463
    if-eqz v15, :cond_a

    move/from16 v16, v17

    goto :goto_5

    :cond_a
    const/16 v16, 0x1

    :goto_5
    return v16

    .line 464
    :cond_b
    if-eq v7, v8, :cond_c

    .line 465
    sub-int v12, v7, v8

    return v12

    .line 467
    :cond_c
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

    .line 416
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result p1

    return p1
.end method
