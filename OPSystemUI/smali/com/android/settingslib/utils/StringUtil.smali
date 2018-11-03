.class public Lcom/android/settingslib/utils/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "withSeconds"    # Z

    .line 54
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 55
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 56
    .local v1, "seconds":I
    if-nez p3, :cond_0

    .line 58
    add-int/lit8 v1, v1, 0x1e

    .line 61
    :cond_0
    const/4 v2, 0x0

    .local v2, "days":I
    const/4 v3, 0x0

    .local v3, "hours":I
    const/4 v4, 0x0

    .line 62
    .local v4, "minutes":I
    const v5, 0x15180

    if-lt v1, v5, :cond_1

    .line 63
    div-int v2, v1, v5

    .line 64
    mul-int/2addr v5, v2

    sub-int/2addr v1, v5

    .line 66
    :cond_1
    const/16 v5, 0xe10

    if-lt v1, v5, :cond_2

    .line 67
    div-int/lit16 v3, v1, 0xe10

    .line 68
    mul-int/lit16 v5, v3, 0xe10

    sub-int/2addr v1, v5

    .line 70
    :cond_2
    const/16 v5, 0x3c

    if-lt v1, v5, :cond_3

    .line 71
    div-int/lit8 v4, v1, 0x3c

    .line 72
    mul-int/lit8 v5, v4, 0x3c

    sub-int/2addr v1, v5

    .line 75
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v5, "measureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/util/Measure;>;"
    if-lez v2, :cond_4

    .line 77
    new-instance v6, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_4
    if-lez v3, :cond_5

    .line 80
    new-instance v6, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_5
    if-lez v4, :cond_6

    .line 83
    new-instance v6, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_6
    if-eqz p3, :cond_7

    if-lez v1, :cond_7

    .line 86
    new-instance v6, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_9

    .line 90
    new-instance v6, Landroid/icu/util/Measure;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz p3, :cond_8

    sget-object v9, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    goto :goto_0

    :cond_8
    sget-object v9, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    :goto_0
    invoke-direct {v6, v8, v9}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/icu/util/Measure;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/icu/util/Measure;

    .line 94
    .local v6, "measureArray":[Landroid/icu/util/Measure;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 95
    .local v8, "locale":Ljava/util/Locale;
    sget-object v9, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v8, v9}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v9

    .line 97
    .local v9, "measureFormat":Landroid/icu/text/MeasureFormat;
    invoke-virtual {v9, v6}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    array-length v10, v6

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    sget-object v10, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    aget-object v11, v6, v7

    invoke-virtual {v11}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/icu/util/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 101
    new-instance v10, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {v10}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    int-to-long v11, v4

    invoke-virtual {v10, v11, v12}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v10

    const-string v11, "minute"

    .line 102
    invoke-virtual {v10, v11}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v10

    .line 103
    .local v10, "ttsSpan":Landroid/text/style/TtsSpan;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v0, v10, v7, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 106
    .end local v10    # "ttsSpan":Landroid/text/style/TtsSpan;
    :cond_a
    return-object v0
.end method
