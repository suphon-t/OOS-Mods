.class public Landroid/support/v17/leanback/widget/picker/TimePicker;
.super Landroid/support/v17/leanback/widget/picker/Picker;
.source "TimePicker.java"


# instance fields
.field mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field mColAmPmIndex:I

.field mColHourIndex:I

.field mColMinuteIndex:I

.field private final mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

.field private mCurrentAmPmIndex:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private mIs24hFormat:Z

.field mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private mTimePickerFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getTimeConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 108
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbTimePicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbTimePicker_is24HourFormat:I

    .line 111
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 112
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbTimePicker_useCurrentTime:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 117
    .local v1, "useCurrentTime":Z
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateColumns()V

    .line 118
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateColumnsRange()V

    .line 120
    if-eqz v1, :cond_0

    .line 121
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 123
    .local v2, "currentDate":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setHour(I)V

    .line 124
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setMinute(I)V

    .line 125
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setAmPmValue()V

    .line 127
    .end local v2    # "currentDate":Ljava/util/Calendar;
    :cond_0
    return-void
.end method

.method private extractTimeFields()Ljava/lang/String;
    .locals 6

    .line 245
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "hmaPattern":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 249
    .local v1, "isRTL":Z
    :goto_0
    const/16 v4, 0x61

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    const-string v4, "a"

    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    nop

    :cond_2
    :goto_1
    move v2, v3

    .line 252
    .local v2, "isAmPmAtEnd":Z
    if-eqz v1, :cond_3

    const-string v3, "mh"

    goto :goto_2

    :cond_3
    const-string v3, "hm"

    .line 254
    .local v3, "timePickerFormat":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    return-object v3

    .line 257
    :cond_4
    if-eqz v2, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_4
    return-object v4
.end method

.method private static isAnyOf(C[C)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "any"    # [C

    .line 230
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 231
    aget-char v2, p1, v1

    if-ne p0, v2, :cond_0

    .line 232
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private setAmPmValue()V
    .locals 3

    .line 326
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    .line 329
    :cond_0
    return-void
.end method

.method private updateColumns()V
    .locals 9

    .line 262
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "timePickerFormat":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->extractTimeFields()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "timeFieldsPattern":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->extractSeparators()Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "separators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_5

    .line 274
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setSeparators(Ljava/util/List;)V

    .line 275
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 277
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 278
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iput v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iput v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 280
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v3, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/picker/PickerColumn;>;"
    const/4 v4, 0x0

    move v6, v4

    .local v6, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 282
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x41

    if-eq v7, v8, :cond_3

    const/16 v8, 0x48

    if-eq v7, v8, :cond_2

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 289
    new-instance v7, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v7}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v8, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v8, v8, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 291
    iput v6, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    .line 292
    goto :goto_1

    .line 301
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid time picker format."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_2
    new-instance v7, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v7}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v8, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v8, v8, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 286
    iput v6, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 287
    goto :goto_1

    .line 294
    :cond_3
    new-instance v7, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v7}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v8, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v8, v8, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 296
    iput v6, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 297
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v7, v4}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 298
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v7, v5}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 299
    nop

    .line 281
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 304
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumns(Ljava/util/List;)V

    .line 305
    return-void

    .line 271
    .end local v3    # "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/picker/PickerColumn;>;"
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Separators size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " must equal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " the size of timeFieldsPattern: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " + 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateColumnsRange()V
    .locals 4

    .line 309
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 310
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 312
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 313
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const/16 v3, 0x3b

    invoke-static {v0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 315
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 317
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v0, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 319
    :cond_1
    return-void
.end method

.method private static updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1
    .param p0, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .param p1, "value"    # I

    .line 138
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMaxValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMaxValue(I)V

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1
    .param p0, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .param p1, "value"    # I

    .line 130
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMinValue(I)V

    .line 132
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method extractSeparators()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "hmaPattern":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "separators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 195
    .local v3, "lastChar":C
    const/4 v4, 0x7

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    .line 196
    .local v4, "timeFormats":[C
    const/4 v5, 0x0

    .line 197
    .local v5, "processingQuote":Z
    const/4 v6, 0x0

    move v7, v5

    move v5, v3

    move v3, v6

    .local v3, "i":I
    .local v5, "lastChar":C
    .local v7, "processingQuote":Z
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 199
    .local v8, "c":C
    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 200
    goto :goto_2

    .line 202
    :cond_0
    const/16 v9, 0x27

    if-ne v8, v9, :cond_2

    .line 203
    if-nez v7, :cond_1

    .line 204
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 205
    const/4 v7, 0x1

    goto :goto_2

    .line 207
    :cond_1
    const/4 v7, 0x0

    .line 209
    goto :goto_2

    .line 211
    :cond_2
    if-eqz v7, :cond_3

    .line 212
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :cond_3
    invoke-static {v8, v4}, Landroid/support/v17/leanback/widget/picker/TimePicker;->isAnyOf(C[C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 215
    if-eq v8, v5, :cond_5

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 220
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    :cond_5
    :goto_1
    move v5, v8

    .line 197
    .end local v8    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-object v1

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
        0x6ds
        0x4ds
        0x61s
    .end array-data
.end method

.method getBestHourMinutePattern()Ljava/lang/String;
    .locals 5

    .line 150
    sget-boolean v0, Landroid/support/v17/leanback/widget/picker/PickerUtility;->SUPPORTS_BEST_DATE_TIME_PATTERN:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v1, :cond_0

    const-string v1, "Hma"

    goto :goto_0

    :cond_0
    const-string v1, "hma"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "hourPattern":Ljava/lang/String;
    move-object v1, v0

    goto :goto_1

    .line 156
    .end local v0    # "hourPattern":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    .line 157
    invoke-static {v0, v1}, Ljava/text/SimpleDateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 158
    .local v0, "dateFormat":Ljava/text/DateFormat;
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_3

    .line 159
    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "defaultPattern":Ljava/lang/String;
    const-string v2, "s"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v2, :cond_2

    .line 162
    const/16 v2, 0x68

    const/16 v3, 0x48

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_2
    nop

    .line 165
    .local v1, "hourPattern":Ljava/lang/String;
    goto :goto_1

    .line 166
    .end local v1    # "hourPattern":Ljava/lang/String;
    :cond_3
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v1, :cond_4

    const-string v1, "H:mma"

    goto :goto_1

    :cond_4
    const-string v1, "h:mma"

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .restart local v1    # "hourPattern":Ljava/lang/String;
    :goto_1
    move-object v0, v1

    .line 169
    .end local v1    # "hourPattern":Ljava/lang/String;
    .local v0, "hourPattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "h:mma"

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method public is24Hour()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    return v0
.end method

.method public onColumnValueChanged(II)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "newValue"    # I

    .line 444
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    if-ne p1, v0, :cond_0

    .line 445
    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_0

    .line 446
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    if-ne p1, v0, :cond_1

    .line 447
    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    goto :goto_0

    .line 448
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    if-ne p1, v0, :cond_2

    .line 449
    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid column index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHour(I)V
    .locals 3
    .param p1, "hour"    # I

    .line 338
    if-ltz p1, :cond_3

    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 341
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 342
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 343
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    .line 344
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 345
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    if-le v0, v2, :cond_1

    .line 346
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_0

    .line 349
    :cond_0
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 350
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    if-nez v0, :cond_1

    .line 351
    iput v2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 354
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setAmPmValue()V

    .line 356
    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    iget v2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    .line 357
    return-void

    .line 339
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not in [0-23] range in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinute(I)V
    .locals 3
    .param p1, "minute"    # I

    .line 382
    if-ltz p1, :cond_0

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_0

    .line 385
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    .line 386
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    .line 387
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not in [0-59] range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
