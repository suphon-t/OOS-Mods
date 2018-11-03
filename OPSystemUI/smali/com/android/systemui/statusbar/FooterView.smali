.class public Lcom/android/systemui/statusbar/FooterView;
.super Lcom/android/systemui/statusbar/StackScrollerDecorView;
.source "FooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/FooterView$FooterViewState;
    }
.end annotation


# instance fields
.field private final mClearAllTopPadding:I

.field private mDismissButton:Lcom/android/systemui/statusbar/FooterViewButton;

.field private mManageButton:Lcom/android/systemui/statusbar/FooterViewButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/FooterView;->mClearAllTopPadding:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/FooterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/FooterView;

    .line 29
    iget v0, p0, Lcom/android/systemui/statusbar/FooterView;->mClearAllTopPadding:I

    return v0
.end method


# virtual methods
.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/FooterView$FooterViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/FooterView$FooterViewState;-><init>(Lcom/android/systemui/statusbar/FooterView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .locals 1

    .line 42
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/FooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected findSecondaryView()Landroid/view/View;
    .locals 1

    .line 46
    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/FooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isOnEmptySpace(FF)Z
    .locals 2
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mContent:Landroid/view/View;

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/FooterView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mContent:Landroid/view/View;

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mContent:Landroid/view/View;

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/FooterView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 70
    :goto_1
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 78
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/FooterViewButton;

    const v1, 0x7f1101d6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/FooterViewButton;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/FooterViewButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/FooterView;->mContext:Landroid/content/Context;

    .line 81
    const v2, 0x7f11005f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/FooterViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mManageButton:Lcom/android/systemui/statusbar/FooterViewButton;

    const v1, 0x7f1103ae

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/FooterViewButton;->setText(I)V

    .line 83
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onFinishInflate()V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FooterView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/FooterViewButton;

    .line 53
    const v0, 0x7f0a022b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/FooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mManageButton:Lcom/android/systemui/statusbar/FooterViewButton;

    .line 54
    return-void
.end method

.method public setDismissButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/FooterViewButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/FooterViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public setManageButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mManageButton:Lcom/android/systemui/statusbar/FooterViewButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/FooterViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mManageButton:Lcom/android/systemui/statusbar/FooterViewButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/FooterViewButton;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/FooterViewButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/FooterViewButton;->setTextColor(I)V

    .line 59
    return-void
.end method
