.class public Lcom/google/android/systemui/smartspace/SmartSpaceCard;
.super Ljava/lang/Object;
.source "SmartSpaceCard.java"


# instance fields
.field private final mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field private final mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconProcessed:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mIsIconGrayscale:Z

.field private final mIsWeather:Z

.field private final mPublishTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "card"    # Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "isWeather"    # Z
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "isIconGrayscale"    # Z
    .param p7, "publishTime"    # J

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 68
    iput-boolean p4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIsWeather:Z

    .line 69
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIntent:Landroid/content/Intent;

    .line 70
    iput-object p5, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    .line 71
    iput-wide p7, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mPublishTime:J

    .line 72
    iput-boolean p6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIsIconGrayscale:Z

    .line 73
    return-void
.end method

.method static fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .param p2, "isWeather"    # Z

    .line 305
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 306
    return-object v0

    .line 309
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->intent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget-object v1, v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->intent:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, v0

    .line 311
    .local v6, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    iget-object v3, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v0

    .line 312
    .local v8, "icon":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    iget-object v5, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-boolean v9, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    iget-wide v10, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    move-object v3, v1

    move-object v4, p0

    move v7, p2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;-><init>(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 314
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "exc":Ljava/lang/Exception;
    const-string v2, "SmartspaceCard"

    const-string v3, "from proto"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    return-object v0
.end method

.method private getDurationText(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;
    .locals 10
    .param p1, "param"    # Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMinutesToEvent(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)I

    move-result v0

    .line 249
    .local v0, "mins":I
    const v1, 0x7f0f000e

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_1

    .line 250
    div-int/lit8 v2, v0, 0x3c

    .line 251
    .local v2, "hrs":I
    rem-int/lit8 v5, v0, 0x3c

    .line 252
    .local v5, "min":I
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f000d

    new-array v8, v4, [Ljava/lang/Object;

    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "hoursText":Ljava/lang/String;
    if-lez v5, :cond_0

    .line 255
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v7, v1, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "minsText":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    const v8, 0x7f1104ec

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v3

    aput-object v1, v9, v4

    .line 258
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "durationText":Ljava/lang/String;
    goto :goto_0

    .line 260
    .end local v1    # "durationText":Ljava/lang/String;
    :cond_0
    nop

    .end local v2    # "hrs":I
    .end local v5    # "min":I
    move-object v1, v6

    .line 262
    .end local v6    # "hoursText":Ljava/lang/String;
    .restart local v1    # "durationText":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 263
    .end local v1    # "durationText":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v2, v1, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .restart local v1    # "durationText":Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method private getFormattedText(Z)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    .locals 2
    .param p1, "forTitle"    # Z

    .line 172
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMessage()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    if-eqz v0, :cond_1

    .line 174
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    :goto_0
    return-object v1

    .line 176
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getMessage()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 8

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 158
    .local v0, "now":J
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    .line 159
    .local v2, "eventStart":J
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v4, v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v6, v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventDurationMillis:J

    add-long/2addr v4, v6

    .line 160
    .local v4, "eventEnd":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v6, v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->preEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz v6, :cond_0

    .line 161
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v6, v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->preEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    return-object v6

    .line 162
    :cond_0
    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v6, v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->postEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz v6, :cond_1

    .line 163
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v6, v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->postEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    return-object v6

    .line 164
    :cond_1
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v6, v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->duringEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz v6, :cond_2

    .line 165
    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v6, v6, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->duringEvent:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    return-object v6

    .line 167
    :cond_2
    const/4 v6, 0x0

    return-object v6
.end method

.method private getMinutesToEvent(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)I
    .locals 4
    .param p1, "formatParam"    # Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMillisToEvent(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getTextArgs([Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;
    .param p2, "truncateableReplacement"    # Ljava/lang/String;

    .line 224
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 225
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 226
    aget-object v2, p1, v1

    iget v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    packed-switch v2, :pswitch_data_0

    .line 240
    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_2

    .line 228
    :pswitch_0
    if-eqz p2, :cond_0

    aget-object v2, p1, v1

    iget v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->truncateLocation:I

    if-eqz v2, :cond_0

    .line 230
    aput-object p2, v0, v1

    goto :goto_2

    .line 232
    :cond_0
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    aput-object v2, v0, v1

    .line 234
    goto :goto_2

    .line 237
    :pswitch_1
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getDurationText(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 238
    nop

    .line 225
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasParams(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z
    .locals 1
    .param p1, "text"    # Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    .line 189
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private substitute(Z)Ljava/lang/String;
    .locals 1
    .param p1, "forTitle"    # Z

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "forTitle"    # Z
    .param p2, "truncateableReplacement"    # Ljava/lang/String;

    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getFormattedText(Z)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object v0

    .line 271
    .local v0, "text":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    .line 273
    .local v1, "plain":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->hasParams(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    .line 275
    invoke-direct {p0, v2, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTextArgs([Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 274
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 277
    :cond_0
    return-object v1

    .line 280
    .end local v1    # "plain":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public getExpiration()J
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->expiryCriteria:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->expiryCriteria:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    iget-wide v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->expirationTimeMillis:J

    return-wide v0

    .line 292
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getMillisToEvent(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)J
    .locals 6
    .param p1, "formatParam"    # Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    .line 207
    iget v0, p1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v2, v2, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventDurationMillis:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    .line 211
    .local v0, "event":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 212
    .local v2, "now":J
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    return-wide v4
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconProcessed()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIconProcessed:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 88
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method

.method public setIconProcessed(Z)V
    .locals 0
    .param p1, "iconProcessed"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIconProcessed:Z

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subtitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expires:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " published:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mPublishTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    return-object v0
.end method
