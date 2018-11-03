.class public Lcom/android/systemui/plugin/PreventModeView;
.super Landroid/widget/RelativeLayout;
.source "PreventModeView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mInnerView:Landroid/widget/LinearLayout;

.field mOrientatin:I

.field private mPhone:Landroid/widget/ImageView;

.field private mRippleView:Lcom/android/systemui/plugin/RippleView;

.field private mScrim:Landroid/view/View;

.field private mTag:Landroid/widget/TextView;

.field private mTag2:Landroid/widget/TextView;

.field private mTagNum1:Landroid/widget/TextView;

.field private mTagNum2:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 70
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 65
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 60
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 55
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private getDisplayHeight()I
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 137
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 138
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    return v2
.end method

.method private playRippleAniamor()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->prepare()V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->startRipple()V

    .line 120
    return-void
.end method

.method private relayout()V
    .locals 6

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->getDisplayHeight()I

    move-result v0

    .line 111
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 112
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 113
    int-to-double v2, v0

    const-wide v4, 0x3fc645a1cac08312L    # 0.174

    mul-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 114
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 93
    const v0, 0x7f0a0327

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x7f0a032a

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0a0328

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f0a032b

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0a032c

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0a032d

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag2:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTagNum1:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0a032f

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTagNum2:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0a036a

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugin/RippleView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    .line 102
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mConfig:Landroid/content/res/Configuration;

    .line 103
    const v0, 0x7f0a039f

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mScrim:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    const v1, 0x7f080778

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->relayout()V

    .line 107
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1104ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    const v1, 0x7f1104ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    const v1, 0x7f1104ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag2:Landroid/widget/TextView;

    const v1, 0x7f1104ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mConfig:Landroid/content/res/Configuration;

    .line 84
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    if-eq v0, v1, :cond_0

    .line 85
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->relayout()V

    .line 90
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 124
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 127
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->stopRipple()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->playRippleAniamor()V

    .line 133
    :cond_1
    :goto_0
    return-void
.end method
