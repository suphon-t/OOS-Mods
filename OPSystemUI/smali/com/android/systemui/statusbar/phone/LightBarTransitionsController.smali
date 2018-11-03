.class public Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.super Ljava/lang/Object;
.source "LightBarTransitionsController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;
    }
.end annotation


# instance fields
.field private final mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

.field private mDarkIntensity:F

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNextDarkIntensity:F

.field private mPendingDarkIntensity:F

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applier"    # Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    .line 68
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 70
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    return p1
.end method

.method private animateIconTint(FJJ)V
    .locals 3
    .param p1, "targetDarkIntensity"    # F
    .param p2, "delay"    # J
    .param p4, "duration"    # J

    .line 158
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 164
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarTransitionsController$PJRveQsGC7aANrqdSv3tRYb3x7c;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarTransitionsController$PJRveQsGC7aANrqdSv3tRYb3x7c;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 172
    return-void
.end method

.method private deferIconTintChange(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 153
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 154
    return-void
.end method

.method public static synthetic lambda$animateIconTint$0(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 167
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    return-void
.end method

.method private setIconTintInternal(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .line 175
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    .line 177
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 8

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    .line 99
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 100
    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x78

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 102
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 103
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 1
    .param p1, "forced"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 94
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 8
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_1

    .line 111
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 112
    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    const-wide/16 v4, 0x0

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, p1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 112
    move-object v2, p0

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_0

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    .line 121
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 122
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 126
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 127
    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 75
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 76
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 181
    const-string v0, "  mTransitionDeferring="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 184
    const-string v0, "   mTransitionDeferringStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string v0, "   mTransitionDeferringDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 189
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 191
    :cond_0
    const-string v0, "  mTransitionPending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 192
    const-string v0, " mTintChangePending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 194
    const-string v0, "  mPendingDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 195
    const-string v0, " mDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 196
    const-string v0, " mNextDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 197
    return-void
.end method

.method public getCurrentDarkIntensity()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 85
    const-string v0, "dark_intensity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    .line 86
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 81
    .local v0, "intensity":F
    :goto_0
    const-string v1, "dark_intensity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 82
    return-void
.end method

.method public setIconsDark(ZZ)V
    .locals 8
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .line 130
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_2

    .line 131
    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    .line 132
    if-eqz p1, :cond_1

    move v0, v1

    nop

    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    goto :goto_3

    .line 133
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v2, :cond_4

    .line 134
    if-eqz p1, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->deferIconTintChange(F)V

    goto :goto_3

    .line 135
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v2, :cond_6

    .line 136
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    .line 136
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_3

    .line 140
    :cond_6
    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_2
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 142
    :goto_3
    return-void
.end method
