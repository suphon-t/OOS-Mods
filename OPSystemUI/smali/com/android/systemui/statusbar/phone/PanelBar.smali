.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBouncerShowing:Z

.field private mExpanded:Z

.field mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mState:I

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 58
    return-void
.end method

.method private updateVisibility()V
    .locals 3

    .line 82
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateVisibility mExpanded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mBouncerShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "delayed"    # Z
    .param p3, "speedUpFactor"    # F

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "waiting":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 163
    .local v1, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {v1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews()V

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 169
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 172
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v2, :cond_1

    .line 175
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 178
    :cond_1
    return-void
.end method

.method public getState()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return v0
.end method

.method public go(I)V
    .locals 0
    .param p1, "state"    # I

    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 50
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClosingFinished()V
    .locals 0

    .line 210
    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    .line 206
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 0

    .line 190
    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 0

    .line 194
    return-void
.end method

.method public onPanelPeeked()V
    .locals 0

    .line 182
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v4, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    .line 95
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return v2

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 103
    .local v0, "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v0, :cond_2

    .line 105
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v5, "onTouch: no panel for touch at (%d,%d)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 105
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v3

    .line 109
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v4

    .line 112
    .local v4, "enabled":Z
    if-nez v4, :cond_3

    .line 114
    sget-object v5, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v6, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    .line 114
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v3

    .line 120
    .end local v0    # "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v4    # "enabled":Z
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    :goto_1
    return v2
.end method

.method public onTrackingStarted()V
    .locals 1

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 198
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 202
    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 7
    .param p1, "frac"    # F
    .param p2, "expanded"    # Z

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "fullyClosed":Z
    const/4 v1, 0x0

    .line 134
    .local v1, "fullyOpened":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 135
    .local v2, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    .line 138
    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 139
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 140
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 144
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    .line 146
    .local v4, "thisFrac":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    move v1, v5

    .line 148
    .end local v4    # "thisFrac":F
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v4, :cond_3

    .line 149
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_1

    .line 151
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 158
    :cond_4
    :goto_1
    return-void
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    .line 72
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "important":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setImportantForAccessibility(I)V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setImportantForAccessibility(I)V

    .line 79
    :cond_1
    return-void
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 67
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 68
    return-void
.end method
