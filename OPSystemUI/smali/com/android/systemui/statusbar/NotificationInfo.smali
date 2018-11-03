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

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    const-string v0, "blocking_helper_dismissed"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$OE4i5uy2V1VNOIOCPk_l9LEjxGg;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$OE4i5uy2V1VNOIOCPk_l9LEjxGg;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnKeepShowing:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$-_FAMjCKcojvnymBpf3GU21SM4A;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$-_FAMjCKcojvnymBpf3GU21SM4A;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$7kxiIPS-E1y-_HRLaUJLceph_TY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$7kxiIPS-E1y-_HRLaUJLceph_TY;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    .line 122
    return-void
.end method

.method private bindButtons()V
    .locals 13

    .line 349
    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 350
    .local v0, "block":Landroid/widget/TextView;
    const v1, 0x7f0a01c9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    .local v1, "keep":Landroid/widget/TextView;
    const v2, 0x7f0a024f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 353
    .local v2, "minimize":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f0602f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 354
    .local v3, "colorOneplusAccent":I
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    const v4, 0x7f0a046c

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnKeepShowing:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsNonblockable:Z

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v4, :cond_0

    .line 364
    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 365
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 367
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForeground:Z

    if-eqz v4, :cond_1

    .line 368
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForeground:Z

    if-nez v4, :cond_2

    .line 371
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :cond_2
    :goto_0
    const v4, 0x7f0a0060

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 378
    .local v4, "settingsLinkView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 381
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v12

    .line 380
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/statusbar/NotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 382
    .local v7, "settingsIntent":Landroid/content/Intent;
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForBlockingHelper:Z

    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 384
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 385
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const v6, 0x7f11040d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    new-instance v5, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$uIoadfdpLliB-jGM6g1VRlhmUaQ;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 391
    :cond_3
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :goto_1
    return-void
.end method

.method private bindHeader()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    .line 219
    .local v0, "pkgicon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    const v3, 0xc2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 225
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 232
    :cond_0
    goto :goto_0

    .line 229
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const v1, 0x7f0a0311

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    const v1, 0x7f0a0312

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "groupName":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 241
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 240
    invoke-interface {v2, v3, v4, v5}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 242
    .local v2, "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 246
    .end local v2    # "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    :cond_1
    const v2, 0x7f0a0174

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 247
    .local v2, "groupNameView":Landroid/widget/TextView;
    const v3, 0x7f0a0310

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 248
    .local v3, "groupDividerView":Landroid/widget/TextView;
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :goto_1
    const v6, 0x7f0a01b7

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 261
    .local v6, "settingsButton":Landroid/widget/ImageButton;
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const v8, 0x7f0602f5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 262
    .local v7, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 264
    iget v8, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    if-ltz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;

    if-eqz v8, :cond_3

    .line 265
    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 266
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 267
    .local v4, "appUidF":I
    new-instance v5, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$pxVS_YLdCQFH6VceUnIC5mpFX7A;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;I)V

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .end local v4    # "appUidF":I
    goto :goto_2

    .line 276
    :cond_3
    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 278
    :goto_2
    return-void
.end method

.method private bindName()V
    .locals 3

    .line 297
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 298
    .local v0, "channelName":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 299
    :cond_1
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    :goto_1
    return-void
.end method

.method private bindPrompt()V
    .locals 3

    .line 281
    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    .local v0, "blockPrompt":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->bindName()V

    .line 283
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsNonblockable:Z

    if-eqz v1, :cond_0

    .line 284
    const v1, 0x7f110429

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 286
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNegativeUserSentiment:Z

    if-eqz v1, :cond_1

    .line 287
    const v1, 0x7f1102bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 288
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 291
    :cond_2
    const v1, 0x7f1102be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 289
    :cond_3
    :goto_0
    const v1, 0x7f1102bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 294
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

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 466
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 467
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 468
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 472
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

    .line 475
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 476
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    if-eqz p3, :cond_1

    .line 478
    const-string v3, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :cond_1
    const-string v3, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    const-string v3, "android.intent.extra.NOTIFICATION_TAG"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    return-object v0

    .line 473
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private hasImportanceChanged()Z
    .locals 2

    .line 313
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

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method public static synthetic lambda$bindHeader$3(Lcom/android/systemui/statusbar/NotificationInfo;ILandroid/view/View;)V
    .locals 3
    .param p1, "appUidF"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 269
    const-string v0, "blocking_helper_notif_settings"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;

    .line 272
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 271
    :goto_0
    invoke-interface {v0, p2, v1, p1}, Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    .line 274
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 104
    const-string v0, "blocking_helper_keep_showing"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationInfo;->closeControls(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 109
    const-string v0, "blocking_helper_stop_notifications"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->swapContent(Z)V

    .line 111
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 115
    const-string v0, "blocking_helper_dismissed"

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 116
    const-string v0, "blocking_helper_undo"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->swapContent(Z)V

    .line 118
    return-void
.end method

.method private saveImportance()V
    .locals 3

    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsNonblockable:Z

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    if-eqz v0, :cond_0

    const-string v0, "blocking_helper_stop_notifications"

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$FcHfx_eVn3zstWC-BeoEQcmo1DY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationInfo$FcHfx_eVn3zstWC-BeoEQcmo1DY;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateImportance()V

    .line 328
    :cond_1
    :goto_0
    return-void
.end method

.method private swapContent(Z)V
    .locals 13
    .param p1, "showPrompt"    # Z

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 400
    :cond_0
    const v0, 0x7f0a0339

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "prompt":Landroid/view/View;
    const v1, 0x7f0a00cf

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 402
    .local v1, "confirmation":Landroid/view/ViewGroup;
    const v2, 0x7f0a00d0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 403
    .local v2, "confirmationText":Landroid/widget/TextView;
    const v3, 0x7f0a018e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 405
    .local v3, "header":Landroid/view/View;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 406
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    iput v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    goto :goto_0

    .line 407
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForeground:Z

    if-eqz v6, :cond_2

    .line 408
    iput v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    .line 409
    const v6, 0x7f110417

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 411
    :cond_2
    iput v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    .line 412
    const v6, 0x7f110414

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 415
    :goto_0
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v8, v7, [F

    .line 416
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

    .line 415
    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 417
    .local v6, "promptAnim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_4

    sget-object v8, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    sget-object v8, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    .line 419
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v12

    aput v12, v11, v5

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v9, v10

    :goto_3
    aput v9, v11, v4

    .line 418
    invoke-static {v1, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 420
    .local v8, "confirmAnim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_6

    sget-object v9, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_6
    sget-object v9, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_4
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 422
    const/16 v9, 0x8

    if-eqz p1, :cond_7

    move v10, v5

    goto :goto_5

    :cond_7
    move v10, v9

    :goto_5
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 423
    if-eqz p1, :cond_8

    move v10, v9

    goto :goto_6

    :cond_8
    move v10, v5

    :goto_6
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 424
    if-eqz p1, :cond_9

    move v9, v5

    nop

    :cond_9
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 426
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 427
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v6, v7, v5

    aput-object v8, v7, v4

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 428
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0x96

    invoke-virtual {v4, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 429
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/statusbar/NotificationInfo$1;

    invoke-direct {v5, p0, v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;ZLandroid/view/ViewGroup;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 445
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 446
    return-void
.end method

.method private updateImportance()V
    .locals 9

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    sub-int/2addr v1, v2

    const/16 v2, 0x123

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 337
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    .local v0, "bgHandler":Landroid/os/Handler;
    new-instance v8, Lcom/android/systemui/statusbar/NotificationInfo$UpdateImportanceRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 339
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

    .line 338
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
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

    .line 152
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

    .line 156
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

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    .line 173
    if-nez v2, :cond_1

    .line 174
    const-string v4, "InfoGuts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindNotification gets null notificationChannel key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_0

    const-string v6, "null"

    goto :goto_0

    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 178
    :cond_1
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 179
    const-class v5, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/logging/MetricsLogger;

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 180
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 181
    move/from16 v5, p5

    iput v5, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 182
    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 183
    move-object/from16 v6, p1

    iput-object v6, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 184
    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

    .line 185
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPackageName:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 186
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    .line 187
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;

    .line 188
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 189
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v10

    iput v10, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mChosenImportance:I

    iput v10, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    .line 190
    move/from16 v10, p12

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNegativeUserSentiment:Z

    .line 191
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsNonblockable:Z

    .line 192
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 193
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, 0x40

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    move v12, v13

    :goto_1
    iput-boolean v12, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForeground:Z

    .line 194
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForBlockingHelper:Z

    .line 195
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v15

    iput v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 197
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    invoke-interface {v15, v1, v14, v13}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v14

    .line 199
    .local v14, "numTotalChannels":I
    iget v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    if-eqz v15, :cond_4

    .line 203
    iget v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v13, 0x1

    if-ne v15, v13, :cond_3

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 204
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v15

    const-string v13, "miscellaneous"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    if-ne v14, v13, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    iput-boolean v13, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->bindHeader()V

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->bindPrompt()V

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->bindButtons()V

    .line 212
    return-void

    .line 200
    :cond_4
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

    .line 496
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 497
    .local v1, "parentLoc":[I
    new-array v2, v0, [I

    .line 498
    .local v2, "targetLoc":[I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    .line 499
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 501
    .local v3, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    .line 502
    .local v4, "centerY":I
    const/4 v0, 0x0

    aget v5, v2, v0

    aget v6, v1, v0

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 503
    .local v5, "x":I
    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v1, v6

    sub-int/2addr v7, v8

    add-int/2addr v7, v4

    .line 504
    .local v7, "y":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v5, v7, v6, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    .line 505
    return-void
.end method

.method public getActualHeight()I
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 524
    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 1
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .line 531
    if-eqz p1, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mExitReason:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method logBlockingHelperCounter(Ljava/lang/String;)V
    .locals 2
    .param p1, "counterTag"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 310
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 450
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f110413

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f110412

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_1
    :goto_0
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 509
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 510
    return-void
.end method

.method public shouldBeSaved()Z
    .locals 1

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v0

    return v0
.end method

.method public willBeRemoved()Z
    .locals 1

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v0

    return v0
.end method
