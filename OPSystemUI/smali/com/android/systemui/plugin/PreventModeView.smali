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

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 67
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 62
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 57
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 52
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private getDisplayHeight()I
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 134
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 135
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    return v2
.end method

.method private playRippleAniamor()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->prepare()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->startRipple()V

    .line 117
    return-void
.end method

.method private relayout()V
    .locals 6

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->getDisplayHeight()I

    move-result v0

    .line 108
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 109
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 110
    int-to-double v2, v0

    const-wide v4, 0x3fc645a1cac08312L    # 0.174

    mul-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 111
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 90
    const v0, 0x7f0a0311

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    .line 91
    const v0, 0x7f0a0314

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0a0312

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0a0315

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0a0316

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0a0317

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag2:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTagNum1:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTagNum2:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0a0352

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugin/RippleView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    .line 99
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mConfig:Landroid/content/res/Configuration;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    const v1, 0x7f08054b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->relayout()V

    .line 104
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f110494

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    const v1, 0x7f110495

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    const v1, 0x7f110496

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag2:Landroid/widget/TextView;

    const v1, 0x7f110497

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mConfig:Landroid/content/res/Configuration;

    .line 81
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    if-eq v0, v1, :cond_0

    .line 82
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->relayout()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 121
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 124
    if-eqz p2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->stopRipple()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->playRippleAniamor()V

    .line 130
    :cond_1
    :goto_0
    return-void
.end method
