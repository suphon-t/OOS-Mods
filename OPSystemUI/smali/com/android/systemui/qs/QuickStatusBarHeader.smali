.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# static fields
.field private static final PKG_OP_DESKCLOCK:[Ljava/lang/String;


# instance fields
.field private mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mAutoFadeOutTooltipRunnable:Ljava/lang/Runnable;

.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field private mExpanded:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderTextContainerView:Landroid/view/View;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mListening:Z

.field private mLongPressTooltipView:Landroid/view/View;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmIcon:Landroid/widget/ImageView;

.field private mNextAlarmTextView:Landroid/widget/TextView;

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQuickQsStatusIcons:Landroid/view/View;

.field private mRingerMode:I

.field private mRingerModeIcon:Landroid/widget/ImageView;

.field private mRingerModeTextView:Landroid/widget/TextView;

.field private final mRingerReceiver:Landroid/content/BroadcastReceiver;

.field private mShownCount:I

.field private mStatusContainer:Landroid/view/View;

.field private mStatusContainerNextAlarmPart:Landroid/view/View;

.field private mStatusContainerRingModePart:Landroid/view/View;

.field private mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mStatusSeparator:Landroid/view/View;

.field private mSystemIconsView:Landroid/view/View;

.field private mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 136
    const-string v0, "com.oneplus.deskclock"

    const-string v1, "com.oneplus.deskclock.DeskClock"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->PKG_OP_DESKCLOCK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHandler:Landroid/os/Handler;

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    .line 141
    new-instance v0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$FnPQlf4H1pC9aZZ4M1B32cjPajs;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$FnPQlf4H1pC9aZZ4M1B32cjPajs;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAutoFadeOutTooltipRunnable:Ljava/lang/Runnable;

    .line 156
    const-class v0, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 157
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getStoredShownCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShownCount:I

    .line 159
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QuickStatusBarHeader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->PKG_OP_DESKCLOCK:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAutoFadeOutTooltipRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->showStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    return-object v0
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "tintArea"    # Landroid/graphics/Rect;
    .param p3, "intensity"    # F
    .param p4, "color"    # I

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v1, :cond_0

    .line 329
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 331
    :cond_0
    return-void
.end method

.method private formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 685
    if-nez p1, :cond_0

    .line 686
    const-string v0, ""

    return-object v0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EHm"

    goto :goto_0

    :cond_1
    const-string v0, "Ehma"

    .line 691
    .local v0, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getColorIntensity(I)F
    .locals 1
    .param p0, "color"    # I

    .line 696
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method private getStoredShownCount()I
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    const-string v1, "QsLongPressTooltipShownCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasStatusText()Z
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 553
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 552
    :goto_1
    return v0
.end method

.method private hideLongPressTooltip(Z)V
    .locals 3
    .param p1, "shouldShowStatusText"    # Z

    .line 597
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    .line 599
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAutoFadeOutTooltipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeader$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader$5;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V

    .line 604
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    if-eqz p1, :cond_1

    .line 619
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->showStatus()V

    .line 622
    :cond_1
    :goto_0
    return-void
.end method

.method private hideStatusText()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 644
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeader$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$6;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    .line 645
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 658
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 1

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hideLongPressTooltip(Z)V

    return-void
.end method

.method public static synthetic lambda$updateEverything$1(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 1

    .line 661
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setClickable(Z)V

    return-void
.end method

.method private showStatus()V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 630
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 634
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 635
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 636
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 638
    return-void
.end method

.method private updateAlarmStatus()Z
    .locals 8

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 312
    .local v0, "isOriginalVisible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 314
    .local v3, "originalAlarmText":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 315
    .local v4, "alarmVisible":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v5, :cond_1

    .line 316
    const/4 v4, 0x1

    .line 317
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;->formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move v6, v2

    nop

    :cond_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    if-ne v0, v4, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 323
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 322
    :cond_4
    move v1, v2

    goto :goto_3

    .line 323
    :cond_5
    :goto_2
    nop

    .line 322
    :goto_3
    return v1
.end method

.method private updateHeaderTextContainerAlphaAnimator()V
    .locals 4

    .line 395
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 396
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 397
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 399
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateResources()V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 369
    const v2, 0x7f07059f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x1050186

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 374
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v3, :cond_0

    .line 377
    goto :goto_0

    .line 380
    :cond_0
    const v2, 0x7f0705c5

    .line 376
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusIconAlphaAnimator()V

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    .line 386
    return-void
.end method

.method private updateRingerStatus()Z
    .locals 8

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 254
    .local v0, "isOriginalVisible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 256
    .local v3, "originalRingerText":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 257
    .local v4, "ringerVisible":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 258
    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    .line 257
    invoke-static {v5, v6}, Landroid/service/notification/ZenModeConfig;->isZenOverridingRinger(ILandroid/service/notification/ZenModeConfig;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 259
    iget v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    if-ne v5, v1, :cond_1

    .line 260
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const v6, 0x7f080889

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    const v6, 0x7f1104c9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 262
    const/4 v4, 0x1

    goto :goto_1

    .line 263
    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    if-nez v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const v6, 0x7f080888

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    const v6, 0x7f1104c8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 266
    const/4 v4, 0x1

    .line 269
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move v6, v2

    nop

    :cond_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    if-ne v0, v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 273
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 272
    :cond_5
    move v1, v2

    goto :goto_4

    .line 273
    :cond_6
    :goto_3
    nop

    .line 272
    :goto_4
    return v1
.end method

.method private updateStatusIconAlphaAnimator()V
    .locals 4

    .line 389
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 390
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 392
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateStatusText()V
    .locals 5

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateRingerStatus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlarmStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 243
    .local v0, "changed":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 244
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 245
    .local v3, "alarmVisible":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 246
    .local v1, "ringerVisible":Z
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    .line 247
    :cond_4
    const/16 v2, 0x8

    .line 246
    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateTooltipShow()V

    .line 250
    .end local v1    # "ringerVisible":Z
    .end local v3    # "alarmVisible":Z
    :cond_5
    return-void
.end method

.method private updateThemeColor()V
    .locals 6

    .line 278
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 279
    .local v0, "textColor":I
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_BATTERY_BACKGROUND:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 281
    .local v1, "batteryBackgroundColor":I
    sget v2, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v2}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    .line 282
    .local v2, "primaryTextColor":I
    sget v3, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    invoke-static {v3}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    .line 284
    .local v3, "iconColor":I
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setTextColor(I)V

    .line 287
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 288
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 290
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 292
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 294
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateColors(II)V

    .line 304
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 307
    return-void
.end method

.method private updateTooltipShow()V
    .locals 1

    .line 543
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hasStatusText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hideLongPressTooltip(Z)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hideStatusText()V

    .line 548
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    .line 549
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 5
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 452
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 453
    .local v0, "disabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-ne v0, v2, :cond_1

    return-void

    .line 454
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    .line 455
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    .line 456
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v3, :cond_3

    move v1, v4

    nop

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 459
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 470
    nop

    .line 471
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 470
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v0

    .line 474
    .local v0, "padding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 463
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 464
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->requestApplyInsets()V

    .line 466
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 516
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 517
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-ne p1, v0, :cond_1

    .line 520
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 523
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 539
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    .line 540
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 342
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 346
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    .local v0, "shouldUseWallpaperTextColor":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/BatteryMeterView;->useWallpaperTextColor(Z)V

    .line 349
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/Clock;->useWallpaperTextColor(Z)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 353
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 356
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 491
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 492
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 493
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 163
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 165
    const v0, 0x7f0a0349

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 166
    const v0, 0x7f0a0350

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    .line 167
    const v0, 0x7f0a034a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    .line 168
    const v0, 0x7f0a03e8

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 169
    .local v1, "iconContainer":Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 172
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v4, "qs"

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 177
    const v0, 0x7f0a0190

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    .line 178
    const v0, 0x7f0a0232

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    .line 179
    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainer:Landroid/view/View;

    .line 180
    const v0, 0x7f0a03f2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    .line 181
    const v0, 0x7f0a0294

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    .line 182
    const v0, 0x7f0a0295

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0a0368

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f0a0369

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainerNextAlarmPart:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainerNextAlarmPart:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/qs/QuickStatusBarHeader$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$2;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainerRingModePart:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusContainerRingModePart:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/qs/QuickStatusBarHeader$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$3;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    .local v0, "tintArea":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1010030

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    .line 221
    .local v2, "colorForeground":I
    const v3, 0x7f0a00c6

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 228
    const v4, 0x7f0a007f

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/BatteryMeterView;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 229
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 230
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/BatteryMeterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 232
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/policy/Clock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v3, 0x7f0a00f1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateThemeColor()V

    .line 238
    return-void
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 0
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 527
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    .line 529
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 360
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 362
    return-void
.end method

.method public onZenChanged(I)V
    .locals 0
    .param p1, "zen"    # I

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    .line 535
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 1
    .param p1, "qsPanelCallback"    # Lcom/android/systemui/qs/QSDetail$Callback;

    .line 681
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 682
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 403
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    .line 404
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    .line 406
    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 4
    .param p1, "isKeyguardShowing"    # Z
    .param p2, "expansionFraction"    # F
    .param p3, "panelTranslationY"    # F

    .line 418
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    .line 419
    .local v1, "keyguardExpansionFraction":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 423
    :cond_1
    if-eqz p1, :cond_2

    .line 426
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v2, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 431
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v2, :cond_3

    .line 432
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 437
    :cond_3
    cmpl-float v0, p2, v0

    if-nez v0, :cond_4

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->showLongPressTooltip()V

    .line 441
    :cond_4
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .line 496
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    .line 500
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    .line 502
    if-eqz p1, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addCallback(Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeCallback(Ljava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 512
    :goto_0
    return-void
.end method

.method public setMargins(I)V
    .locals 3
    .param p1, "sideMargins"    # I

    .line 700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 701
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 702
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-ne v1, v2, :cond_0

    .line 703
    goto :goto_1

    .line 705
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 706
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 707
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 700
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .line 665
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 666
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 667
    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 670
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 672
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setColorsFromContext(Landroid/content/Context;)V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 678
    return-void
.end method

.method public showLongPressTooltip()V
    .locals 3

    .line 562
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hasStatusText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    return-void

    .line 566
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShownCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLongPressTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 570
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 571
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeader$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$4;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    .line 572
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 584
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getStoredShownCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShownCount:I

    if-gt v0, v1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    const-string v1, "QsLongPressTooltipShownCount"

    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShownCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShownCount:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 588
    :cond_1
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 661
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$94nU_9dHjWxAQAVsvLqnp7oGOsY;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$94nU_9dHjWxAQAVsvLqnp7oGOsY;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    .line 662
    return-void
.end method
