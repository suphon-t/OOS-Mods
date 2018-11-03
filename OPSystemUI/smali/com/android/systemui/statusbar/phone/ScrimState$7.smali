.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$7;
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

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3
    .param p1, "previousState"    # Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindAlpha:F

    .line 148
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontAlpha:F

    .line 149
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimationDuration:J

    .line 151
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    .line 161
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    goto :goto_1

    .line 153
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 156
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    .line 157
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    .line 164
    :goto_1
    return-void
.end method
