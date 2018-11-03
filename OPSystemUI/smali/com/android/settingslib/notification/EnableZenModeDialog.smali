.class public Lcom/android/settingslib/notification/EnableZenModeDialog;
.super Ljava/lang/Object;
.source "EnableZenModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    }
.end annotation


# static fields
.field protected static final COUNTDOWN_ALARM_CONDITION_INDEX:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final COUNTDOWN_CONDITION_INDEX:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field protected static final FOREVER_CONDITION_INDEX:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I


# instance fields
.field private MAX_MANUAL_DND_OPTIONS:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAttached:Z

.field private mBucketIndex:I

.field protected mContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mForeverId:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mLayoutInflater:Landroid/view/LayoutInflater;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mNotificationManager:Landroid/app/NotificationManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserId:I

.field protected mZenAlarmWarning:Landroid/widget/TextView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field protected mZenRadioGroupContent:Landroid/widget/LinearLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, "EnableZenModeDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    .line 60
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    .line 61
    sget-object v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MIN_BUCKET_MINUTES:I

    .line 62
    sget-object v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_BUCKET_MINUTES:I

    .line 63
    sget-object v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_MANUAL_DND_OPTIONS:I

    .line 99
    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/notification/EnableZenModeDialog;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/notification/EnableZenModeDialog;

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/notification/EnableZenModeDialog;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/notification/EnableZenModeDialog;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/notification/EnableZenModeDialog;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->updateAlarmWarningText(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/notification/EnableZenModeDialog;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/notification/EnableZenModeDialog;->onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V

    return-void
.end method

.method private foreverSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 286
    const v0, 0x104072d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .line 253
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .line 282
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private hideAllConditions()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 150
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v0, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    return-void
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .locals 2
    .param p1, "c"    # Landroid/service/notification/Condition;

    .line 278
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mForeverId:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V
    .locals 22
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    .param p3, "up"    # Z
    .param p4, "rowId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 420
    iget-object v3, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0xa3

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, "newCondition":Landroid/service/notification/Condition;
    sget-object v4, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    array-length v4, v4

    .line 423
    .local v4, "N":I
    iget v5, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v7, :cond_6

    .line 425
    iget-object v5, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v5}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v5

    .line 426
    .local v5, "conditionId":Landroid/net/Uri;
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 427
    .local v9, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 428
    .local v11, "now":J
    nop

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 429
    if-eqz v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v6

    .line 430
    .local v7, "j":I
    :goto_1
    sget-object v13, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    aget v13, v13, v7

    .line 431
    .local v13, "bucketMinutes":I
    const v14, 0xea60

    mul-int/2addr v14, v13

    int-to-long v14, v14

    add-long v20, v11, v14

    .line 432
    .local v20, "bucketTime":J
    if-eqz v2, :cond_1

    cmp-long v14, v20, v9

    if-gtz v14, :cond_2

    :cond_1
    if-nez v2, :cond_3

    cmp-long v14, v20, v9

    if-gez v14, :cond_3

    .line 433
    :cond_2
    iput v7, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 434
    iget-object v14, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    .line 435
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    const/16 v19, 0x0

    .line 434
    move-wide/from16 v15, v20

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v3

    .line 437
    goto :goto_2

    .line 428
    .end local v7    # "j":I
    .end local v13    # "bucketMinutes":I
    .end local v20    # "bucketTime":J
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 440
    .end local v6    # "i":I
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 441
    sget v6, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    iput v6, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 442
    iget-object v6, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    iget v13, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    aget v7, v7, v13

    .line 443
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    .line 442
    invoke-static {v6, v7, v13}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v3

    .line 445
    .end local v5    # "conditionId":Landroid/net/Uri;
    .end local v9    # "time":J
    .end local v11    # "now":J
    :cond_5
    goto :goto_3

    .line 447
    :cond_6
    add-int/lit8 v5, v4, -0x1

    iget v9, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    if-eqz v2, :cond_7

    move v7, v8

    nop

    :cond_7
    add-int/2addr v9, v7

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 448
    iget-object v5, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    iget v7, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    aget v6, v6, v7

    .line 449
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 448
    invoke-static {v5, v6, v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v3

    .line 451
    :goto_3
    move-object/from16 v5, p1

    move/from16 v6, p4

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 452
    iget-object v7, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-direct {v0, v7}, Lcom/android/settingslib/notification/EnableZenModeDialog;->updateAlarmWarningText(Landroid/service/notification/Condition;)V

    .line 453
    iget-object v7, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 454
    return-void
.end method

.method private static setToMidnight(Ljava/util/Calendar;)V
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 290
    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 291
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 292
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 293
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 294
    return-void
.end method

.method private updateAlarmWarningText(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->computeAlarmWarningText(Landroid/service/notification/Condition;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "warningText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    return-void
.end method

.method private updateUi(Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/view/View;Landroid/service/notification/Condition;ZILandroid/net/Uri;)V
    .locals 20
    .param p1, "tag"    # Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    .param p2, "row"    # Landroid/view/View;
    .param p3, "condition"    # Landroid/service/notification/Condition;
    .param p4, "enabled"    # Z
    .param p5, "rowId"    # I
    .param p6, "conditionId"    # Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 329
    iget-object v6, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 330
    const v6, 0x1020002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    .line 331
    iget-object v6, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 333
    :cond_0
    iget-object v6, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v6, :cond_1

    .line 334
    const v6, 0x1020014

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    .line 337
    :cond_1
    iget-object v6, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    if-nez v6, :cond_2

    .line 338
    const v6, 0x1020015

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    .line 341
    :cond_2
    iget-object v6, v3, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v3, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_3
    iget-object v6, v3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 343
    .local v6, "line1":Ljava/lang/String;
    :goto_0
    iget-object v8, v3, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 344
    .local v8, "line2":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    .line 346
    iget-object v9, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 348
    :cond_4
    iget-object v9, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v9, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_1
    iget-object v9, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 352
    iget-object v9, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    if-eqz v4, :cond_5

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const v13, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {v9, v13}, Landroid/view/View;->setAlpha(F)V

    .line 354
    iget-object v9, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    new-instance v13, Lcom/android/settingslib/notification/EnableZenModeDialog$3;

    invoke-direct {v13, v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog$3;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;)V

    invoke-virtual {v9, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v9, 0x1020019

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 363
    .local v9, "button1":Landroid/widget/ImageView;
    new-instance v13, Lcom/android/settingslib/notification/EnableZenModeDialog$4;

    invoke-direct {v13, v0, v2, v1, v5}, Lcom/android/settingslib/notification/EnableZenModeDialog$4;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;I)V

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    const v13, 0x102001a

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 372
    .local v13, "button2":Landroid/widget/ImageView;
    new-instance v14, Lcom/android/settingslib/notification/EnableZenModeDialog$5;

    invoke-direct {v14, v0, v2, v1, v5}, Lcom/android/settingslib/notification/EnableZenModeDialog$5;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;I)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-static/range {p6 .. p6}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 380
    .local v14, "time":J
    if-ne v5, v7, :cond_c

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-lez v16, :cond_c

    .line 381
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget v10, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    const/4 v11, -0x1

    if-le v10, v11, :cond_8

    .line 384
    iget v10, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    if-lez v10, :cond_6

    move v10, v7

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 385
    iget v10, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    sget-object v11, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    array-length v11, v11

    sub-int/2addr v11, v7

    if-ge v10, v11, :cond_7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 394
    move-object/from16 v18, v8

    goto :goto_6

    .line 387
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v14, v10

    .line 388
    .local v10, "span":J
    sget v16, Lcom/android/settingslib/notification/EnableZenModeDialog;->MIN_BUCKET_MINUTES:I

    const v17, 0xea60

    mul-int v12, v16, v17

    move-object/from16 v18, v8

    int-to-long v7, v12

    .end local v8    # "line2":Ljava/lang/String;
    .local v18, "line2":Ljava/lang/String;
    cmp-long v7, v10, v7

    if-lez v7, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 389
    iget-object v7, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_BUCKET_MINUTES:I

    .line 390
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 389
    invoke-static {v7, v8, v12}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v7

    .line 391
    .local v7, "maxCondition":Landroid/service/notification/Condition;
    iget-object v8, v3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v12, v7, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {v8, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v12, 0x1

    xor-int/2addr v8, v12

    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 394
    .end local v7    # "maxCondition":Landroid/service/notification/Condition;
    .end local v10    # "span":J
    :goto_6
    invoke-virtual {v9}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v7, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_a
    move v7, v12

    :goto_7
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 395
    invoke-virtual {v13}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    const/high16 v12, 0x3f800000    # 1.0f

    nop

    :cond_b
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_8

    .line 397
    .end local v18    # "line2":Ljava/lang/String;
    .restart local v8    # "line2":Ljava/lang/String;
    :cond_c
    move-object/from16 v18, v8

    .end local v8    # "line2":Ljava/lang/String;
    .restart local v18    # "line2":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    :goto_8
    return-void
.end method


# virtual methods
.method protected bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .locals 12
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "row"    # Landroid/view/View;
    .param p3, "rowId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 187
    if-eqz p1, :cond_5

    .line 189
    iget v0, p1, Landroid/service/notification/Condition;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 190
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    goto :goto_1

    .line 191
    :cond_1
    new-instance v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    invoke-direct {v3}, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;-><init>()V

    :goto_1
    move-object v10, v3

    .line 192
    .local v10, "tag":Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    invoke-virtual {p2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    iget-object v3, v10, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 194
    .local v2, "first":Z
    :goto_2
    iget-object v3, v10, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v10, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 197
    :cond_3
    iput-object p1, v10, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 198
    iget-object v3, v10, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v11

    .line 199
    .local v11, "conditionId":Landroid/net/Uri;
    sget-boolean v3, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "EnableZenModeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " first="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_4
    iget-object v3, v10, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 202
    iget-object v3, v10, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v4, Lcom/android/settingslib/notification/EnableZenModeDialog$2;

    invoke-direct {v4, p0, v10, v11}, Lcom/android/settingslib/notification/EnableZenModeDialog$2;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    move-object v3, p0

    move-object v4, v10

    move-object v5, p2

    move-object v6, p1

    move v7, v0

    move v8, p3

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/settingslib/notification/EnableZenModeDialog;->updateUi(Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/view/View;Landroid/service/notification/Condition;ZILandroid/net/Uri;)V

    .line 216
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    return-void

    .line 187
    .end local v0    # "enabled":Z
    .end local v2    # "first":Z
    .end local v10    # "tag":Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    .end local v11    # "conditionId":Landroid/net/Uri;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "condition must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bindConditions(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "c"    # Landroid/service/notification/Condition;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->forever()Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 229
    if-nez p1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    .line 231
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    .line 240
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    .line 243
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 245
    invoke-virtual {p0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 247
    :cond_3
    const-string v0, "EnableZenModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid manual condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void
.end method

.method protected bindGenericCountdown()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 318
    sget v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 319
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    aget v1, v1, v2

    .line 320
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 319
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 321
    .local v0, "countdown":Landroid/service/notification/Condition;
    iget-boolean v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAttached:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 325
    :cond_1
    return-void
.end method

.method protected bindNextAlarm(Landroid/service/notification/Condition;)V
    .locals 7
    .param p1, "c"    # Landroid/service/notification/Condition;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 405
    .local v0, "alarmContent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 407
    .local v2, "tag":Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAttached:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-nez v3, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 412
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 413
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 414
    .local v4, "showAlarm":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 415
    const/16 v5, 0x8

    if-eqz v4, :cond_3

    .line 414
    move v6, v3

    goto :goto_1

    .line 415
    :cond_3
    nop

    .line 414
    move v6, v5

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 416
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    return-void
.end method

.method protected computeAlarmWarningText(Landroid/service/notification/Condition;)Ljava/lang/String;
    .locals 12
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 468
    .local v0, "allowAlarms":Z
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 469
    return-object v3

    .line 472
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 473
    .local v4, "now":J
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getNextAlarm()J

    move-result-wide v6

    .line 474
    .local v6, "nextAlarm":J
    cmp-long v8, v6, v4

    if-gez v8, :cond_2

    .line 475
    return-object v3

    .line 477
    :cond_2
    const/4 v8, 0x0

    .line 478
    .local v8, "warningRes":I
    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 481
    :cond_3
    iget-object v9, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 482
    .local v9, "time":J
    cmp-long v11, v9, v4

    if-lez v11, :cond_5

    cmp-long v11, v6, v9

    if-gez v11, :cond_5

    .line 483
    sget v8, Lcom/android/settingslib/R$string;->zen_alarm_warning:I

    .end local v9    # "time":J
    goto :goto_2

    .line 479
    :cond_4
    :goto_1
    sget v8, Lcom/android/settingslib/R$string;->zen_alarm_warning_indef:I

    .line 486
    :cond_5
    :goto_2
    if-nez v8, :cond_6

    .line 487
    return-object v3

    .line 490
    :cond_6
    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTime(JJ)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v1

    invoke-virtual {v3, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createDialog()Landroid/app/Dialog;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mForeverId:Landroid/net/Uri;

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAlarmManager:Landroid/app/AlarmManager;

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mUserId:I

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAttached:Z

    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settingslib/R$string;->zen_mode_settings_turn_on_dialog_title:I

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->cancel:I

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->zen_mode_enable_dialog_turn_on:I

    new-instance v2, Lcom/android/settingslib/notification/EnableZenModeDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/notification/EnableZenModeDialog$1;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;)V

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->forever()Landroid/service/notification/Condition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindConditions(Landroid/service/notification/Condition;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public forever()Landroid/service/notification/Condition;
    .locals 10

    .line 257
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 258
    .local v0, "foreverId":Landroid/net/Uri;
    new-instance v9, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->foreverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v9
.end method

.method protected getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    .locals 1
    .param p1, "index"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 8

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/R$layout;->zen_mode_turn_on_dialog_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "contentView":Landroid/view/View;
    sget v1, Lcom/android/settingslib/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 165
    .local v1, "container":Landroid/widget/ScrollView;
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 166
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons_content:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    .line 167
    sget v2, Lcom/android/settingslib/R$id;->zen_alarm_warning:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    .line 169
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_MANUAL_DND_OPTIONS:I

    if-ge v3, v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/android/settingslib/R$layout;->zen_mode_radio_button:I

    iget-object v6, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 172
    .local v4, "radioButton":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 175
    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/android/settingslib/R$layout;->zen_mode_condition:I

    iget-object v7, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 177
    .local v5, "radioButtonContent":Landroid/view/View;
    iget v6, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_MANUAL_DND_OPTIONS:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 178
    iget-object v6, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    .end local v4    # "radioButton":Landroid/view/View;
    .end local v5    # "radioButtonContent":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->hideAllConditions()V

    .line 182
    return-object v0
.end method

.method public getNextAlarm()J
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAlarmManager:Landroid/app/AlarmManager;

    iget v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 264
    .local v0, "info":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method protected getTime(JJ)Ljava/lang/String;
    .locals 9
    .param p1, "nextAlarm"    # J
    .param p3, "now"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 495
    sub-long v0, p1, p3

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 496
    .local v0, "soon":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v3

    .line 497
    .local v3, "is24":Z
    if-eqz v0, :cond_2

    if-eqz v3, :cond_1

    const-string v4, "Hm"

    goto :goto_1

    :cond_1
    const-string v4, "hma"

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const-string v4, "EEEHm"

    goto :goto_1

    :cond_3
    const-string v4, "EEEhma"

    .line 498
    .local v4, "skeleton":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 499
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    .line 500
    .local v6, "formattedTime":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    sget v7, Lcom/android/settingslib/R$string;->alarm_template:I

    goto :goto_2

    :cond_4
    sget v7, Lcom/android/settingslib/R$string;->alarm_template_far:I

    .line 501
    .local v7, "templateRes":I
    :goto_2
    iget-object v8, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    invoke-virtual {v8, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 299
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 300
    .local v0, "weekRange":Ljava/util/GregorianCalendar;
    invoke-static {v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->setToMidnight(Ljava/util/Calendar;)V

    .line 301
    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 302
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getNextAlarm()J

    move-result-wide v1

    .line 303
    .local v1, "nextAlarmMs":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 304
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 305
    .local v3, "nextAlarm":Ljava/util/GregorianCalendar;
    invoke-virtual {v3, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 306
    invoke-static {v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;->setToMidnight(Ljava/util/Calendar;)V

    .line 308
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    .line 310
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 309
    invoke-static {v4, v1, v2, v5}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;

    move-result-object v4

    return-object v4

    .line 313
    .end local v3    # "nextAlarm":Ljava/util/GregorianCalendar;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected isAlarm(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p1, "c"    # Landroid/service/notification/Condition;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 269
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCountdown(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p1, "c"    # Landroid/service/notification/Condition;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 274
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
