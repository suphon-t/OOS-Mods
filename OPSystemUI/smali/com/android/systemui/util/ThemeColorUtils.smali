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

    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 26
    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_SECONDARY_TEXT:I

    .line 29
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_OFF:I

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_DISABLE:I

    .line 31
    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    .line 32
    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_SECONDARY:I

    .line 33
    const/4 v0, 0x7

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    .line 34
    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BATTERY_BACKGROUND:I

    .line 35
    const/16 v0, 0x9

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR:I

    .line 36
    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR_INACTIVE:I

    .line 37
    const/16 v0, 0xb

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PROGRESS_BACKGROUND:I

    .line 38
    const/16 v0, 0xc

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_EDIT_BOTTOM:I

    .line 39
    const/16 v0, 0xd

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_MENU_BACKGROUND:I

    .line 40
    const/16 v0, 0xe

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_SEPARATOR:I

    .line 41
    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_CIRCLE_OFF:I

    .line 42
    const/16 v0, 0x10

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_CIRCLE_DISABLE:I

    .line 45
    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    return-void
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "colorType"    # I

    .line 99
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    if-ne p0, v0, :cond_0

    .line 100
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sAccentColor:I

    return v0

    .line 102
    :cond_0
    sget-object v0, Lcom/android/systemui/util/ThemeColorUtils;->sColors:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getCurrentTheme()I
    .locals 1

    .line 131
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    return v0
.end method

.method public static getPopTheme()I
    .locals 2

    .line 106
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const v1, 0x7f120523

    packed-switch v0, :pswitch_data_0

    .line 114
    return v1

    .line 112
    :pswitch_0
    return v1

    .line 110
    :pswitch_1
    const v0, 0x7f120524

    return v0

    .line 108
    :pswitch_2
    const v0, 0x7f120525

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSpecialThemeAccentColor()Ljava/lang/String;
    .locals 3

    .line 151
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    .line 153
    .local v0, "type":Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    sget-object v1, Lcom/android/systemui/util/ThemeColorUtils$1;->$SwitchMap$com$oneplus$custom$utils$OpCustomizeSettings$CUSTOM_TYPE:[I

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 160
    const/4 v1, 0x0

    return-object v1

    .line 157
    :pswitch_0
    const-string v1, "#FFFBC02D"

    return-object v1

    .line 155
    :pswitch_1
    const-string v1, "#FFFF2837"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getThumbBackground()I
    .locals 2

    .line 118
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const v1, 0x7f080564

    packed-switch v0, :pswitch_data_0

    .line 126
    return v1

    .line 124
    :pswitch_0
    return v1

    .line 122
    :pswitch_1
    return v1

    .line 120
    :pswitch_2
    const v0, 0x7f080565

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

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 54
    const v1, 0x7f03004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    .line 60
    .local v1, "currentTheme":I
    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v2

    .line 61
    .local v2, "specialTheme":Z
    sget v3, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    if-ne v3, v1, :cond_1

    sget-boolean v3, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eq v3, v2, :cond_2

    .line 63
    :cond_1
    sput v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    .line 65
    sput-boolean v2, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 67
    sget-object v3, Lcom/android/systemui/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    sget v4, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    aget-object v3, v3, v4

    .line 68
    .local v3, "resName":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "com.android.systemui"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 69
    .local v4, "resId":I
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/systemui/util/ThemeColorUtils;->sColors:[I

    .line 71
    .end local v3    # "resName":Ljava/lang/String;
    .end local v4    # "resId":I
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/util/ThemeColorUtils;->updateAccentColor(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private static updateAccentColor(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    const-string v0, "#FF2196F3"

    .line 76
    .local v0, "color":Ljava/lang/String;
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    const-string v0, "#FF2196F3"

    goto :goto_1

    .line 81
    :cond_0
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 84
    sget-boolean v1, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eqz v1, :cond_1

    .line 86
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getSpecialThemeAccentColor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    if-nez v0, :cond_2

    .line 92
    const-string v0, "#FF42A5F5"

    .line 95
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/systemui/util/ThemeColorUtils;->sAccentColor:I

    .line 96
    return-void
.end method
