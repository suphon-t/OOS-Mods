.class Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "GuidedActionsRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;
    }
.end annotation


# instance fields
.field private mInOverride:Z

.field private mInterceptKeyEventListener:Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;

.field private mKeyLinePercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    .line 37
    invoke-static {p1}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mKeyLinePercent:F

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 79
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInterceptKeyEventListener:Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInterceptKeyEventListener:Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;->onInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 69
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 50
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 51
    .local v0, "heightSize":I
    if-lez v0, :cond_1

    .line 52
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 54
    nop

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    if-nez v3, :cond_0

    .line 57
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    .line 59
    :cond_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mInOverride:Z

    if-eqz v3, :cond_1

    .line 60
    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->mKeyLinePercent:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 65
    return-void
.end method
