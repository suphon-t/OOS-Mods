.class public Lcom/android/systemui/util/OPUtils;
.super Ljava/lang/Object;
.source "OPUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/OPUtils$DisableStateTracker;
    }
.end annotation


# static fields
.field public static final DEBUG_ONEPLUS:Z

.field public static final SUPPORT_WARP_CHARGING:Z

.field private static mIsCTS:Z

.field private static mIsHomeApp:Z

.field private static mIsScreenCompat:Z

.field private static mIsSystemUI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/OPUtils;->mIsHomeApp:Z

    .line 82
    sput-boolean v0, Lcom/android/systemui/util/OPUtils;->mIsSystemUI:Z

    .line 84
    sput-boolean v0, Lcom/android/systemui/util/OPUtils;->mIsScreenCompat:Z

    .line 92
    sput-boolean v0, Lcom/android/systemui/util/OPUtils;->mIsCTS:Z

    .line 95
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportWarpCharging()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/OPUtils;->SUPPORT_WARP_CHARGING:Z

    return-void
.end method

.method public static getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 243
    move v0, p3

    .line 245
    .local v0, "defaultValue":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 246
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 248
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 250
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 252
    :cond_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in setIntField not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    nop

    .line 259
    return v0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Utils"

    const-string v3, "getIntField function Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    return v0
.end method

.method private static getReleaseType()I
    .locals 6

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "releaseType":I
    const-string v1, "1"

    const-string v2, "ro.build.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 272
    .local v1, "isAlpha":Z
    const-string v2, "1"

    const-string v3, "ro.build.beta"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 275
    .local v2, "isBeta":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 276
    const/4 v0, 0x3

    goto :goto_0

    .line 277
    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 278
    const/4 v0, 0x2

    goto :goto_0

    .line 279
    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 280
    const/4 v0, 0x1

    .line 282
    :cond_2
    :goto_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getROMType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v0
.end method

.method public static getThemeAccentColor(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultResourceId"    # I

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "color":Ljava/lang/String;
    sget-boolean v1, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeAccentColor color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 181
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasCtaFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.ctaSwitch.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBackKeyRight(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->isKeySwapped(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->isKeySwapped(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isCTS()Z
    .locals 1

    .line 389
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->mIsCTS:Z

    return v0
.end method

.method public static isClosedBeta()Z
    .locals 4

    .line 287
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->getReleaseType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 288
    .local v0, "result":Z
    :goto_0
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClosedBeta:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v0
.end method

.method public static isCurrentGuest(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 196
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 198
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 199
    const/4 v2, 0x0

    return v2

    .line 201
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    return v2
.end method

.method public static isCustomFingerprint()Z
    .locals 3

    .line 442
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x48

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isDelayShowForBootAnimation()Z
    .locals 3

    .line 454
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isGlobalROM(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isHomeApp()Z
    .locals 1

    .line 375
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->mIsHomeApp:Z

    return v0
.end method

.method public static isKeySwapped(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_key_define"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v0
.end method

.method public static isPreventModeEnalbed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 295
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 296
    return v1

    .line 301
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_acc_anti_misoperation_screen"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method public static isRemoveRoamingIcon()Z
    .locals 3

    .line 404
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isScreenCompat()Z
    .locals 1

    .line 385
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->mIsScreenCompat:Z

    return v0
.end method

.method public static isSpecialTheme(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_special_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isSupportCustomKeys()Z
    .locals 1

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportCustomNavBar()Z
    .locals 3

    .line 309
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportCustomStatusBar()Z
    .locals 3

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportFiveBar()Z
    .locals 4

    .line 418
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x55

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method public static isSupportHideNavBar()Z
    .locals 3

    .line 313
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiLTEstatus(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 228
    if-nez p0, :cond_0

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 232
    .local v0, "support":Z
    return v0
.end method

.method public static isSupportQuickLaunch()Z
    .locals 3

    .line 448
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x62

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportSOCThreekey()Z
    .locals 1

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportShow4GLTE()Z
    .locals 3

    .line 410
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x52

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportShowHD()Z
    .locals 3

    .line 238
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportShowVoLTE()Z
    .locals 4

    .line 430
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x55

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isSupportShowVoWifi()Z
    .locals 4

    .line 436
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x55

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static isSupportWarpCharging()Z
    .locals 3

    .line 459
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSystemUI()Z
    .locals 1

    .line 380
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->mIsSystemUI:Z

    return v0
.end method

.method public static isUST()Z
    .locals 3

    .line 424
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x55

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 53
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static updateTopPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 317
    move-object v0, p1

    .line 319
    .local v0, "topPackage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 324
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 325
    .local v3, "homeName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 326
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 331
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 333
    const-string v6, "net.oneplus.launcher"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "net.oneplus.h2launcher"

    .line 334
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 335
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    :goto_1
    sput-boolean v6, Lcom/android/systemui/util/OPUtils;->mIsHomeApp:Z

    goto :goto_2

    .line 338
    :cond_3
    sput-boolean v5, Lcom/android/systemui/util/OPUtils;->mIsHomeApp:Z

    .line 342
    :goto_2
    if-eqz v0, :cond_4

    .line 343
    const-string v6, "com.android.systemui"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/util/OPUtils;->mIsSystemUI:Z

    goto :goto_3

    .line 345
    :cond_4
    sput-boolean v5, Lcom/android/systemui/util/OPUtils;->mIsSystemUI:Z

    .line 350
    :goto_3
    if-eqz v0, :cond_5

    .line 351
    const-string v6, "android.systemui.cts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/util/OPUtils;->mIsCTS:Z

    goto :goto_4

    .line 353
    :cond_5
    sput-boolean v5, Lcom/android/systemui/util/OPUtils;->mIsCTS:Z

    .line 357
    :goto_4
    const-string v6, "appops"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    .line 360
    .local v6, "appOpsManager":Landroid/app/AppOpsManager;
    if-eqz v0, :cond_7

    .line 361
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 363
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v8, 0x46

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8, v9, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v8

    .line 364
    .local v8, "mode":I
    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    move v4, v5

    :goto_5
    sput-boolean v4, Lcom/android/systemui/util/OPUtils;->mIsScreenCompat:Z

    .line 365
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "mode":I
    goto :goto_6

    .line 368
    :catch_0
    move-exception v4

    goto :goto_7

    .line 366
    :cond_7
    sput-boolean v5, Lcom/android/systemui/util/OPUtils;->mIsScreenCompat:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_6
    goto :goto_8

    .line 368
    :goto_7
    nop

    .line 369
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 370
    sput-boolean v5, Lcom/android/systemui/util/OPUtils;->mIsScreenCompat:Z

    .line 372
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_8
    return-void
.end method
