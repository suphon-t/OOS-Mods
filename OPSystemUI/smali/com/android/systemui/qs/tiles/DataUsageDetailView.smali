.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "DataUsageDetailView.java"


# instance fields
.field private final FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    .line 49
    return-void
.end method

.method private formatBytes(J)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # J

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 130
    .local v0, "b":J
    long-to-double v2, v0

    const-wide/high16 v4, 0x4199000000000000L    # 1.048576E8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 131
    long-to-double v2, v0

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    .line 132
    .local v2, "val":D
    const-string v4, "GB"

    .local v4, "suffix":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 133
    .end local v2    # "val":D
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_0
    long-to-double v2, v0

    const-wide/high16 v4, 0x40f9000000000000L    # 102400.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 134
    long-to-double v2, v0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    .line 135
    .restart local v2    # "val":D
    const-string v4, "MB"

    goto :goto_0

    .line 137
    .end local v2    # "val":D
    :cond_1
    long-to-double v2, v0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    .line 138
    .restart local v2    # "val":D
    const-string v4, "KB"

    .line 140
    .restart local v4    # "suffix":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gez v7, :cond_2

    const/4 v7, -0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    :goto_2
    int-to-double v7, v7

    mul-double/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 29
    .param p1, "info"    # Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-object/from16 v0, p0

    .line 66
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 69
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 71
    .local v3, "usageColor":I
    const/4 v4, 0x0

    .line 72
    .local v4, "bottom":Ljava/lang/String;
    iget-wide v5, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v7, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v5, v5, v7

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ltz v5, :cond_2

    iget-wide v10, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v5, v10, v6

    if-gtz v5, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-wide v10, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v5, v10, v12

    const v10, 0x7f1104c8

    const v11, 0x7f1104ca

    if-gtz v5, :cond_1

    .line 80
    const v5, 0x7f1104cd

    .line 81
    .local v5, "titleId":I
    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long/2addr v12, v14

    .line 82
    .local v12, "bytes":J
    new-array v14, v8, [Ljava/lang/Object;

    iget-wide v6, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 83
    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v9

    .line 82
    invoke-virtual {v2, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "top":Ljava/lang/String;
    new-array v7, v8, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 85
    invoke-direct {v0, v14, v15}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 84
    invoke-virtual {v2, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 88
    .end local v5    # "titleId":I
    .end local v6    # "top":Ljava/lang/String;
    .end local v12    # "bytes":J
    :cond_1
    const v5, 0x7f1104cc

    .line 89
    .restart local v5    # "titleId":I
    iget-wide v6, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    sub-long v12, v6, v12

    .line 90
    .restart local v12    # "bytes":J
    new-array v6, v8, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 91
    invoke-direct {v0, v14, v15}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 90
    invoke-virtual {v2, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .restart local v6    # "top":Ljava/lang/String;
    new-array v7, v8, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 93
    invoke-direct {v0, v14, v15}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 92
    invoke-virtual {v2, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 94
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    const v10, 0x1010543

    invoke-static {v7, v10}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v3

    goto :goto_1

    .line 74
    .end local v5    # "titleId":I
    .end local v6    # "top":Ljava/lang/String;
    .end local v12    # "bytes":J
    :cond_2
    :goto_0
    const v5, 0x7f1104c9

    .line 75
    .restart local v5    # "titleId":I
    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 76
    .restart local v12    # "bytes":J
    const v6, 0x7f1104cb

    new-array v7, v8, [Ljava/lang/Object;

    iget-wide v10, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 77
    invoke-direct {v0, v10, v11}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 76
    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .restart local v6    # "top":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_3

    .line 98
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    .line 101
    :cond_3
    const v7, 0x1020016

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 102
    .local v7, "title":Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 103
    const v10, 0x7f0a044e

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 104
    .local v10, "usage":Landroid/widget/TextView;
    invoke-direct {v0, v12, v13}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    const v11, 0x7f0a044a

    invoke-virtual {v0, v11}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/DataUsageGraph;

    .line 107
    .local v11, "graph":Lcom/android/systemui/qs/DataUsageGraph;
    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    iget-wide v8, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    move-object/from16 v25, v2

    move/from16 v26, v3

    iget-wide v2, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "usageColor":I
    .local v25, "res":Landroid/content/res/Resources;
    .local v26, "usageColor":I
    move-object/from16 v17, v11

    move-wide/from16 v18, v14

    move-wide/from16 v20, v8

    move-wide/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lcom/android/systemui/qs/DataUsageGraph;->setLevels(JJJ)V

    .line 108
    const v2, 0x7f0a0449

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    .local v2, "carrier":Landroid/widget/TextView;
    iget-object v3, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v3, 0x7f0a044d

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 111
    .local v3, "period":Landroid/widget/TextView;
    iget-object v8, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v8, 0x7f0a044c

    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 113
    .local v8, "infoTop":Landroid/widget/TextView;
    if-eqz v6, :cond_4

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const/16 v14, 0x8

    :goto_2
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v14, 0x7f0a044b

    invoke-virtual {v0, v14}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 116
    .local v14, "infoBottom":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    const/16 v15, 0x8

    :goto_3
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v27, v10

    iget-wide v9, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .end local v10    # "usage":Landroid/widget/TextView;
    .local v27, "usage":Landroid/widget/TextView;
    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-gtz v9, :cond_7

    iget-wide v9, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v9, v9, v15

    if-lez v9, :cond_6

    goto :goto_4

    :cond_6
    const/16 v24, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v24, 0x1

    :goto_5
    move/from16 v9, v24

    .line 119
    .local v9, "showLevel":Z
    if-eqz v9, :cond_8

    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    const/16 v10, 0x8

    :goto_6
    invoke-virtual {v11, v10}, Lcom/android/systemui/qs/DataUsageGraph;->setVisibility(I)V

    .line 120
    if-nez v9, :cond_9

    .line 121
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    const v0, 0x7f07053c

    const v1, 0x1020016

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 55
    const v1, 0x7f0a044e

    const v2, 0x7f07053d

    invoke-static {p0, v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 56
    const v1, 0x7f0a0449

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 58
    const v1, 0x7f0a044c

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 60
    const v1, 0x7f0a044d

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 61
    const v1, 0x7f0a044b

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 63
    return-void
.end method
