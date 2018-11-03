.class public Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# instance fields
.field private mDeviceId:I

.field private mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mDownPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragRequested:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragSlop:F

.field private mDragTask:Lcom/android/systemui/shared/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task"
    .end annotation
.end field

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragging:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mRv:Lcom/android/systemui/recents/views/RecentsView;

.field private mTaskView:Lcom/android/systemui/recents/views/TaskView;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task_view_"
    .end annotation
.end field

.field private mTaskViewOffset:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mVisibleDockStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/DockState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 1
    .param p1, "rv"    # Lcom/android/systemui/recents/views/RecentsView;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    .line 78
    return-void
.end method

.method private changeStackActionButtonDrawableHotspot(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 197
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButton()Landroid/view/View;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 198
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 205
    .local v1, "action":I
    const/4 v2, 0x0

    .line 206
    .local v2, "consumed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 207
    .local v3, "evX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 208
    .local v4, "evY":F
    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 219
    :pswitch_0
    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 220
    .local v7, "x":F
    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    .line 222
    .local v8, "y":F
    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButton()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->isWithinStackActionButton(FF)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 223
    invoke-direct {v0, v3, v4}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->changeStackActionButtonDrawableHotspot(FF)V

    .line 226
    :cond_0
    iget-boolean v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v9, :cond_c

    .line 227
    iget-boolean v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-nez v9, :cond_2

    .line 228
    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    float-to-double v9, v9

    iget-object v11, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    sub-float v11, v4, v11

    float-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    iget v11, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    float-to-double v11, v11

    cmpl-double v9, v9, v11

    if-lez v9, :cond_1

    move v5, v6

    nop

    :cond_1
    iput-boolean v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    .line 230
    :cond_2
    iget-boolean v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-eqz v5, :cond_6

    .line 231
    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    .line 232
    .local v5, "width":I
    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    .line 234
    .local v6, "height":I
    const/16 v16, 0x0

    .line 237
    .local v16, "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v9, :cond_3

    .line 238
    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    float-to-int v10, v3

    float-to-int v11, v4

    iget-object v12, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v14, v12, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v15, 0x1

    move v12, v5

    move v13, v6

    invoke-interface/range {v9 .. v15}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 240
    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 245
    .end local v16    # "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    .local v9, "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    move-object/from16 v16, v9

    .end local v9    # "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    .restart local v16    # "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    :cond_3
    if-nez v16, :cond_5

    .line 246
    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Lcom/android/systemui/recents/views/DropTarget;

    .line 247
    .local v17, "target":Lcom/android/systemui/recents/views/DropTarget;
    float-to-int v10, v3

    float-to-int v11, v4

    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v14, v9, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    const/16 v18, 0x0

    move-object/from16 v9, v17

    move v12, v5

    move v13, v6

    move-object/from16 v19, v15

    move/from16 v15, v18

    invoke-interface/range {v9 .. v15}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 249
    move-object/from16 v16, v17

    .line 250
    goto :goto_1

    .line 252
    .end local v17    # "target":Lcom/android/systemui/recents/views/DropTarget;
    :cond_4
    nop

    .line 246
    move-object/from16 v15, v19

    goto :goto_0

    .line 254
    .end local v16    # "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    .restart local v9    # "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    :cond_5
    :goto_1
    move-object/from16 v9, v16

    iget-object v10, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eq v10, v9, :cond_6

    .line 255
    iput-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 256
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    iget-object v12, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v11, v12, v9}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 260
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v9    # "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    :cond_6
    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 261
    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto/16 :goto_2

    .line 267
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_1
    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButton()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->isWithinStackActionButton(FF)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 268
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    invoke-direct {v8}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;-><init>()V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 269
    const/4 v2, 0x1

    .line 271
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->cancelStackActionButtonClick()V

    .line 272
    iget-boolean v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v7, :cond_b

    .line 273
    const/4 v7, 0x3

    if-ne v1, v7, :cond_8

    move v5, v6

    nop

    .line 274
    .local v5, "cancelled":Z
    :cond_8
    const/4 v6, 0x0

    if-eqz v5, :cond_9

    .line 275
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v8, v9, v6}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 277
    :cond_9
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v9, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v10, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 278
    if-nez v5, :cond_a

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    nop

    :cond_a
    invoke-direct {v8, v9, v10, v6}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    .line 277
    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 279
    goto :goto_2

    .line 281
    .end local v5    # "cancelled":Z
    :cond_b
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    goto :goto_2

    .line 210
    :pswitch_2
    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    iput v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    .line 213
    invoke-direct {v0, v3, v4}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->isWithinStackActionButton(FF)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 214
    invoke-direct {v0, v3, v4}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->changeStackActionButtonDrawableHotspot(FF)V

    .line 215
    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 284
    :cond_c
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWithinStackActionButton(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 190
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 191
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    .line 192
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButton()Landroid/view/View;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->pointInView(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 191
    :goto_0
    return v1
.end method

.method private updateSnapAlgorithm()V
    .locals 2

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 84
    return-void
.end method


# virtual methods
.method cancelStackActionButtonClick()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 187
    return-void
.end method

.method public getVisibleDockStates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/DockState;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 180
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    .line 183
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 175
    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 176
    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 177
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .line 117
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 118
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 119
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    .line 122
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 123
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 124
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 127
    .local v3, "recentsViewLocation":[I
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->getLocationInWindow([I)V

    .line 128
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v5

    aget v6, v3, v1

    sub-int/2addr v5, v6

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 129
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v6

    aget v2, v3, v2

    sub-int/2addr v6, v2

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v2

    .line 128
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 132
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->isUserTouchInitiated:Z

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 134
    .local v2, "x":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 135
    .local v4, "y":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 136
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 139
    .end local v2    # "x":F
    .end local v4    # "y":F
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 141
    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    invoke-static {v2, v4, v5}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 144
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v2, :cond_1

    .line 145
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 148
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/views/DockState;

    move-result-object v2

    .line 150
    .local v2, "dockStates":[Lcom/android/systemui/recents/views/DockState;
    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 151
    .local v5, "dockState":Lcom/android/systemui/recents/views/DockState;
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 152
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/DockState;->update(Landroid/content/Context;)V

    .line 153
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v5    # "dockState":Lcom/android/systemui/recents/views/DockState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "dockStates":[Lcom/android/systemui/recents/views/DockState;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {v2, v4, v5, p0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/RecentsViewTouchHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 161
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 162
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 163
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_3

    .line 164
    const/16 v2, 0x3fd

    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 167
    .end local v1    # "device":Landroid/view/InputDevice;
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 111
    :cond_0
    return v1
.end method

.method public registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/systemui/recents/views/DropTarget;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
