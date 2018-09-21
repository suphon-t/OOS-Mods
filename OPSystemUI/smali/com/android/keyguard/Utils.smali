.class public Lcom/android/keyguard/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEBUG_ONEPLUS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/keyguard/Utils;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public static getThemeAccentColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 25
    return v0

    .line 27
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "oem_black_mode_accent_color"

    goto :goto_0

    :cond_1
    const-string v1, "oem_white_mode_accent_color"

    .line 28
    .local v1, "colorkey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "color":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 30
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 32
    :cond_2
    return v0
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
