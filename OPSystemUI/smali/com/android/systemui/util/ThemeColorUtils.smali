.class public Lcom/android/systemui/util/ThemeColorUtils;
.super Ljava/lang/Object;
.source "ThemeColorUtils.java"


# static fields
.field public static QS_ACCENT:I

.field public static QS_BATTERY_BACKGROUND:I

.field public static QS_BUTTON:I

.field public static QS_EDIT_BOTTOM:I

.field public static QS_INDICATOR:I

.field public static QS_INDICATOR_INACTIVE:I

.field public static QS_MENU_BACKGROUND:I

.field public static QS_PANEL_PRIMARY:I

.field public static QS_PANEL_SECONDARY:I

.field public static QS_PRIMARY_TEXT:I

.field public static QS_PROGRESS_BACKGROUND:I

.field public static QS_SECONDARY_TEXT:I

.field public static QS_SEPARATOR:I

.field public static QS_TEXT:I

.field public static QS_TILE_CIRCLE_DISABLE:I

.field public static QS_TILE_CIRCLE_OFF:I

.field public static QS_TILE_DISABLE:I

.field public static QS_TILE_OFF:I

.field private static sAccentColor:I

.field private static sColors:[I

.field private static sCurrentTheme:I

.field private static sSpecialTheme:Z

.field private static sThemeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 27
    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_SECONDARY_TEXT:I

    .line 30
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_OFF:I

    .line 31
    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_DISABLE:I

    .line 32
    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    .line 33
    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_SECONDARY:I

    .line 34
    const/4 v0, 0x7

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    .line 35
    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BATTERY_BACKGROUND:I

    .line 36
    const/16 v0, 0x9

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR:I

    .line 37
    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR_INACTIVE:I

    .line 38
    const/16 v0, 0xb

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PROGRESS_BACKGROUND:I

    .line 39
    const/16 v0, 0xc

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_EDIT_BOTTOM:I

    .line 40
    const/16 v0, 0xd

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_MENU_BACKGROUND:I

    .line 41
    const/16 v0, 0xe

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_SEPARATOR:I

    .line 42
    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_CIRCLE_OFF:I

    .line 43
    const/16 v0, 0x10

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_CIRCLE_DISABLE:I

    .line 46
    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    return-void
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "colorType"    # I

    .line 104
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    if-ne p0, v0, :cond_0

    .line 105
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sAccentColor:I

    return v0

    .line 107
    :cond_0
    sget-object v0, Lcom/android/systemui/util/ThemeColorUtils;->sColors:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getCurrentTheme()I
    .locals 1

    .line 136
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    return v0
.end method

.method public static getPopTheme()I
    .locals 2

    .line 111
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const v1, 0x7f120524

    packed-switch v0, :pswitch_data_0

    .line 119
    return v1

    .line 117
    :pswitch_0
    return v1

    .line 115
    :pswitch_1
    const v0, 0x7f120525

    return v0

    .line 113
    :pswitch_2
    const v0, 0x7f120526

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getThumbBackground()I
    .locals 2

    .line 123
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const v1, 0x7f0807a0

    packed-switch v0, :pswitch_data_0

    .line 131
    return v1

    .line 129
    :pswitch_0
    return v1

    .line 127
    :pswitch_1
    return v1

    .line 125
    :pswitch_2
    const v0, 0x7f0807a1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 55
    const v1, 0x7f03004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    .line 61
    .local v1, "currentTheme":I
    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v2

    .line 62
    .local v2, "specialTheme":Z
    sget v3, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    if-ne v3, v1, :cond_1

    sget-boolean v3, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eq v3, v2, :cond_2

    .line 64
    :cond_1
    sput v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    .line 66
    sput-boolean v2, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 68
    sget-object v3, Lcom/android/systemui/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    sget v4, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    aget-object v3, v3, v4

    .line 69
    .local v3, "resName":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "com.android.systemui"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 70
    .local v4, "resId":I
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/systemui/util/ThemeColorUtils;->sColors:[I

    .line 72
    .end local v3    # "resName":Ljava/lang/String;
    .end local v4    # "resId":I
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/util/ThemeColorUtils;->updateAccentColor(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private static updateAccentColor(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    const v0, 0x7f0603f8

    invoke-static {p0, v0}, Lcom/android/systemui/util/OPUtils;->getThemeAccentColor(Landroid/content/Context;I)I

    move-result v0

    .line 77
    .local v0, "accentColor":I
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "ThemeColorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAccentColor accentColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->sAccentColor:I

    .line 101
    return-void
.end method
