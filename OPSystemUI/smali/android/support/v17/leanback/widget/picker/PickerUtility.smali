.class Landroid/support/v17/leanback/widget/picker/PickerUtility;
.super Ljava/lang/Object;
.source "PickerUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;,
        Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;
    }
.end annotation


# static fields
.field static final SUPPORTS_BEST_DATE_TIME_PATTERN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v17/leanback/widget/picker/PickerUtility;->SUPPORTS_BEST_DATE_TIME_PATTERN:Z

    return-void
.end method

.method public static createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "firstNumber"    # I
    .param p1, "lastNumber"    # I
    .param p2, "format"    # Ljava/lang/String;

    .line 77
    sub-int v0, p1, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 78
    .local v0, "array":[Ljava/lang/String;
    move v2, p0

    .local v2, "i":I
    :goto_0
    if-gt v2, p1, :cond_1

    .line 79
    if-eqz p2, :cond_0

    .line 80
    sub-int v3, v2, p0

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_1

    .line 82
    :cond_0
    sub-int v3, v2, p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 78
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p0, "oldCalendar"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 89
    if-nez p0, :cond_0

    .line 90
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 93
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 94
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 95
    return-object v2
.end method

.method public static getDateConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 68
    new-instance v0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;Landroid/support/v17/leanback/widget/picker/PickerUtility$1;)V

    return-object v0
.end method

.method public static getTimeConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 72
    new-instance v0, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;Landroid/support/v17/leanback/widget/picker/PickerUtility$1;)V

    return-object v0
.end method
