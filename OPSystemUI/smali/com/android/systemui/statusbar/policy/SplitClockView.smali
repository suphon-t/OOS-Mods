.class public Lcom/android/systemui/statusbar/policy/SplitClockView;
.super Landroid/widget/LinearLayout;
.source "SplitClockView.java"


# instance fields
.field private mAmPmView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SplitClockView$1;-><init>(Lcom/android/systemui/statusbar/policy/SplitClockView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SplitClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SplitClockView;

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method private static getAmPmPartEndIndex(Ljava/lang/String;)I
    .locals 8
    .param p0, "formatString"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "hasAmPm":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 122
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ltz v2, :cond_6

    .line 123
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 124
    .local v5, "c":C
    const/16 v6, 0x61

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    nop

    .line 125
    .local v3, "isAmPm":Z
    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    .line 126
    .local v6, "isWhitespace":Z
    if-eqz v3, :cond_1

    .line 127
    const/4 v0, 0x1

    .line 129
    :cond_1
    if-nez v3, :cond_5

    if-eqz v6, :cond_2

    .line 130
    goto :goto_1

    .line 132
    :cond_2
    add-int/lit8 v7, v1, -0x1

    if-ne v2, v7, :cond_3

    .line 135
    return v4

    .line 140
    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v4, v2, 0x1

    nop

    :cond_4
    return v4

    .line 122
    .end local v3    # "isAmPm":Z
    .end local v5    # "c":C
    .end local v6    # "isWhitespace":Z
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    return v3
.end method

.method private updatePatterns()V
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 94
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "formatString":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 100
    move-object v2, v0

    .line 101
    .local v2, "timeString":Ljava/lang/String;
    const-string v3, ""

    .local v3, "amPmString":Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v2    # "timeString":Ljava/lang/String;
    .end local v3    # "amPmString":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2    # "timeString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .restart local v3    # "amPmString":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 66
    const v0, 0x7f0a0434

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 67
    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setShowCurrentUserTime(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setShowCurrentUserTime(Z)V

    .line 70
    return-void
.end method
