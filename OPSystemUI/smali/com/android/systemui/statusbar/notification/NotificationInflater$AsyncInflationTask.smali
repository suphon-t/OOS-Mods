.class public Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;
.super Landroid/os/AsyncTask;
.source "NotificationInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/InflationTask;
.implements Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncInflationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
        ">;",
        "Lcom/android/systemui/statusbar/InflationTask;",
        "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mContext:Landroid/content/Context;

.field private mError:Ljava/lang/Exception;

.field private final mIsChildInGroup:Z

.field private final mIsLowPriority:Z

.field private mReInflateFlags:I

.field private final mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final mSbn:Landroid/service/notification/StatusBarNotification;

.field private final mUsesIncreasedHeadsUpHeight:Z

.field private final mUsesIncreasedHeight:Z


# direct methods
.method private constructor <init>(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "reInflateFlags"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "isLowPriority"    # Z
    .param p5, "isChildInGroup"    # Z
    .param p6, "usesIncreasedHeight"    # Z
    .param p7, "usesIncreasedHeadsUpHeight"    # Z
    .param p8, "redactAmbient"    # Z
    .param p9, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p10, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 595
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 596
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 597
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 598
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    .line 600
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsLowPriority:Z

    .line 601
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsChildInGroup:Z

    .line 602
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    .line 603
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    .line 604
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    .line 605
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 606
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 607
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 608
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V

    .line 609
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p10, "x9"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p11, "x10"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$1;

    .line 573
    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 652
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "ident":Ljava/lang/String;
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t inflate view for notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    new-instance v3, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t inflate contentViews"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    .line 657
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 661
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->cancel(Z)Z

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 665
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 621
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 620
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 622
    .local v0, "recoveredBuilder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    .line 623
    .local v9, "packageContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    move-object v10, v1

    .line 624
    .local v10, "notification":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    new-instance v1, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v9}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 627
    .local v1, "processor":Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
    invoke-virtual {v1, v10, v0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V

    .line 629
    .end local v1    # "processor":Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsLowPriority:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsChildInGroup:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    move-object v2, v0

    move-object v8, v9

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->access$1600(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 633
    .end local v0    # "recoveredBuilder":Landroid/app/Notification$Builder;
    .end local v9    # "packageContext":Landroid/content/Context;
    .end local v10    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    .line 635
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 573
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object p1

    return-object p1
.end method

.method public doInflateSynchronous()Z
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->doInflateSynchronous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getReInflateFlags()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 613
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    return v0
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 677
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    .line 678
    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated()V

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 685
    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V
    .locals 7
    .param p1, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 642
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object v1, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    goto :goto_0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    .line 647
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 573
    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    return-void
.end method

.method public supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/statusbar/InflationTask;

    .line 669
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    if-eqz v0, :cond_0

    .line 671
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    .line 673
    :cond_0
    return-void
.end method
