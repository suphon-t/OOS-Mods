.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;
    }
.end annotation


# static fields
.field public static final FORCE_NO_BLANKING:Z

.field private static sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private static sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;


# instance fields
.field private final mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field private final mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mControlScreenOffAnimation:Z

.field private mDozeAlwaysOn:Z

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "debug.force_no_blanking"

    .line 42
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 67
    new-instance v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    .line 73
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "doze_always_on"

    const-string v2, "accessibility_display_inversion_enabled"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, "value":I
    const/4 v1, 0x0

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doubleTapReportsTouchCoordinates()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getAlwaysOn()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    return v0
.end method

.method public getDisplayNeedsBlanking()Z
    .locals 1

    .line 187
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDisplayStateSupported()Z
    .locals 2

    .line 106
    const-string v0, "doze.display.supported"

    const v1, 0x7f050041

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getDozeSuspendDisplayStateSupported()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getPickupSubtypePerformsProxCheck(I)Z
    .locals 3
    .param p1, "subType"    # I

    .line 223
    const-string v0, "doze.pickup.proxcheck"

    const v1, 0x7f11024d

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "spec":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1

    .line 231
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    .line 232
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    .line 236
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->isIn(I)Z

    move-result v1

    return v1
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    .line 151
    const-string v0, "doze.pickup.vibration.threshold"

    const v1, 0x7f0b0029

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    return-object v0
.end method

.method protected getPowerManager()Landroid/os/PowerManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method public getProxCheckBeforePulse()Z
    .locals 2

    .line 147
    const-string v0, "doze.pulse.proxcheck"

    const v1, 0x7f050044

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    .line 135
    const-string v0, "doze.pulse.sigmotion"

    const v1, 0x7f050046

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration()I
    .locals 2

    .line 127
    const-string v0, "doze.pulse.duration.visible"

    const v1, 0x7f0b002c

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDurationExtended()I
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    return v1
.end method

.method public getScreenBrightnessDoze()F
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWallpaperAodDuration()J
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1194

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    .line 159
    :goto_0
    return-wide v0
.end method

.method public getWallpaperFadeOutDuration()J
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    return-wide v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    .line 250
    return-void
.end method

.method public setControlScreenOffAnimation(Z)V
    .locals 2
    .param p1, "controlScreenOffAnimation"    # Z

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-ne v0, p1, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    .line 202
    return-void
.end method

.method public shouldControlScreenOff()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    return v0
.end method
