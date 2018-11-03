.class public Lcom/android/systemui/statusbar/phone/OPFacelockLightView;
.super Landroid/widget/RelativeLayout;
.source "OPFacelockLightView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButton:Landroid/widget/TextView;

.field private mClockView:Lcom/android/keyguard/clock/OPTextClock;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDateView:Lcom/android/keyguard/clock/OPTextClock;

.field private mInnerView:Landroid/widget/LinearLayout;

.field private mNotify:Landroid/widget/TextView;

.field private mNotifyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-string v0, "OPFacelockLightView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->TAG:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private getDateViewFormat()Ljava/lang/String;
    .locals 2

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 108
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "EEMMMd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refresh()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->refreshTime()V

    .line 123
    return-void
.end method

.method private relayout()V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 89
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 90
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 91
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 73
    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    .line 74
    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotify:Landroid/widget/TextView;

    .line 75
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mConfig:Landroid/content/res/Configuration;

    .line 76
    const v1, 0x7f0a014f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    .line 77
    const v1, 0x7f0a0150

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/OPTextClock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotifyView:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a0154

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mButton:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, "img":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    const-string v1, "OPFacelockLightView"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->relayout()V

    .line 84
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mNotify:Landroid/widget/TextView;

    const v1, 0x7f110276

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mButton:Landroid/widget/TextView;

    const v1, 0x7f110069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mConfig:Landroid/content/res/Configuration;

    .line 70
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 97
    if-nez p2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->refresh()V

    .line 100
    :cond_0
    return-void
.end method

.method public refreshTime()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getDateViewFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mDateView:Lcom/android/keyguard/clock/OPTextClock;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->getDateViewFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->mClockView:Lcom/android/keyguard/clock/OPTextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method
