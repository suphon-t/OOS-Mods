.class public Lcom/android/systemui/qs/tileimpl/QSTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.source "QSTileView.java"


# instance fields
.field protected mColor:I

.field private mDivider:Landroid/view/View;

.field private mExpandIndicator:Landroid/view/View;

.field private mExpandSpace:Landroid/view/View;

.field protected mLabel:Landroid/widget/TextView;

.field private mLabelContainer:Landroid/view/ViewGroup;

.field private mPadLock:Landroid/widget/ImageView;

.field protected mSecondLine:Landroid/widget/TextView;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/plugins/qs/QSIconView;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/plugins/qs/QSIconView;
    .param p3, "collapsedView"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColor:I

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClipChildren(Z)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClipToPadding(Z)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClickable(Z)V

    .line 65
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setId(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setOrientation(I)V

    .line 68
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setGravity(I)V

    .line 69
    return-void
.end method

.method private updateThemeColor(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 155
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColor:I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_SECONDARY_TEXT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    const v2, 0x7f0d019c

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a042d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a035f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a046b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDivider:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0149

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public getDetailY()I
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 116
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v0, v1, :cond_2

    .line 118
    :cond_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_1

    .line 121
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getOPColorForState(I)I

    move-result v0

    .line 123
    .local v0, "color":I
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 127
    .end local v0    # "color":I
    :cond_1
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_0

    .line 133
    :cond_3
    nop

    .line 132
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :cond_4
    const/4 v0, 0x0

    .line 136
    .local v0, "dualTarget":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    if-eqz v0, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    if-eqz v0, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    .line 139
    :cond_7
    nop

    .line 138
    move-object v5, v4

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v3

    if-eq v0, v3, :cond_9

    .line 141
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 142
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    :cond_8
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 146
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v1, v2

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->updateThemeColor(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 151
    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "click"    # Landroid/view/View$OnClickListener;
    .param p2, "secondaryClick"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 169
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 77
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f0705bf

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 80
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->onMeasure(II)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->onMeasure(II)V

    .line 112
    :cond_1
    return-void
.end method
