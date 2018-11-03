.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$ClipChildrenAnimationListener;,
        Lcom/android/keyguard/KeyguardStatusView$Patterns;
    }
.end annotation


# instance fields
.field private mCharging:Z

.field private mClockSeparator:Landroid/view/View;

.field private mClockView:Lcom/android/keyguard/clock/OPTextClock;

.field private mDarkAmount:F

.field private mHandler:Landroid/os/Handler;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mInfoView:Landroid/view/ViewGroup;

.field private mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

.field private mLastLayoutHeight:I

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogoutView:Landroid/widget/TextView;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPendingMarqueeStart:Ljava/lang/Runnable;

.field private mPulsing:Z

.field private final mSmallClockScale:F

.field private mTextColor:I

.field private mVisibleInDoze:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 92
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 142
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    .line 143
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    .line 145
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mSmallClockScale:F

    .line 147
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->onDensityOrFontScaleChanged()V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;
    .param p1, "x1"    # Z

    .line 58
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/clock/OPTextClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    return-object v0
.end method

.method public static synthetic lambda$Pryio69yVoRI9F153p5QiMZe-bw(Lcom/android/keyguard/KeyguardStatusView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->onLogoutClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Xo7rGDTjuOiD9nJpe80IUZ1ddFw(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->onSliceContentChanged()V

    return-void
.end method

.method public static synthetic lambda$onLayoutChange$1(Lcom/android/keyguard/KeyguardStatusView;Landroid/graphics/Paint$Style;)V
    .locals 1
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/OPTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/OPTextClock;->invalidate()V

    .line 262
    return-void
.end method

.method public static synthetic lambda$setEnableMarquee$0(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 1

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    .line 157
    return-void
.end method

.method private layoutOwnerInfo()V
    .locals 5

    .line 457
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 461
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 463
    .local v0, "ratio":F
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 464
    .local v1, "collapsed":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 465
    .local v2, "expanded":I
    sub-int v3, v2, v1

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 466
    .local v3, "toRemove":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardStatusView;->setBottom(I)V

    .line 468
    .end local v0    # "ratio":F
    .end local v1    # "collapsed":I
    .end local v2    # "expanded":I
    .end local v3    # "toRemove":I
    :cond_0
    return-void
.end method

.method private onLogoutClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 488
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 490
    .local v0, "currentUserId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 491
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "KeyguardStatusView"

    const-string v3, "Failed to logout user"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onSliceContentChanged()V
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSliceView;->hasHeader()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 217
    .local v0, "smallClock":Z
    :goto_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mSmallClockScale:F

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 219
    .local v2, "clockScale":F
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    .line 220
    invoke-virtual {v3}, Lcom/android/keyguard/clock/OPTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 221
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/clock/OPTextClock;->getHeight()I

    move-result v4

    .line 222
    .local v4, "height":I
    int-to-float v5, v4

    int-to-float v6, v4

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    neg-float v5, v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 223
    iget-object v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/clock/OPTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mWidgetPadding:F

    float-to-int v1, v1

    nop

    :cond_3
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 227
    iget v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 228
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void
.end method

.method private refreshFormat()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;)V

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method private refreshTime()V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    .line 325
    return-void
.end method

.method private setEnableMarquee(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 151
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule setEnableMarquee: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "Enable"

    goto :goto_0

    :cond_0
    const-string v2, "Disable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 154
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    .line 165
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    .line 167
    :cond_3
    :goto_1
    return-void
.end method

.method private setEnableMarqueeImpl(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 170
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "Enable"

    goto :goto_0

    :cond_0
    const-string v2, "Disable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " transport text marquee"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 172
    :cond_1
    return-void
.end method

.method private shouldShowLogout()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLogoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0
.end method

.method private updateDark()V
    .locals 5

    .line 438
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 439
    .local v0, "dark":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 440
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    nop

    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 444
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 445
    .local v1, "hasText":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->layoutOwnerInfo()V

    .line 449
    .end local v1    # "hasText":Z
    :cond_4
    iget v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-static {v1, v2, v3}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 450
    .local v1, "blendedTextColor":I
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDozeVisibleViews()V

    .line 451
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    iget v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSliceView;->setDarkAmount(F)V

    .line 452
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/clock/OPTextClock;->setTextColor(I)V

    .line 453
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 454
    return-void
.end method

.method private updateDozeVisibleViews()V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mVisibleInDoze:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 478
    .local v1, "child":Landroid/view/View;
    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-eqz v2, :cond_0

    const v3, 0x3f4ccccd    # 0.8f

    nop

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 479
    .end local v1    # "child":Landroid/view/View;
    goto :goto_0

    .line 480
    :cond_1
    return-void
.end method

.method private updateLogoutView()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->shouldShowLogout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    return-void
.end method

.method private updateOwnerInfo()V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 360
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 359
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    .line 361
    .local v1, "ownerInfoEnabled":Z
    if-eqz v1, :cond_1

    .line 362
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .end local v1    # "ownerInfoEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateInfoViewVisibility()V

    .line 369
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 1

    .line 318
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSliceView;->refresh()V

    .line 320
    return-void
.end method

.method public getClockTextSize()F
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/OPTextClock;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getLogoutButtonHeight()I
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 335
    return v1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public hasOwnerInfo()Z
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 544
    .local v0, "hasText":Z
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 373
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 375
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    .line 304
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mWidgetPadding:F

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    .line 307
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/clock/OPTextClock;->setTextSize(IF)V

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/OPTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 308
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 313
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 380
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 382
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 176
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 177
    const v0, 0x7f0a0221

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Pryio69yVoRI9F153p5QiMZe-bw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Pryio69yVoRI9F153p5QiMZe-bw;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_0
    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setShowCurrentUserTime(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;->isNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    new-instance v2, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/keyguard/clock/OPTextClock;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 188
    :cond_1
    const v0, 0x7f0a00b3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoView:Landroid/view/ViewGroup;

    .line 190
    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0a01df

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    .line 192
    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mVisibleInDoze:Landroid/util/ArraySet;

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/OPTextClock;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    .line 196
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    .local v0, "clockStroke":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/OPTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/clock/OPTextClock;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 199
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Xo7rGDTjuOiD9nJpe80IUZ1ddFw;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Xo7rGDTjuOiD9nJpe80IUZ1ddFw;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSliceView;->setContentChangeListener(Ljava/lang/Runnable;)V

    .line 201
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->onSliceContentChanged()V

    .line 203
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    .line 204
    .local v1, "shouldMarquee":Z
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 205
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    .line 206
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 207
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    .line 208
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    .line 212
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/clock/OPTextClock;->setElegantTextHeight(Z)V

    .line 213
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 295
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/OPTextClock;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setPivotX(F)V

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setPivotY(F)V

    .line 298
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLastLayoutHeight:I

    .line 299
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->layoutOwnerInfo()V

    .line 300
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 237
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardStatusView;->getHeight()I

    move-result v4

    iget v6, v0, Lcom/android/keyguard/KeyguardStatusView;->mLastLayoutHeight:I

    sub-int/2addr v4, v6

    .line 238
    .local v4, "heightOffset":I
    :goto_0
    iget-object v6, v0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSliceView;->hasHeader()Z

    move-result v6

    .line 239
    .local v6, "hasHeader":Z
    const/4 v7, 0x1

    if-nez v6, :cond_2

    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v7

    .line 240
    .local v8, "smallClock":Z
    :goto_2
    const-wide/16 v9, 0x226

    .line 241
    .local v9, "duration":J
    if-eqz v8, :cond_3

    const-wide/16 v11, 0x0

    goto :goto_3

    :cond_3
    const-wide/16 v11, 0x4

    div-long v11, v9, v11

    .line 243
    .local v11, "delay":J
    :goto_3
    iget-object v13, v0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardSliceView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    .line 244
    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardSliceView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v13

    invoke-virtual {v13}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v7

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 245
    .local v13, "shouldAnimate":Z
    :goto_4
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v1, v14, :cond_8

    .line 246
    if-eqz v8, :cond_5

    iget v15, v0, Lcom/android/keyguard/KeyguardStatusView;->mSmallClockScale:F

    nop

    :cond_5
    move v5, v15

    .line 247
    .local v5, "clockScale":F
    if-eqz v8, :cond_6

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto :goto_5

    :cond_6
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 248
    .local v7, "style":Landroid/graphics/Paint$Style;
    :goto_5
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v14}, Lcom/android/keyguard/clock/OPTextClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 249
    if-eqz v13, :cond_7

    .line 250
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    add-int v15, p7, v4

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Lcom/android/keyguard/clock/OPTextClock;->setY(F)V

    .line 251
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v14}, Lcom/android/keyguard/clock/OPTextClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    sget-object v15, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 252
    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    .line 253
    invoke-virtual {v14, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    new-instance v15, Lcom/android/keyguard/KeyguardStatusView$ClipChildrenAnimationListener;

    invoke-direct {v15, v0}, Lcom/android/keyguard/KeyguardStatusView$ClipChildrenAnimationListener;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 254
    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    .line 255
    invoke-virtual {v14, v11, v12}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    int-to-float v15, v2

    .line 256
    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    .line 257
    invoke-virtual {v14, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    .line 258
    invoke-virtual {v14, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    new-instance v15, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$_ou77KlqH-CgaqfAz1VhLZdzKgc;

    invoke-direct {v15, v0, v7}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$_ou77KlqH-CgaqfAz1VhLZdzKgc;-><init>(Lcom/android/keyguard/KeyguardStatusView;Landroid/graphics/Paint$Style;)V

    .line 259
    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    .line 263
    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    .line 265
    :cond_7
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    int-to-float v15, v2

    invoke-virtual {v14, v15}, Lcom/android/keyguard/clock/OPTextClock;->setY(F)V

    .line 266
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v14, v5}, Lcom/android/keyguard/clock/OPTextClock;->setScaleX(F)V

    .line 267
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v14, v5}, Lcom/android/keyguard/clock/OPTextClock;->setScaleY(F)V

    .line 268
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v14}, Lcom/android/keyguard/clock/OPTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v14}, Lcom/android/keyguard/clock/OPTextClock;->invalidate()V

    .line 271
    .end local v5    # "clockScale":F
    .end local v7    # "style":Landroid/graphics/Paint$Style;
    :goto_6
    goto/16 :goto_b

    :cond_8
    iget-object v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    if-ne v1, v14, :cond_e

    .line 272
    if-eqz v6, :cond_9

    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-nez v14, :cond_9

    move v14, v7

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    .line 273
    .local v14, "hasSeparator":Z
    :goto_7
    const/16 v16, 0x0

    if-eqz v14, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v15, v16

    .line 274
    .local v15, "alpha":F
    :goto_8
    iget-object v5, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 275
    if-eqz v13, :cond_d

    .line 276
    iget v5, v0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    cmpl-float v5, v5, v16

    if-eqz v5, :cond_b

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_9
    move v5, v7

    .line 277
    .local v5, "isAwake":Z
    iget-object v7, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    add-int v1, p7, v4

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setY(F)V

    .line 278
    iget-object v1, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 279
    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 281
    if-eqz v5, :cond_c

    const/4 v7, 0x0

    goto :goto_a

    :cond_c
    new-instance v7, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;-><init>(Landroid/content/Context;)V

    :goto_a
    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v3, v2

    .line 283
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 284
    invoke-virtual {v1, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 286
    .end local v5    # "isAwake":Z
    goto :goto_b

    .line 287
    :cond_d
    iget-object v1, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 288
    iget-object v1, v0, Lcom/android/keyguard/KeyguardStatusView;->mClockSeparator:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->setAlpha(F)V

    .line 291
    .end local v14    # "hasSeparator":Z
    .end local v15    # "alpha":F
    :cond_e
    :goto_b
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    .line 388
    return-void
.end method

.method public setCharging(Z)V
    .locals 3
    .param p1, "charging"    # Z

    .line 519
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCharging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mCharging:Z

    .line 521
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateInfoViewVisibility()V

    .line 522
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1
    .param p1, "darkAmount"    # F

    .line 430
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 431
    return-void

    .line 433
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 434
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    .line 435
    return-void
.end method

.method public setPulsing(ZZ)V
    .locals 1
    .param p1, "pulsing"    # Z
    .param p2, "animate"    # Z

    .line 471
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    .line 472
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardSliceView;->setPulsing(ZZ)V

    .line 473
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDozeVisibleViews()V

    .line 474
    return-void
.end method

.method public updateInfoViewVisibility()V
    .locals 6

    .line 526
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 527
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mCharging:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 531
    .local v0, "hasText":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mCharging:Z

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    .end local v0    # "hasText":Z
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mCharging:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 536
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 540
    :goto_3
    return-void
.end method
