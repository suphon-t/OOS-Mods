.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$5;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "index"    # I

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public isLowPowerState()Z
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3
    .param p1, "previousState"    # Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    .line 108
    .local v0, "alwaysOnEnabled":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mDisplayRequiresBlanking:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mBlankScreen:Z

    .line 109
    nop

    .line 110
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mWallpaperSupportsAmbientMode:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockscreenWallpaper()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentBehindAlpha:F

    .line 111
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mAodFrontScrimAlpha:F

    nop

    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentInFrontAlpha:F

    .line 112
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentInFrontTint:I

    .line 113
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentBehindTint:I

    .line 114
    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mAnimationDuration:J

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mAnimateChange:Z

    .line 118
    return-void
.end method
