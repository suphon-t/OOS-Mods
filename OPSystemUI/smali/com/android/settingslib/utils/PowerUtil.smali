.class public Lcom/android/settingslib/utils/PowerUtil;
.super Ljava/lang/Object;
.source "PowerUtil.java"


# static fields
.field private static final FIFTEEN_MINUTES_MILLIS:J

.field private static final ONE_DAY_MILLIS:J

.field private static final ONE_HOUR_MILLIS:J

.field private static final SEVEN_MINUTES_MILLIS:J

.field private static final TWO_DAYS_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->SEVEN_MINUTES_MILLIS:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settingslib/utils/PowerUtil;->TWO_DAYS_MILLIS:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    return-void
.end method

.method public static getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drainTimeMs"    # J
    .param p3, "percentageString"    # Ljava/lang/String;
    .param p4, "basedOnUsage"    # Z

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_4

    .line 58
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->SEVEN_MINUTES_MILLIS:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 60
    invoke-static {p0, p3}, Lcom/android/settingslib/utils/PowerUtil;->getShutdownImminentString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 63
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    long-to-double v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 66
    .local v0, "timeString":Ljava/lang/CharSequence;
    invoke-static {p0, v0, p3}, Lcom/android/settingslib/utils/PowerUtil;->getUnderFifteenString(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "timeString":Ljava/lang/CharSequence;
    :cond_1
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->TWO_DAYS_MILLIS:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 69
    invoke-static {p0, p3}, Lcom/android/settingslib/utils/PowerUtil;->getMoreThanTwoDaysString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_2
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 72
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/utils/PowerUtil;->getMoreThanOneDayString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/utils/PowerUtil;->getRegularTimeRemainingString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMoreThanOneDayString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drainTimeMs"    # J
    .param p3, "percentageString"    # Ljava/lang/String;
    .param p4, "basedOnUsage"    # Z

    .line 104
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    invoke-static {p1, p2, v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v0

    .line 105
    .local v0, "roundedTimeMs":J
    long-to-double v2, v0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v2

    .line 109
    .local v2, "timeString":Ljava/lang/CharSequence;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 110
    if-eqz p4, :cond_0

    .line 111
    sget v3, Lcom/android/settingslib/R$string;->power_remaining_duration_only_enhanced:I

    goto :goto_0

    .line 112
    :cond_0
    sget v3, Lcom/android/settingslib/R$string;->power_remaining_duration_only:I

    .line 113
    .local v3, "id":I
    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 115
    .end local v3    # "id":I
    :cond_1
    if-eqz p4, :cond_2

    .line 116
    sget v3, Lcom/android/settingslib/R$string;->power_discharging_duration_enhanced:I

    goto :goto_1

    .line 117
    :cond_2
    sget v3, Lcom/android/settingslib/R$string;->power_discharging_duration:I

    .line 118
    .restart local v3    # "id":I
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    aput-object p3, v6, v5

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getMoreThanTwoDaysString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "percentageString"    # Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 124
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v2

    .line 126
    .local v2, "frmt":Landroid/icu/text/MeasureFormat;
    new-instance v3, Landroid/icu/util/Measure;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v5, v6}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 128
    .local v3, "daysMeasure":Landroid/icu/util/Measure;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 129
    sget v4, Lcom/android/settingslib/R$string;->power_remaining_only_more_than_subtext:I

    new-array v5, v6, [Ljava/lang/Object;

    new-array v6, v6, [Landroid/icu/util/Measure;

    aput-object v3, v6, v1

    .line 130
    invoke-virtual {v2, v6}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 129
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_0
    sget v5, Lcom/android/settingslib/R$string;->power_remaining_more_than_subtext:I

    new-array v4, v4, [Ljava/lang/Object;

    new-array v7, v6, [Landroid/icu/util/Measure;

    aput-object v3, v7, v1

    .line 133
    invoke-virtual {v2, v7}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    aput-object p1, v4, v6

    .line 131
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    :goto_0
    return-object v1
.end method

.method private static getRegularTimeRemainingString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drainTimeMs"    # J
    .param p3, "percentageString"    # Ljava/lang/String;
    .param p4, "basedOnUsage"    # Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    sget-wide v2, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 141
    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v0

    .line 146
    .local v0, "roundedTimeOfDayMs":J
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "skeleton":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 148
    .local v3, "fmt":Landroid/icu/text/DateFormat;
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v4

    .line 149
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v3, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "timeString":Ljava/lang/CharSequence;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    .line 152
    if-eqz p4, :cond_0

    .line 153
    sget v6, Lcom/android/settingslib/R$string;->power_discharge_by_only_enhanced:I

    goto :goto_0

    .line 154
    :cond_0
    sget v6, Lcom/android/settingslib/R$string;->power_discharge_by_only:I

    .line 155
    .local v6, "id":I
    :goto_0
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v7

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 157
    .end local v6    # "id":I
    :cond_1
    if-eqz p4, :cond_2

    .line 158
    sget v6, Lcom/android/settingslib/R$string;->power_discharge_by_enhanced:I

    goto :goto_1

    .line 159
    :cond_2
    sget v6, Lcom/android/settingslib/R$string;->power_discharge_by:I

    .line 160
    .restart local v6    # "id":I
    :goto_1
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v7

    aput-object p3, v9, v8

    invoke-virtual {p0, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getShutdownImminentString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "percentageString"    # Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_duration_only_shutdown_imminent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_duration_shutdown_imminent:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0
.end method

.method private static getUnderFifteenString(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeString"    # Ljava/lang/CharSequence;
    .param p2, "percentageString"    # Ljava/lang/String;

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 94
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_less_than_duration_only:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_less_than_duration:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0
.end method

.method public static roundTimeToNearestThreshold(JJ)J
    .locals 8
    .param p0, "drainTime"    # J
    .param p2, "threshold"    # J

    .line 183
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 184
    .local v0, "time":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 185
    .local v2, "multiple":J
    rem-long v4, v0, v2

    .line 186
    .local v4, "remainder":J
    const-wide/16 v6, 0x2

    div-long v6, v2, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 187
    sub-long v6, v0, v4

    return-wide v6

    .line 189
    :cond_0
    sub-long v6, v0, v4

    add-long/2addr v6, v2

    return-wide v6
.end method
