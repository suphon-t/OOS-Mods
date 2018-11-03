.class public Lcom/android/systemui/statusbar/phone/CarModeHintView;
.super Landroid/widget/FrameLayout;
.source "CarModeHintView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field public static final SHOW_OVAL_LAYOUT:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHint:Landroid/widget/TextView;

.field private mHintShow:Z

.field private mOrientation:I

.field private mShowAnimation:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    .line 45
    const-string v0, "CarModeHintView"

    sput-object v0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->TAG:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomStatusBar()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->SHOW_OVAL_LAYOUT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHintShow:Z

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mContext:Landroid/content/Context;

    .line 61
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->SHOW_OVAL_LAYOUT:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0052

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0053

    .line 62
    .local v0, "layoutId":I
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->addView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/CarModeHintView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarModeHintView;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHintShow:Z

    return p1
.end method

.method private getShowAnimation()Landroid/animation/Animator;
    .locals 3

    .line 185
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 186
    .local v0, "animation":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 187
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 188
    sget-object v1, Lcom/android/systemui/statusbar/phone/CarModeHintView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    new-instance v1, Lcom/android/systemui/statusbar/phone/CarModeHintView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView$1;-><init>(Lcom/android/systemui/statusbar/phone/CarModeHintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 196
    new-instance v1, Lcom/android/systemui/statusbar/phone/CarModeHintView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView$2;-><init>(Lcom/android/systemui/statusbar/phone/CarModeHintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateHint()V
    .locals 8

    .line 82
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    .line 83
    .local v0, "notificationData":Lcom/android/systemui/statusbar/NotificationData;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 87
    .local v1, "n":Landroid/app/Notification;
    if-nez v1, :cond_1

    .line 88
    return-void

    .line 90
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v2

    .line 92
    .local v2, "bgColor":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 94
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHint:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 95
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 96
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "text":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .local v5, "newHint":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHint:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "newHint":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHint:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v3    # "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 84
    .end local v1    # "n":Landroid/app/Notification;
    .end local v2    # "bgColor":I
    :cond_4
    :goto_2
    return-void
.end method

.method private updateLayout()V
    .locals 0

    .line 79
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 174
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->TAG:Ljava/lang/String;

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHintShow:Z

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHintShow:Z

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 181
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->setVisibility(I)V

    .line 182
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 127
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->addCallback(Ljava/lang/Object;)V

    .line 128
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public onCarModeHighlightHintInfoChange()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->updateHint()V

    .line 154
    return-void
.end method

.method public onCarModeHighlightHintStateChange(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .line 141
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v0

    .line 142
    .local v0, "show":Z
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/CarModeHintView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarModeHighlightHintStateChange show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->updateHint()V

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->show(Z)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->hide()V

    .line 149
    :goto_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 113
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 114
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mOrientation:I

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->updateLayout()V

    .line 117
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->updateHint()V

    .line 122
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 134
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->removeCallback(Ljava/lang/Object;)V

    .line 135
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHint:Landroid/widget/TextView;

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->updateLayout()V

    .line 70
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 74
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 75
    return-void
.end method

.method public show(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 158
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    if-eqz p1, :cond_2

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mHintShow:Z

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->getShowAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 169
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->setVisibility(I)V

    .line 171
    :cond_3
    :goto_1
    return-void
.end method
