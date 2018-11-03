.class public Lcom/android/systemui/power/OverHeatProtectorUtils;
.super Ljava/lang/Object;
.source "OverHeatProtectorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static mActivityManager:Landroid/app/ActivityManager;

.field private static mBackgroundExecutor:Lcom/android/systemui/power/BackgroundExecutor;

.field private static mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mWallpaperManager:Landroid/app/WallpaperManager;

.field private static sContext:Landroid/content/Context;

.field private static sCurrentDockedPackageName:Ljava/lang/String;

.field private static sCurrentInputMethodPackageName:Ljava/lang/String;

.field private static sCurrentLauncherPackageName:Ljava/lang/String;

.field private static sCurrentWallpaperPackageName:Ljava/lang/String;

.field private static sInit:Z

.field private static sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private static sOverHeatWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->DEBUG:Z

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sInit:Z

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    .line 67
    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    .line 68
    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentDockedPackageName:Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oppo.qetest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oppo.qetest.remote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oppo.qemonitor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oppo.qemonitor.remote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.factorymode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "system"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "system:ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "android.process.acore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "android.process.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "org.codeaurora.ims"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.telephony"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.qcrilmsgtunnel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.qti.telephonyservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.qti.GBAHttpAuthentication.auth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qti.qualcomm.datastatusnotification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.location.XT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.qti.tetherservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.wfd.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.nxp.spi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.ota"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "net.oneplus.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "net.oneplus.odm.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.coloros.mcs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oem.oemlogkit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.faceunlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.speechassist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.backuprestore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.process.gapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.gms.persistent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.gms.unstable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.apps.messaging"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.gms.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.inputmethod.latin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.tts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.webview"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/android/systemui/power/OverHeatProtectorUtils;->canThisProcessBeKilledByOverHeat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 54
    invoke-static {p0, p1}, Lcom/android/systemui/power/OverHeatProtectorUtils;->forceStopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONArray;

    .line 54
    invoke-static {p0}, Lcom/android/systemui/power/OverHeatProtectorUtils;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method private static canThisProcessBeKilledByOverHeat(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 158
    invoke-static {p0}, Lcom/android/systemui/power/OverHeatProtectorUtils;->isInOverHeatWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "white: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v1

    .line 163
    :cond_0
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 164
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    .line 166
    :cond_1
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 167
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->getCurrentLauncher()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    .line 169
    :cond_2
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 170
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->getWallpaperPackageNameIfAvailable()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    .line 172
    :cond_3
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v1

    .line 175
    :cond_4
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v1

    .line 178
    :cond_5
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v1

    .line 182
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private static forceStopPackage(Ljava/lang/String;I)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 186
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task is killed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 188
    return-void
.end method

.method private static getCurrentInputMethod()Ljava/lang/String;
    .locals 5

    .line 121
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "iml":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 124
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "defaultIme":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 127
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 130
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    goto :goto_0

    .line 133
    .end local v0    # "iml":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v1    # "defaultIme":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentLauncher()Ljava/lang/String;
    .locals 3

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 141
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2
.end method

.method private static getWallpaperPackageNameIfAvailable()Ljava/lang/String;
    .locals 5

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 152
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get wallpaper info package name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "OverHeatProtector"

    const-string v1, "FATAL: repeated initialization for Utils!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 82
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 83
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    invoke-static {}, Lcom/android/systemui/power/BackgroundExecutor;->get()Lcom/android/systemui/power/BackgroundExecutor;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mBackgroundExecutor:Lcom/android/systemui/power/BackgroundExecutor;

    .line 88
    sput-object p0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->registerOnlineConfigObserver()V

    .line 90
    return-void
.end method

.method public static isInOverHeatWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 94
    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    .line 95
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 94
    :goto_1
    return v0
.end method

.method public static killAllRunningProcesses()V
    .locals 3

    .line 99
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->mBackgroundExecutor:Lcom/android/systemui/power/BackgroundExecutor;

    new-instance v2, Lcom/android/systemui/power/OverHeatProtectorUtils$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/OverHeatProtectorUtils$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 118
    return-void
.end method

.method private static registerOnlineConfigObserver()V
    .locals 5

    .line 191
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;-><init>(Lcom/android/systemui/power/OverHeatProtectorUtils$1;)V

    .line 193
    .local v0, "updater":Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    sget-object v2, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    .line 194
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "OverHeatConfig"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    sput-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 196
    :try_start_0
    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 197
    sget-boolean v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OverHeatProtector"

    const-string v2, "Register online config observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register online config fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "updater":Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/power/OverHeatProtectorUtils$2;

    invoke-direct {v1}, Lcom/android/systemui/power/OverHeatProtectorUtils$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method private static resolveConfig(Lorg/json/JSONArray;)V
    .locals 9
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 239
    if-eqz p0, :cond_9

    .line 241
    const/4 v0, 0x0

    move v1, v0

    .line 241
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 242
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 243
    .local v2, "jsonOhp":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "name":Ljava/lang/String;
    const-string v4, "enable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "enable":Ljava/lang/String;
    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setEnable(Z)V

    .line 248
    .end local v4    # "enable":Ljava/lang/String;
    :cond_0
    const-string v4, "orange_temp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "temp":Ljava/lang/String;
    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setOrangeTemp(I)V

    .line 252
    .end local v4    # "temp":Ljava/lang/String;
    :cond_1
    const-string v4, "red_temp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .restart local v4    # "temp":Ljava/lang/String;
    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setRedTemp(I)V

    .line 256
    .end local v4    # "temp":Ljava/lang/String;
    :cond_2
    const-string v4, "purple_temp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .restart local v4    # "temp":Ljava/lang/String;
    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setPurpleTemp(I)V

    .line 260
    .end local v4    # "temp":Ljava/lang/String;
    :cond_3
    const-string v4, "orange_interval"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 261
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "second":Ljava/lang/String;
    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setOrangeInterval(I)V

    .line 264
    .end local v4    # "second":Ljava/lang/String;
    :cond_4
    const-string v4, "red_interval"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 265
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .restart local v4    # "second":Ljava/lang/String;
    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setRedInterval(I)V

    .line 268
    .end local v4    # "second":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "whitelist"

    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 269
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 270
    .local v4, "list":Lorg/json/JSONArray;
    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    monitor-enter v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :try_start_1
    sget-object v6, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 272
    move v6, v0

    .line 272
    .local v6, "j":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 273
    sget-object v7, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 275
    .end local v6    # "j":I
    :cond_6
    const-string v6, "OverHeatProtector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updated complete sOverHeatWhiteList size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    .end local v2    # "jsonOhp":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "list":Lorg/json/JSONArray;
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 281
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveConfig error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveConfig error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_8
    :goto_3
    goto :goto_4

    .line 285
    :cond_9
    const-string v0, "OverHeatProtector"

    const-string v1, "jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_4
    return-void
.end method
