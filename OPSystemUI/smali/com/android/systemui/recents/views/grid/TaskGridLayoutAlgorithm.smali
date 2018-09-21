.class public Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskGridLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppAspectRatio:F

.field private mFocusedFrameThickness:I

.field private mPaddingLeftRight:I

.field private mPaddingTaskView:I

.field private mPaddingTopBottom:I

.field private mScreenSize:Landroid/graphics/Point;

.field private mSystemInsets:Landroid/graphics/Rect;

.field private mTaskGridRect:Landroid/graphics/Rect;

.field private mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

.field private mTitleBarHeight:I

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "TaskGridLayoutAlgorithm"

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mScreenSize:Landroid/graphics/Point;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 36
    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mAppAspectRatio:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 36
    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingLeftRight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 36
    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTaskView:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 36
    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTopBottom:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 36
    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTitleBarHeight:I

    return v0
.end method

.method private updateAppAspectRatio()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 294
    .local v0, "usableWidth":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 295
    .local v1, "usableHeight":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mAppAspectRatio:F

    .line 296
    return-void
.end method


# virtual methods
.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .line 322
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 323
    .local v0, "visibleCount":I
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    invoke-direct {v1, v0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v1
.end method

.method public getFocusFrameThickness()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mFocusedFrameThickness:I

    return v0
.end method

.method public getStackActionButtonRect()Landroid/graphics/Rect;
    .locals 3

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 300
    .local v0, "buttonRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingLeftRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 301
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingLeftRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 302
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTopBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 303
    return-object v0
.end method

.method public getTaskGridRect()Landroid/graphics/Rect;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 11
    .param p1, "taskIndex"    # I
    .param p2, "taskCount"    # I
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 196
    if-nez p2, :cond_0

    .line 197
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 198
    return-object p3

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    .line 202
    .local v0, "gridInfo":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 204
    iget-object v1, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->xOffsets:[I

    aget v1, v1, p1

    .line 205
    .local v1, "x":I
    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->yOffsets:[I

    aget v2, v2, p1

    .line 206
    .local v2, "y":I
    iget v3, p4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    int-to-float v3, v3

    .line 209
    .local v3, "z":F
    const/4 v4, 0x0

    .line 211
    .local v4, "dimAlpha":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 214
    .local v5, "viewOutlineAlpha":F
    sub-int v6, p2, p1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 215
    .local v6, "taskLayoutIndex":I
    const/16 v8, 0x8

    if-ge v6, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 218
    .local v7, "isTaskViewVisible":Z
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 219
    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    iput v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 220
    iput v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 221
    iput v4, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 222
    iput v5, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 223
    iget-object v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 224
    iget-object v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 225
    iget-object v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v9, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v8, v9}, Lcom/android/systemui/shared/recents/utilities/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 227
    iput-boolean v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 228
    return-object p3
.end method

.method public initialize(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "windowRect"    # Landroid/graphics/Rect;

    .line 274
    iput-object p1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 276
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ccccccd    # 0.025f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingLeftRight:I

    .line 277
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTopBottom:I

    .line 281
    const/16 v0, 0x8

    new-array v1, v0, [Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    iput-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    .line 282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    new-instance v3, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;-><init>(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;I)V

    aput-object v3, v2, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public navigateFocus(IILcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;)I
    .locals 8
    .param p1, "taskCount"    # I
    .param p2, "currentFocusedIndex"    # I
    .param p3, "direction"    # Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    .line 239
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    const/16 v2, 0x8

    if-le p1, v2, :cond_0

    goto/16 :goto_6

    .line 242
    :cond_0
    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 243
    return v2

    .line 245
    :cond_1
    move v0, p2

    .line 246
    .local v0, "newIndex":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    .line 247
    .local v3, "gridInfo":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, p2

    iget v5, v3, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    div-int/2addr v4, v5

    .line 248
    .local v4, "currentLine":I
    sget-object v5, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$1;->$SwitchMap$com$android$systemui$recents$events$ui$focus$NavigateTaskViewEvent$Direction:[I

    invoke-virtual {p3}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_5

    .line 263
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 264
    add-int/lit8 v5, p1, -0x1

    add-int/lit8 v6, v4, 0x1

    iget v7, v3, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 266
    .local v1, "rightMostIndex":I
    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    move v1, v2

    .line 267
    if-ge v0, v1, :cond_3

    move v2, p2

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    move v0, v2

    .end local v1    # "rightMostIndex":I
    goto :goto_5

    .line 258
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 259
    add-int/lit8 v1, p1, -0x1

    iget v2, v3, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    mul-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 260
    .local v1, "leftMostIndex":I
    if-le v0, v1, :cond_4

    move v2, p2

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    move v0, v2

    .line 261
    goto :goto_5

    .line 254
    .end local v1    # "leftMostIndex":I
    :pswitch_2
    iget v1, v3, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    sub-int/2addr v0, v1

    .line 255
    if-gez v0, :cond_5

    move v1, p2

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    move v0, v1

    .line 256
    goto :goto_5

    .line 250
    :pswitch_3
    iget v1, v3, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    add-int/2addr v0, v1

    .line 251
    if-lt v0, p1, :cond_6

    move v1, p2

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_4
    move v0, v1

    .line 252
    nop

    .line 270
    :goto_5
    return v0

    .line 240
    .end local v0    # "newIndex":I
    .end local v3    # "gridInfo":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
    .end local v4    # "currentLine":I
    :cond_7
    :goto_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07058b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTaskView:I

    .line 171
    const v1, 0x7f07058e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mFocusedFrameThickness:I

    .line 174
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    .line 175
    const v1, 0x7f070590

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTitleBarHeight:I

    .line 177
    const-string/jumbo v1, "window"

    .line 178
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 179
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->updateAppAspectRatio()V

    .line 182
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .line 288
    iput-object p1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->updateAppAspectRatio()V

    .line 290
    return-void
.end method

.method public updateTaskGridRect(I)V
    .locals 3
    .param p1, "taskCount"    # I

    .line 307
    if-lez p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 309
    .local v0, "gridInfo":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 311
    .end local v0    # "gridInfo":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
    :cond_0
    return-void
.end method
