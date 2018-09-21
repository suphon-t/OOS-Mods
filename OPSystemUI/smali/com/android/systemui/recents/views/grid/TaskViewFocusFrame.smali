.class public Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;
.super Landroid/view/View;
.source "TaskViewFocusFrame.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field private mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mContext:Landroid/content/Context;

    const v1, 0x7f080554

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setFocusable(Z)V

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->hide()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "taskGridLayoutAlgorithm"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p2, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 59
    return-void
.end method

.method private hide()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setAlpha(F)V

    .line 140
    return-void
.end method

.method private show()V
    .locals 1

    .line 135
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setAlpha(F)V

    .line 136
    return-void
.end method


# virtual methods
.method public layout()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->layout(IIII)V

    .line 77
    return-void
.end method

.method public measure()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getFocusFrameThickness()I

    move-result v0

    .line 66
    .local v0, "thickness":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTaskGridRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 67
    .local v1, "rect":Landroid/graphics/Rect;
    nop

    .line 68
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->measure(II)V

    .line 70
    return-void
.end method

.method public moveGridTaskViewFocus(Landroid/view/View;)V
    .locals 3
    .param p1, "newFocus"    # Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    instance-of v0, p1, Lcom/android/systemui/recents/views/grid/GridTaskView;

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 102
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getFocusFrameThickness()I

    move-result v1

    .line 104
    .local v1, "thickness":I
    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setTranslationX(F)V

    .line 105
    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setTranslationY(F)V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->show()V

    .line 107
    .end local v0    # "location":[I
    .end local v1    # "thickness":I
    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->hide()V

    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    if-nez p2, :cond_1

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 122
    return-void

    .line 124
    :cond_1
    if-nez p1, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 127
    .local v0, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    .line 128
    .local v1, "taskCount":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v2

    .line 129
    .local v2, "k":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_2
    rem-int v3, v2, v1

    .line 130
    .local v3, "taskIndexToFocus":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 132
    .end local v0    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v1    # "taskCount":I
    .end local v2    # "k":I
    .end local v3    # "taskIndexToFocus":I
    :cond_3
    return-void
.end method

.method public resize()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->updateTaskGridRect(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->measure()V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->requestLayout()V

    .line 88
    :cond_0
    return-void
.end method
