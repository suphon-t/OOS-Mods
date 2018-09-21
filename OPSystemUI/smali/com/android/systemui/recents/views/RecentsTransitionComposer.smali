.class public Lcom/android/systemui/recents/views/RecentsTransitionComposer;
.super Ljava/lang/Object;
.source "RecentsTransitionComposer.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;
    .locals 4
    .param p0, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "addHeaderBitmap"    # Z

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 62
    invoke-static {p1, p2}, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v1, "taskRect":Landroid/graphics/Rect;
    iget-object v2, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 74
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 76
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 78
    :cond_1
    new-instance v2, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v2
.end method

.method private static composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 161
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 162
    .local v0, "scale":F
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 163
    .local v1, "headerWidth":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 164
    .local v2, "headerHeight":I
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 165
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private static composeOffscreenAnimationSpec(Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;
    .locals 3
    .param p0, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p1, "taskRect"    # Landroid/graphics/Rect;

    .line 136
    new-instance v0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 140
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 141
    .local v0, "scale":F
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 142
    .local v1, "fromWidth":I
    iget-object v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 143
    .local v2, "fromHeight":I
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v0, v3}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 144
    :cond_1
    :goto_0
    const-string v3, "RecentsTransitionComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compose thumbnail for task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " at transform: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0xffffff

    const/4 v6, 0x1

    invoke-static {v6, v6, v3, v4, v5}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public composeAnimationSpecs(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IILandroid/graphics/Rect;)Ljava/util/List;
    .locals 6
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "windowingMode"    # I
    .param p4, "activityType"    # I
    .param p5, "windowRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            "II",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 100
    .local v0, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    .line 101
    .local v1, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 102
    .local v2, "offscreenTaskRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 109
    const/4 v3, 0x1

    if-eq p3, v3, :cond_1

    const/4 v4, 0x3

    if-eq p3, v4, :cond_1

    const/4 v4, 0x4

    if-eq p3, v4, :cond_1

    if-eq p4, v4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 114
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v4, "specs":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;>;"
    if-nez v0, :cond_2

    .line 116
    invoke-static {p1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->composeOffscreenAnimationSpec(Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 119
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v1, v5, p5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 120
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {p2, v0, v5, v3}, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    move-result-object v3

    .line 122
    .local v3, "spec":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;
    if-eqz v3, :cond_3

    .line 123
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v3    # "spec":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;
    :cond_3
    :goto_1
    return-object v4
.end method

.method public composeDockAnimationSpec(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 4
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 87
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 88
    .local v0, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {p1, v1}, Lcom/android/systemui/recents/views/RecentsTransitionComposer;->composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    .local v1, "buffer":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v2, v3, v1, p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
