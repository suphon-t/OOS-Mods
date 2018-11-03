.class public Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;
.super Ljava/lang/Object;
.source "PickerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/PickerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateConstant"
.end annotation


# instance fields
.field public final days:[Ljava/lang/String;

.field public final locale:Ljava/util/Locale;

.field public final months:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    .line 42
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 43
    .local v0, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    .line 44
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 45
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    const-string v4, "%02d"

    .line 45
    invoke-static {v3, v2, v4}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->days:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;Landroid/support/v17/leanback/widget/picker/PickerUtility$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Locale;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/support/v17/leanback/widget/picker/PickerUtility$1;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;)V

    return-void
.end method
