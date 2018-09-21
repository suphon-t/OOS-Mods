.class public Lcom/android/systemui/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# static fields
.field private static final TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

.field private static final TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;


# instance fields
.field protected mBgFillPaint:Landroid/graphics/Paint;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field protected mCornerRadius:I

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayOrientation:I

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F

.field private mInvisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field protected mLockedPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOverlayHeaderOnThumbnailActionBar:Z

.field private mSizeToFit:Z

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mTaskBar:Landroid/view/View;

.field protected mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field protected mThumbnailRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTitleBarHeight:I

.field protected mUserLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    .line 53
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    .line 77
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    .line 78
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    .line 83
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0705b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 115
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    const v1, 0x7f070590

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    .line 118
    return-void
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "disabledInSafeMode"    # Z
    .param p3, "displayOrientation"    # I
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .line 347
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 348
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    .line 349
    iput p3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    .line 350
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 351
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    :cond_0
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    .line 358
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 385
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "TaskViewThumbnail"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    const-string v0, " mTaskViewRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    const-string v0, " mThumbnailRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    const-string v0, " mThumbnailScale="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 389
    const-string v0, " mDimAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 390
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 391
    return-void
.end method

.method protected getDrawPaint()Landroid/graphics/Paint;
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;

    .line 377
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->taskId:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 382
    return-void

    .line 379
    :cond_1
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 137
    iget-boolean v1, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v1, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 142
    .local v1, "viewWidth":I
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 143
    .local v2, "viewHeight":I
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 144
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 143
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 145
    .local v3, "thumbnailWidth":I
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 146
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 145
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 148
    .local v4, "thumbnailHeight":I
    iget-boolean v5, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    if-eqz v5, :cond_1

    .line 149
    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, v1

    int-to-float v10, v2

    iget v5, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v11, v5

    iget v5, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v12, v5

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 151
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_5

    if-lez v3, :cond_5

    if-lez v4, :cond_5

    .line 152
    const/4 v5, 0x0

    .line 153
    .local v5, "topOffset":I
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    if-eqz v6, :cond_2

    .line 154
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v5, v6, v7

    .line 158
    :cond_2
    if-ge v3, v1, :cond_3

    .line 160
    const/4 v6, 0x0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v7, v3, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v8, v6

    int-to-float v9, v5

    int-to-float v10, v1

    int-to-float v11, v2

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v12, v6

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v13, v6

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 164
    :cond_3
    if-ge v4, v2, :cond_4

    .line 166
    const/16 v16, 0x0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v6, v4, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    int-to-float v8, v2

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v9, v9

    iget v10, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v10, v10

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v11

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 172
    :cond_4
    const/16 v18, 0x0

    int-to-float v6, v5

    int-to-float v7, v3

    int-to-float v8, v4

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v9, v9

    iget v10, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v10, v10

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 174
    .end local v5    # "topOffset":I
    goto :goto_0

    .line 175
    :cond_5
    const/16 v20, 0x0

    const/16 v21, 0x0

    int-to-float v5, v1

    int-to-float v6, v2

    iget v7, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v7

    iget v8, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v8

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v26, v9

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 178
    :goto_0
    return-void
.end method

.method onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0
    .param p1, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 367
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 126
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 131
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setLeftTopRightBottom(IIII)V

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    .line 133
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0
    .param p1, "dimAlpha"    # F

    .line 328
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 330
    return-void
.end method

.method public setOverlayHeaderOnThumbnailActionBar(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 303
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    .line 304
    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 295
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    .line 296
    return-void
.end method

.method setThumbnail(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 5
    .param p1, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 182
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 184
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 185
    iget v1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 186
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 187
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 188
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 188
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 194
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 196
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 198
    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 200
    :goto_0
    return-void
.end method

.method unbindFromTask()V
    .locals 1

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 373
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method updateClipToTaskBar(Landroid/view/View;)V
    .locals 0
    .param p1, "taskBar"    # Landroid/view/View;

    .line 308
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 310
    return-void
.end method

.method public updateThumbnailMatrix()V
    .locals 4

    .line 246
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 247
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v1, :cond_5

    .line 248
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1

    .line 252
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    if-eqz v1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    .line 255
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 256
    .local v0, "viewAspectRatio":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 257
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 258
    .local v1, "thumbnailAspectRatio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    .line 260
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_0

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 263
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 265
    .end local v0    # "viewAspectRatio":F
    .end local v1    # "thumbnailAspectRatio":F
    :goto_0
    goto :goto_1

    .line 266
    :cond_2
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    div-float/2addr v0, v1

    .line 267
    .local v0, "invThumbnailScale":F
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 268
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    if-ne v1, v2, :cond_3

    .line 271
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_1

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    .line 276
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_1

    .line 280
    :cond_4
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 283
    .end local v0    # "invThumbnailScale":F
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 286
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 288
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v0, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 291
    :cond_6
    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 6

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v0, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 208
    .local v0, "mul":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    const/16 v4, 0xff

    if-eqz v3, :cond_2

    .line 209
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    if-eqz v3, :cond_1

    .line 211
    sget-object v3, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 212
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float/2addr v1, v3

    .line 213
    .local v1, "scale":F
    sget-object v3, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 214
    .local v3, "mat":[F
    const/4 v4, 0x0

    aput v1, v3, v4

    .line 215
    const/4 v4, 0x6

    aput v1, v3, v4

    .line 216
    const/16 v4, 0xc

    aput v1, v3, v4

    .line 217
    const/4 v4, 0x4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v2

    aput v5, v3, v4

    .line 218
    const/16 v4, 0x9

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v2

    aput v5, v3, v4

    .line 219
    const/16 v4, 0xe

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v2

    aput v5, v3, v4

    .line 220
    sget-object v2, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    sget-object v4, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v4}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 221
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 222
    .local v2, "filter":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 223
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 224
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 225
    .end local v1    # "scale":F
    .end local v2    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    .end local v3    # "mat":[F
    goto :goto_0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v4, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 228
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 230
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 233
    :cond_2
    move v1, v0

    .line 234
    .local v1, "grey":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 235
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    .end local v1    # "grey":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 240
    :cond_3
    return-void
.end method

.method updateThumbnailVisibility(I)V
    .locals 2
    .param p1, "clipBottom"    # I

    .line 314
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    .local v0, "invisible":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_1

    .line 316
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    .line 317
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 321
    :cond_1
    return-void
.end method
