.class public Lcom/android/systemui/statusbar/NotificationInfo;
.super Landroid/widget/LinearLayout;
.source "NotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;,
        Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;,
        Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

.field private mChosenImportance:I

.field private mExitReason:Ljava/lang/String;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsForBlockingHelper:Z

.field private mIsForeground:Z

.field private mIsNonblockable:Z

.field private mIsSingleDefaultChannel:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNegativeUserSentiment:Z

.field private mNumUniqueChannelsInRow:I

.field private mOnKeepShowing:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;

.field private mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

.field private mOnUndo:Landroid/view/View$OnClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field private mStartingUserImportance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const-string v0, "blocking_helper_dismissed"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$OE4i5uy2V1VNOIOCPk_l9LEjxGg;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$OE4i5uy2V1VNOIOCPk_l9LEjxGg;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnKeepShowing:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$-_FAMjCKcojvnymBpf3GU21SM4A;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$-_FAMjCKcojvnymBpf3GU21SM4A;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$7kxiIPS-E1y-_HRLaUJLceph_TY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$7kxiIPS-E1y-_HRLaUJLceph_TY;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    .line 118
    return-void
.end method

.method private bindButtons()V
    .locals 12

    .line 330
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, "block":Landroid/view/View;
    const v1, 0x7f0a01b6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    .local v1, "keep":Landroid/widget/TextView;
    const v2, 0x7f0a023b

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 334
    .local v2, "minimize":Landroid/view/View;
    const v3, 0x7f0a0437

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnKeepShowing:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsNonblockable:Z

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    .line 340
    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 341
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 342
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForeground:Z

    if-eqz v3, :cond_1

    .line 344
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForeground:Z

    if-nez v3, :cond_2

    .line 347
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_2
    :goto_0
    const v3, 0x7f0a0060

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 353
    .local v3, "settingsLinkView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 354
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v10

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 353
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/statusbar/NotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 355
    .local v6, "settingsIntent":Landroid/content/Intent;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForBlockingHelper:Z

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 357
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 358
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const v5, 0x7f110407

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    new-instance v4, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 364
    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :goto_1
    return-void
.end method

.method private bindHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .line 209
    .local v0, "pkgicon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    const v3, 0xc2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 215
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 222
    :cond_0
    goto :goto_0

    .line 219
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const v1, 0x7f0a02f7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    const v1, 0x7f0a02f8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "groupName":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 231
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 230
    invoke-interface {v2, v3, v4, v5}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 232
    .local v2, "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 236
    .end local v2    # "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    :cond_1
    const v2, 0x7f0a0165

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 237
    .local v2, "groupNameView":Landroid/widget/TextView;
    const v3, 0x7f0a02f6

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 238
    .local v3, "groupDividerView":Landroid/widget/TextView;
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :goto_1
    const v6, 0x7f0a01a5

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 249
    .local v6, "settingsButton":Landroid/view/View;
    iget v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    if-ltz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;

    if-eqz v7, :cond_3

    .line 250
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 252
    .local v4, "appUidF":I
    new-instance v5, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .end local v4    # "appUidF":I
    goto :goto_2

    .line 261
    :cond_3
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :goto_2
    return-void
.end method

.method private bindName()V
    .locals 3

    .line 282
    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    .local v0, "channelName":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 284
    :cond_1
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :goto_1
    return-void
.end method

.method private bindPrompt()V
    .locals 3

    .line 266
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    .local v0, "blockPrompt":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->bindName()V

    .line 268
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsNonblockable:Z

    if-eqz v1, :cond_0

    .line 269
    const v1, 0x7f110423

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 271
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNegativeUserSentiment:Z

    if-eqz v1, :cond_1

    .line 272
    const v1, 0x7f1102b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 273
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 276
    :cond_2
    const v1, 0x7f1102b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 274
    :cond_3
    :goto_0
    const v1, 0x7f1102ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    :goto_1
    return-void
.end method

.method private getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 441
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 445
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 449
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    if-eqz p3, :cond_1

    .line 451
    const-string v3, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    :cond_1
    const-string v3, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const-string v3, "android.intent.extra.NOTIFICATION_TAG"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    return-object v0

    .line 446
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private hasImportanceChanged()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$FcHfx_eVn3zstWC-BeoEQcmo1DY(Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateImportance()V

    return-void
.end method

.method public static synthetic lambda$bindButtons$4(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1
    .param p1, "settingsIntent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public static synthetic lambda$bindHeader$3(Lcom/android/systemui/statusbar/NotificationInfo;ILandroid/view/View;)V
    .locals 3
    .param p1, "appUidF"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 254
    const-string v0, "blocking_helper_notif_settings"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;

    .line 257
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 256
    :goto_0
    invoke-interface {v0, p2, v1, p1}, Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    .line 259
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 100
    const-string v0, "blocking_helper_keep_showing"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationInfo;->closeControls(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 105
    const-string v0, "blocking_helper_stop_notifications"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->swapContent(Z)V

    .line 107
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 111
    const-string v0, "blocking_helper_dismissed"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 112
    const-string v0, "blocking_helper_undo"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->swapContent(Z)V

    .line 114
    return-void
.end method

.method private saveImportance()V
    .locals 3

    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsNonblockable:Z

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    if-eqz v0, :cond_0

    const-string v0, "blocking_helper_stop_notifications"

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$FcHfx_eVn3zstWC-BeoEQcmo1DY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$FcHfx_eVn3zstWC-BeoEQcmo1DY;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateImportance()V

    .line 313
    :cond_1
    :goto_0
    return-void
.end method

.method private swapContent(Z)V
    .locals 13
    .param p1, "showPrompt"    # Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 373
    :cond_0
    const v0, 0x7f0a031e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "prompt":Landroid/view/View;
    const v1, 0x7f0a00c6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 375
    .local v1, "confirmation":Landroid/view/ViewGroup;
    const v2, 0x7f0a00c7

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 376
    .local v2, "confirmationText":Landroid/widget/TextView;
    const v3, 0x7f0a017f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 378
    .local v3, "header":Landroid/view/View;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 379
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    iput v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    goto :goto_0

    .line 380
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForeground:Z

    if-eqz v6, :cond_2

    .line 381
    iput v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    .line 382
    const v6, 0x7f110411

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 384
    :cond_2
    iput v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    .line 385
    const v6, 0x7f11040e

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 388
    :goto_0
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v8, v7, [F

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v8, v5

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    move v11, v10

    goto :goto_1

    :cond_3
    move v11, v9

    :goto_1
    aput v11, v8, v4

    .line 388
    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 390
    .local v6, "promptAnim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_4

    sget-object v8, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    sget-object v8, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    .line 392
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v12

    aput v12, v11, v5

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v9, v10

    :goto_3
    aput v9, v11, v4

    .line 391
    invoke-static {v1, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 393
    .local v8, "confirmAnim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_6

    sget-object v9, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_6
    sget-object v9, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_4
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 395
    const/16 v9, 0x8

    if-eqz p1, :cond_7

    move v10, v5

    goto :goto_5

    :cond_7
    move v10, v9

    :goto_5
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 396
    if-eqz p1, :cond_8

    move v10, v9

    goto :goto_6

    :cond_8
    move v10, v5

    :goto_6
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    if-eqz p1, :cond_9

    move v9, v5

    nop

    :cond_9
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 399
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 400
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v6, v7, v5

    aput-object v8, v7, v4

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 401
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0x96

    invoke-virtual {v4, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 402
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/statusbar/NotificationInfo$1;

    invoke-direct {v5, p0, v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;ZLandroid/view/ViewGroup;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 419
    return-void
.end method

.method private updateImportance()V
    .locals 9

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    sub-int/2addr v1, v2

    const/16 v2, 0x123

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 322
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 323
    .local v0, "bgHandler":Landroid/os/Handler;
    new-instance v8, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 324
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;II)V

    .line 323
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method


# virtual methods
.method bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;Z)V
    .locals 13
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "iNotificationManager"    # Landroid/app/INotificationManager;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p5, "numUniqueChannelsInRow"    # I
    .param p6, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p7, "checkSaveListener"    # Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    .param p8, "onSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    .param p9, "onAppSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .param p10, "isNonblockable"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/statusbar/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;ZZZ)V

    .line 152
    return-void
.end method

.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;ZZZ)V
    .locals 17
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "iNotificationManager"    # Landroid/app/INotificationManager;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p5, "numUniqueChannelsInRow"    # I
    .param p6, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p7, "checkSaveListener"    # Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    .param p8, "onSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    .param p9, "onAppSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .param p10, "isNonblockable"    # Z
    .param p11, "isForBlockingHelper"    # Z
    .param p12, "isUserSentimentNegative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 168
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 169
    const-class v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 170
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 171
    move/from16 v3, p5

    iput v3, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 172
    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 173
    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 174
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

    .line 175
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 176
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    .line 177
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;

    .line 178
    move-object/from16 v9, p4

    iput-object v9, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 179
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v10

    iput v10, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    iput v10, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    .line 180
    move/from16 v10, p12

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNegativeUserSentiment:Z

    .line 181
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsNonblockable:Z

    .line 182
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 183
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, 0x40

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    move v12, v13

    :goto_0
    iput-boolean v12, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForeground:Z

    .line 184
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForBlockingHelper:Z

    .line 185
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v15

    iput v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 187
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    invoke-interface {v15, v1, v14, v13}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v14

    .line 189
    .local v14, "numTotalChannels":I
    iget v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    if-eqz v15, :cond_2

    .line 193
    iget v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v13, 0x1

    if-ne v15, v13, :cond_1

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 194
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v15

    const-string v13, "miscellaneous"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    if-ne v14, v13, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    iput-boolean v13, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->bindHeader()V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->bindPrompt()V

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->bindButtons()V

    .line 202
    return-void

    .line 190
    :cond_2
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bindNotification requires at least one channel"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method closeControls(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 469
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 470
    .local v1, "parentLoc":[I
    new-array v2, v0, [I

    .line 471
    .local v2, "targetLoc":[I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    .line 472
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 474
    .local v3, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    .line 475
    .local v4, "centerY":I
    const/4 v0, 0x0

    aget v5, v2, v0

    aget v6, v1, v0

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 476
    .local v5, "x":I
    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v1, v6

    sub-int/2addr v7, v8

    add-int/2addr v7, v4

    .line 477
    .local v7, "y":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v5, v7, v6, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    .line 478
    return-void
.end method

.method public getActualHeight()I
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 497
    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 1
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .line 504
    if-eqz p1, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method logBlockingHelperCounter(Ljava/lang/String;)V
    .locals 2
    .param p1, "counterTag"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 295
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 423
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f11040d

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f11040c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_1
    :goto_0
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 482
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 483
    return-void
.end method

.method public shouldBeSaved()Z
    .locals 1

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v0

    return v0
.end method

.method public willBeRemoved()Z
    .locals 1

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v0

    return v0
.end method
