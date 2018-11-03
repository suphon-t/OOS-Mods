.class Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateImportanceRunnable"
.end annotation


# instance fields
.field private final mAppUid:I

.field private final mChannelToUpdate:Landroid/app/NotificationChannel;

.field private final mCurrentImportance:I

.field private final mINotificationManager:Landroid/app/INotificationManager;

.field private final mNewImportance:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;II)V
    .locals 0
    .param p1, "notificationManager"    # Landroid/app/INotificationManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appUid"    # I
    .param p4, "channelToUpdate"    # Landroid/app/NotificationChannel;
    .param p5, "currentImportance"    # I
    .param p6, "newImportance"    # I

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 560
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    .line 561
    iput p3, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    .line 562
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 563
    iput p5, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mCurrentImportance:I

    .line 564
    iput p6, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    .line 565
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto :goto_1

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;->mCurrentImportance:I

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_1
    goto :goto_2

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InfoGuts"

    const-string v2, "Unable to update notification importance"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method
