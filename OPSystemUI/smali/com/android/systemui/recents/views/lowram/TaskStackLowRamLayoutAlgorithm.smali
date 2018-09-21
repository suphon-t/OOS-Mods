.class public Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLowRamLayoutAlgorithm.java"


# instance fields
.field private mFlingThreshold:I

.field private mPadding:I

.field private mPaddingEndTopBottom:I

.field private mPaddingLeftRight:I

.field private mSystemInsets:Landroid/graphics/Rect;

.field private mTaskRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private fillStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;IIZ)V
    .locals 3
    .param p1, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "y"    # I
    .param p3, "translationZ"    # I
    .param p4, "visible"    # Z

    .line 251
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 252
    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 253
    int-to-float v1, p3

    iput v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 254
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 255
    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 256
    iget-object v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 257
    iget-object v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingLeftRight:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 258
    iget-object v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 259
    iput-boolean p4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 260
    return-void
.end method

.method private getTaskTopFromIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 242
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTotalHeightOfTasks(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTopOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTotalHeightOfTasks(I)I
    .locals 3
    .param p1, "taskCount"    # I

    .line 246
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, p1

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .line 85
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 87
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 89
    :goto_1
    nop

    .line 90
    .local v1, "maxVisible":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 91
    .local v2, "visibleCount":I
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    invoke-direct {v3, v2, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v3
.end method

.method public getBackOfStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 5
    .param p1, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 112
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 117
    .local v0, "windowHeight":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    .line 118
    .local v1, "topOfCurrentTask":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    .line 119
    .local v2, "y":I
    iget v3, p2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->fillStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;IIZ)V

    .line 120
    return-void
.end method

.method public getClosestTaskP(FII)F
    .locals 11
    .param p1, "scrollP"    # F
    .param p2, "numTasks"    # I
    .param p3, "velocity"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v0

    .line 153
    .local v0, "y":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskTopFromIndex(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingEndTopBottom:I

    sub-int/2addr v2, v3

    .line 154
    .local v2, "lastY":I
    const/4 v3, 0x1

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "lastY":I
    :goto_0
    if-ge v2, p2, :cond_5

    .line 155
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskTopFromIndex(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingEndTopBottom:I

    sub-int/2addr v5, v6

    .line 156
    .local v5, "taskY":I
    sub-int v6, v5, v0

    .line 157
    .local v6, "diff":I
    if-lez v6, :cond_4

    .line 158
    sub-int v7, v0, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 159
    .local v7, "diffPrev":I
    if-le v6, v7, :cond_0

    move v8, v3

    goto :goto_1

    :cond_0
    move v8, v1

    .line 160
    .local v8, "useNext":Z
    :goto_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mFlingThreshold:I

    if-le v9, v10, :cond_2

    .line 161
    if-lez p3, :cond_1

    move v1, v3

    nop

    :cond_1
    move v8, v1

    .line 163
    :cond_2
    if-eqz v8, :cond_3

    .line 164
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result v1

    .line 163
    :goto_2
    return v1

    .line 166
    .end local v7    # "diffPrev":I
    .end local v8    # "useNext":Z
    :cond_4
    move v4, v5

    .line 154
    .end local v5    # "taskY":I
    .end local v6    # "diff":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result v1

    return v1
.end method

.method public getFrontOfStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 5
    .param p1, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 98
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 103
    .local v0, "windowHeight":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 104
    .local v1, "bottomOfCurrentTask":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 105
    .local v2, "y":I
    iget v3, p2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->fillStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;IIZ)V

    .line 106
    return-void
.end method

.method public getInitialScrollP(IZ)F
    .locals 1
    .param p1, "taskCount"    # I
    .param p2, "fromHome"    # Z

    .line 215
    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getMaxScrollP(I)F

    move-result v0

    return v0

    .line 218
    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_1
    add-int/lit8 v0, p1, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getScrollPForTask(I)F

    move-result v0

    return v0
.end method

.method public getMaxOverscroll()F
    .locals 1

    .line 238
    const v0, 0x3f2aaaaa

    return v0
.end method

.method public getMaxScrollP(I)F
    .locals 1
    .param p1, "taskCount"    # I

    .line 205
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getScrollPForTask(I)F

    move-result v0

    return v0
.end method

.method public getMinScrollP()F
    .locals 1

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getScrollPForTask(I)F

    move-result v0

    return v0
.end method

.method public getScrollPForTask(I)F
    .locals 2
    .param p1, "taskIndex"    # I

    .line 230
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskTopFromIndex(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingEndTopBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result v0

    return v0
.end method

.method public getTaskRect()Landroid/graphics/Rect;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTransform(IFLcom/android/systemui/recents/views/TaskViewTransform;ILcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 5
    .param p1, "taskIndex"    # I
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "taskCount"    # I
    .param p5, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 124
    if-nez p4, :cond_0

    .line 125
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 126
    return-object p3

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 130
    .local v0, "visible":Z
    const/4 v1, 0x1

    if-le p4, v1, :cond_2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskTopFromIndex(I)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 134
    .local v2, "y":I
    iget v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_1

    .line 136
    .end local v2    # "y":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 137
    .local v1, "windowHeight":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v3

    sub-int/2addr v2, v3

    .end local v1    # "windowHeight":I
    .restart local v2    # "y":I
    :goto_1
    move v1, v2

    .line 139
    .end local v2    # "y":I
    .local v1, "y":I
    iget v2, p5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    invoke-direct {p0, p3, v1, v2, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->fillStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;IIZ)V

    .line 140
    return-object p3
.end method

.method public initialize(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "windowRect"    # Landroid/graphics/Rect;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 68
    .local v0, "windowHeight":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 69
    .local v1, "windowWidth":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 70
    .local v2, "width":I
    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 71
    .local v4, "isLandscape":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    mul-int/lit8 v6, v2, 0x2

    div-int/lit8 v6, v6, 0x3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {v5, v3, v3, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    iget-object v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingLeftRight:I

    .line 73
    iget-object v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingEndTopBottom:I

    .line 76
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTotalHeightOfTasks(I)I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTopOffset:I

    .line 78
    .end local v0    # "windowHeight":I
    .end local v1    # "windowWidth":I
    .end local v2    # "width":I
    .end local v4    # "isLandscape":Z
    :cond_2
    return-void
.end method

.method public percentageToScroll(F)I
    .locals 2
    .param p1, "p"    # F

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    const v1, 0x7f07059c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    .line 61
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mFlingThreshold:I

    .line 62
    return-void
.end method

.method public scrollToPercentage(I)F
    .locals 3
    .param p1, "scroll"    # I

    .line 177
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 82
    return-void
.end method
