.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$6;
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

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3
    .param p1, "previousState"    # Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mCurrentInFrontAlpha:F

    .line 133
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mCurrentInFrontTint:I

    .line 134
    nop

    .line 135
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mWallpaperSupportsAmbientMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockscreenWallpaper()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mCurrentBehindAlpha:F

    .line 136
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mCurrentBehindTint:I

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mDisplayRequiresBlanking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mBlankScreen:Z

    .line 138
    return-void
.end method
