.class public Landroid/support/v17/leanback/widget/picker/DatePicker;
.super Landroid/support/v17/leanback/widget/picker/Picker;
.source "DatePicker.java"


# static fields
.field private static final DATE_FIELDS:[I


# instance fields
.field mColDayIndex:I

.field mColMonthIndex:I

.field mColYearIndex:I

.field mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

.field mCurrentDate:Ljava/util/Calendar;

.field final mDateFormat:Ljava/text/DateFormat;

.field private mDatePickerFormat:Ljava/lang/String;

.field mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field mMaxDate:Ljava/util/Calendar;

.field mMinDate:Ljava/util/Calendar;

.field mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field mTempDate:Ljava/util/Calendar;

.field mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 441
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 78
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateCurrentLocale()V

    .line 80
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbDatePicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_android_minDate:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "minDate":Ljava/lang/String;
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_android_maxDate:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "maxDate":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x76c

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    .line 92
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 94
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x834

    if-nez v3, :cond_2

    .line 96
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 97
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    .line 102
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 104
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_datePickerFormat:I

    .line 105
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "datePickerFormat":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    new-instance v4, Ljava/lang/String;

    .line 108
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    move-object v3, v4

    .line 110
    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private static isAnyOf(C[C)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "any"    # [C

    .line 207
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 208
    aget-char v2, p1, v1

    if-ne p0, v2, :cond_0

    .line 209
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v0, 0x1

    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "DatePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    return v1
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 395
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 396
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 401
    :cond_1
    :goto_0
    return-void
.end method

.method private updateCurrentLocale()V
    .locals 2

    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getDateConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    .line 284
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 285
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 286
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 287
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 289
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 291
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V

    .line 293
    :cond_0
    return-void
.end method

.method private static updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1
    .param p0, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .param p1, "value"    # I

    .line 434
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMaxValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 435
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMaxValue(I)V

    .line 436
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1
    .param p0, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .param p1, "value"    # I

    .line 426
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMinValue(I)V

    .line 428
    const/4 v0, 0x1

    return v0

    .line 430
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateSpinners(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .line 494
    new-instance v0, Landroid/support/v17/leanback/widget/picker/DatePicker$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker$1;-><init>(Landroid/support/v17/leanback/widget/picker/DatePicker;Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->post(Ljava/lang/Runnable;)Z

    .line 500
    return-void
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

    .line 166
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getBestYearMonthDayPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "hmaPattern":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "separators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 172
    .local v3, "lastChar":C
    const/4 v4, 0x6

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    .line 173
    .local v4, "dateFormats":[C
    const/4 v5, 0x0

    .line 174
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

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 176
    .local v8, "c":C
    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 177
    goto :goto_2

    .line 179
    :cond_0
    const/16 v9, 0x27

    if-ne v8, v9, :cond_2

    .line 180
    if-nez v7, :cond_1

    .line 181
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    const/4 v7, 0x1

    goto :goto_2

    .line 184
    :cond_1
    const/4 v7, 0x0

    .line 186
    goto :goto_2

    .line 188
    :cond_2
    if-eqz v7, :cond_3

    .line 189
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :cond_3
    invoke-static {v8, v4}, Landroid/support/v17/leanback/widget/picker/DatePicker;->isAnyOf(C[C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 192
    if-eq v8, v5, :cond_5

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 197
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_5
    :goto_1
    move v5, v8

    .line 174
    .end local v8    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-object v1

    :array_0
    .array-data 2
        0x59s
        0x79s
        0x4ds
        0x6ds
        0x44s
        0x64s
    .end array-data
.end method

.method getBestYearMonthDayPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "datePickerFormat"    # Ljava/lang/String;

    .line 134
    sget-boolean v0, Landroid/support/v17/leanback/widget/picker/PickerUtility;->SUPPORTS_BEST_DATE_TIME_PATTERN:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "yearPattern":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v0    # "yearPattern":Ljava/lang/String;
    :cond_0
    nop

    .line 139
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 140
    .local v0, "dateFormat":Ljava/text/DateFormat;
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    .line 141
    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "yearPattern":Ljava/lang/String;
    move-object v0, v1

    goto :goto_0

    .end local v1    # "yearPattern":Ljava/lang/String;
    :cond_1
    const-string v0, "MM/dd/yyyy"

    .line 146
    .local v0, "yearPattern":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MM/dd/yyyy"

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public final onColumnValueChanged(II)V
    .locals 6
    .param p1, "column"    # I
    .param p2, "newVal"    # I

    .line 297
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 299
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getColumnAt(I)Landroid/support/v17/leanback/widget/picker/PickerColumn;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v0

    .line 300
    .local v0, "oldVal":I
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x5

    if-ne p1, v1, :cond_0

    .line 301
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v5, p2, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 302
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    if-ne p1, v1, :cond_1

    .line 303
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v5, p2, v0

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 304
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    if-ne p1, v1, :cond_2

    .line 305
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v5, p2, v0

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    .line 309
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 310
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 309
    invoke-direct {p0, v1, v2, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDate(III)V

    .line 311
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateSpinners(Z)V

    .line 312
    return-void

    .line 307
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setDatePickerFormat(Ljava/lang/String;)V
    .locals 7
    .param p1, "datePickerFormat"    # Ljava/lang/String;

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v0

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    return-void

    .line 227
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->extractSeparators()Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "separators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_9

    .line 233
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setSeparators(Ljava/util/List;)V

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 235
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "dateFieldsPattern":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .local v2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/picker/PickerColumn;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 239
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x44

    if-eq v5, v6, :cond_6

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_4

    const/16 v6, 0x59

    if-ne v5, v6, :cond_3

    .line 241
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-nez v5, :cond_2

    .line 244
    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    .line 246
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const-string v6, "%d"

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setLabelFormat(Ljava/lang/String;)V

    .line 247
    goto :goto_1

    .line 242
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "datePicker format error"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "datePicker format error"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :cond_4
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-nez v5, :cond_5

    .line 252
    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 254
    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    .line 255
    goto :goto_1

    .line 250
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "datePicker format error"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_6
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-nez v5, :cond_7

    .line 260
    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const-string v6, "%02d"

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setLabelFormat(Ljava/lang/String;)V

    .line 262
    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    .line 263
    nop

    .line 238
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 258
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "datePicker format error"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    .end local v4    # "i":I
    :cond_8
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumns(Ljava/util/List;)V

    .line 269
    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateSpinners(Z)V

    .line 270
    return-void

    .line 230
    .end local v1    # "dateFieldsPattern":Ljava/lang/String;
    .end local v2    # "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/picker/PickerColumn;>;"
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Separators size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " must equal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " the size of datePickerFormat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " + 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method updateSpinnersImpl(Z)V
    .locals 11
    .param p1, "animation"    # Z

    .line 450
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 452
    .local v0, "dateFieldIndices":[I
    const/4 v1, 0x1

    .line 453
    .local v1, "allLargerDateFieldsHaveBeenEqualToMinDate":Z
    const/4 v4, 0x1

    .line 454
    .local v4, "allLargerDateFieldsHaveBeenEqualToMaxDate":Z
    sget-object v5, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_6

    .line 455
    const/4 v6, 0x0

    .line 456
    .local v6, "dateFieldChanged":Z
    aget v7, v0, v5

    if-gez v7, :cond_0

    .line 457
    goto/16 :goto_5

    .line 459
    :cond_0
    sget-object v7, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    aget v7, v7, v5

    .line 460
    .local v7, "currField":I
    aget v8, v0, v5

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getColumnAt(I)Landroid/support/v17/leanback/widget/picker/PickerColumn;

    move-result-object v8

    .line 462
    .local v8, "currPickerColumn":Landroid/support/v17/leanback/widget/picker/PickerColumn;
    if-eqz v1, :cond_1

    .line 463
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 464
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 463
    invoke-static {v8, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v9

    or-int/2addr v6, v9

    goto :goto_1

    .line 466
    :cond_1
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 467
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v9

    .line 466
    invoke-static {v8, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v9

    or-int/2addr v6, v9

    .line 470
    :goto_1
    if-eqz v4, :cond_2

    .line 471
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 472
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 471
    invoke-static {v8, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v9

    or-int/2addr v6, v9

    goto :goto_2

    .line 474
    :cond_2
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 475
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    .line 474
    invoke-static {v8, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v9

    or-int/2addr v6, v9

    .line 478
    :goto_2
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 479
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    and-int/2addr v1, v9

    .line 480
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 481
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    and-int/2addr v4, v9

    .line 483
    if-eqz v6, :cond_5

    .line 484
    aget v9, v0, v5

    invoke-virtual {p0, v9, v8}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V

    .line 486
    :cond_5
    aget v9, v0, v5

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {p0, v9, v10, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnValue(IIZ)V

    .line 454
    .end local v6    # "dateFieldChanged":Z
    .end local v7    # "currField":I
    .end local v8    # "currPickerColumn":Landroid/support/v17/leanback/widget/picker/PickerColumn;
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 488
    .end local v5    # "i":I
    :cond_6
    return-void
.end method
