.class public Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;
.super Ljava/lang/Object;
.source "PickerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/PickerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeConstant"
.end annotation


# instance fields
.field public final ampm:[Ljava/lang/String;

.field public final hours12:[Ljava/lang/String;

.field public final hours24:[Ljava/lang/String;

.field public final locale:Ljava/util/Locale;

.field public final minutes:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    .line 59
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 60
    .local v0, "symbols":Ljava/text/DateFormatSymbols;
    const-string v1, "%02d"

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-static {v2, v3, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->hours12:[Ljava/lang/String;

    .line 61
    const-string v1, "%02d"

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-static {v2, v3, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    .line 62
    const-string v1, "%02d"

    const/16 v3, 0x3b

    invoke-static {v2, v3, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;Landroid/support/v17/leanback/widget/picker/PickerUtility$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Locale;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/support/v17/leanback/widget/picker/PickerUtility$1;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;)V

    return-void
.end method
