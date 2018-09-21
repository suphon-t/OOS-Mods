.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;
    }
.end annotation


# instance fields
.field mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mBaseBottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseInitialBottomOffset:I

.field private mBaseInitialTopOffset:I

.field private mBaseSideMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseTopMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

.field mContext:Landroid/content/Context;

.field private mFocusState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedBottomPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedCurve:Landroid/graphics/Path;

.field private mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedDimCurve:Landroid/graphics/Path;

.field private mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mFocusedTopPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontMostTaskP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mInitialBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mInitialScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitialTopOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMaxScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mMaxTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mMinMargin:I

.field mMinScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMinTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumStackTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackActionButtonRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mStackRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field private mTaskIndexOverrideMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

.field private mTitleBarHeight:I

.field private mUnfocusedCurve:Landroid/graphics/Path;

.field private mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedDimCurve:Landroid/graphics/Path;

.field private mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedRange:Lcom/android/systemui/recents/views/Range;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    .line 264
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    .line 265
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    .line 271
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 272
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 275
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    .line 277
    new-instance v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 278
    new-instance v0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 280
    return-void
.end method

.method private constructFocusedCurve()Landroid/graphics/Path;
    .locals 8

    .line 1123
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1124
    .local v0, "topPeekHeightPct":F
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 1125
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1126
    .local v1, "bottomPeekHeightPct":F
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 1127
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1128
    .local v2, "minBottomPeekHeightPct":F
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1129
    .local v3, "p":Landroid/graphics/Path;
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1130
    sub-float v6, v5, v0

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1131
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v6, v6, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float/2addr v7, v6

    sub-float v6, v5, v7

    sub-float v7, v5, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1133
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1134
    return-object v3
.end method

.method private constructFocusedDimCurve()Landroid/graphics/Path;
    .locals 4

    .line 1165
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1168
    .local v0, "p":Landroid/graphics/Path;
    const/4 v1, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1169
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1170
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v1, v1, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v1, v3, v1

    add-float/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1171
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1172
    return-object v0
.end method

.method private constructUnfocusedCurve()Landroid/graphics/Path;
    .locals 18

    .line 1147
    move-object/from16 v0, p0

    const v8, 0x3ecccccd    # 0.4f

    .line 1148
    .local v8, "cpoint1X":F
    const v9, 0x3f79999a    # 0.975f

    .line 1149
    .local v9, "cpoint1Y":F
    iget v1, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 1150
    .local v10, "topPeekHeightPct":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v1, v11, v10

    sub-float/2addr v1, v9

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    div-float v12, v1, v2

    .line 1151
    .local v12, "slope":F
    mul-float v1, v12, v8

    sub-float v13, v11, v1

    .line 1152
    .local v13, "b":F
    const v14, 0x3f266666    # 0.65f

    .line 1153
    .local v14, "cpoint2X":F
    mul-float v1, v12, v14

    add-float v15, v1, v13

    .line 1154
    .local v15, "cpoint2Y":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object v7, v1

    .line 1155
    .local v7, "p":Landroid/graphics/Path;
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1156
    sub-float v16, v11, v10

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v1, v7

    move v4, v8

    move v5, v9

    move-object/from16 v17, v7

    move/from16 v7, v16

    .end local v7    # "p":Landroid/graphics/Path;
    .local v17, "p":Landroid/graphics/Path;
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1157
    sub-float v3, v11, v10

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v1, v17

    move v4, v14

    move v5, v15

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1158
    return-object v17
.end method

.method private constructUnfocusedDimCurve()Landroid/graphics/Path;
    .locals 10

    .line 1179
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v0

    .line 1180
    .local v0, "focusX":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 1181
    .local v1, "cpoint2X":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object v9, v2

    .line 1184
    .local v9, "p":Landroid/graphics/Path;
    const/4 v2, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1185
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v5, v0, v2

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v6, 0x3e400000    # 0.1875f

    const/4 v8, 0x0

    move-object v2, v9

    move v7, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1186
    const/4 v4, 0x0

    const v6, 0x3e19999a    # 0.15f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e19999a    # 0.15f

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1187
    return-object v9
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIII)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneResId"    # I
    .param p2, "tabletResId"    # I
    .param p3, "xlargeTabletResId"    # I
    .param p4, "gridLayoutResId"    # I

    .line 1061
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    return v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIIIIII)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phonePortResId"    # I
    .param p2, "phoneLandResId"    # I
    .param p3, "tabletPortResId"    # I
    .param p4, "tabletLandResId"    # I
    .param p5, "xlargeTabletPortResId"    # I
    .param p6, "xlargeTabletLandResId"    # I
    .param p7, "gridLayoutResId"    # I

    .line 1071
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1072
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1073
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1075
    .local v2, "isLandscape":Z
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v3, :cond_1

    .line 1076
    invoke-virtual {v1, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .line 1077
    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    if-eqz v3, :cond_3

    .line 1078
    if-eqz v2, :cond_2

    .line 1079
    nop

    .line 1078
    move v3, p6

    goto :goto_1

    .line 1080
    :cond_2
    nop

    .line 1078
    move v3, p5

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .line 1081
    :cond_3
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_5

    .line 1082
    if-eqz v2, :cond_4

    .line 1083
    nop

    .line 1082
    move v3, p4

    goto :goto_2

    .line 1084
    :cond_4
    nop

    .line 1082
    move v3, p3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .line 1086
    :cond_5
    if-eqz v2, :cond_6

    .line 1087
    nop

    .line 1086
    move v3, p2

    goto :goto_3

    .line 1088
    :cond_6
    nop

    .line 1086
    move v3, p1

    :goto_3
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3
.end method

.method private getNormalizedXFromFocusedY(FI)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "fromSide"    # I

    .line 1109
    if-nez p2, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    goto :goto_0

    .line 1111
    :cond_0
    move v0, p1

    .line 1112
    .local v0, "offset":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 1113
    .local v1, "offsetPct":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2
.end method

.method private getNormalizedXFromUnfocusedY(FI)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "fromSide"    # I

    .line 1097
    if-nez p2, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    goto :goto_0

    .line 1099
    :cond_0
    move v0, p1

    .line 1100
    .local v0, "offset":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 1101
    .local v1, "offsetPct":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2
.end method

.method private getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I
    .locals 2
    .param p1, "instance"    # Landroid/graphics/Rect;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "value"    # I
    .param p4, "minValue"    # I
    .param p5, "extent"    # I

    .line 1196
    if-nez p5, :cond_0

    .line 1197
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp01(F)F

    move-result v0

    .line 1198
    .local v0, "scale":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1199
    .end local v0    # "scale":F
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 1200
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp01(F)F

    move-result v0

    .line 1201
    .restart local v0    # "scale":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1203
    .end local v0    # "scale":F
    :cond_1
    return p3
.end method

.method private isInvalidOverrideX(FFF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "overrideX"    # F
    .param p3, "newOverrideX"    # F

    .line 658
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v0, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 659
    invoke-virtual {v0, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 660
    .local v0, "outOfBounds":Z
    :goto_1
    if-nez v0, :cond_4

    cmpl-float v3, p2, p1

    if-ltz v3, :cond_2

    cmpl-float v3, p1, p3

    if-gez v3, :cond_4

    :cond_2
    cmpg-float v3, p2, p1

    if-gtz v3, :cond_3

    cmpg-float v3, p1, p3

    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    nop

    :cond_4
    :goto_2
    return v1
.end method

.method private updateFrontBackTransforms()V
    .locals 13

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    return-void

    .line 1214
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getBackOfStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getFrontOfStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    .line 1217
    return-void

    .line 1220
    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v1, v1, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result v0

    .line 1222
    .local v0, "min":F
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result v1

    .line 1224
    .local v1, "max":F
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v3, p0

    move v4, v0

    move v5, v0

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1226
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v4, p0

    move v5, v1

    move v6, v1

    invoke-virtual/range {v4 .. v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1228
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1229
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput-boolean v3, v2, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1230
    return-void
.end method


# virtual methods
.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 8
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "stackScroll"    # F

    .line 600
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 603
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 604
    .local v0, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 605
    .local v1, "top":I
    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v2

    .line 606
    .local v2, "focusedRangeX":F
    int-to-float v4, v1

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    .line 607
    .local v3, "unfocusedRangeX":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v4

    add-float/2addr v4, p2

    .line 608
    .local v4, "unfocusedTaskProgress":F
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    .line 609
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    :cond_0
    return-void
.end method

.method public addUnfocusedTaskOverride(Lcom/android/systemui/shared/recents/model/Task;F)V
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "stackScroll"    # F

    .line 582
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    .line 586
    .local v0, "focusedRangeX":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v1

    .line 587
    .local v1, "focusedY":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    .line 588
    .local v2, "unfocusedRangeX":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v3

    add-float/2addr v3, p2

    .line 589
    .local v3, "unfocusedTaskProgress":F
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    .end local v0    # "focusedRangeX":F
    .end local v1    # "focusedY":F
    .end local v2    # "unfocusedRangeX":F
    .end local v3    # "unfocusedTaskProgress":F
    :cond_0
    return-void
.end method

.method public clearUnfocusedTaskOverrides()V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 615
    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    move-object/from16 v9, p0

    .line 708
    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0

    .line 712
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0

    .line 717
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    if-gt v0, v11, :cond_2

    .line 718
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    invoke-direct {v0, v11, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v0

    .line 723
    :cond_2
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    move-object v12, v0

    .line 724
    .local v12, "tmpTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    goto :goto_0

    :cond_3
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    :goto_0
    move-object v13, v0

    .line 725
    .local v13, "currentRange":Lcom/android/systemui/recents/views/Range;
    iget v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v13, v0}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 726
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 728
    .local v14, "taskBarHeight":I
    const/4 v0, 0x0

    .line 729
    .local v0, "numVisibleTasks":I
    const/4 v1, 0x0

    .line 730
    .local v1, "numVisibleThumbnails":I
    const/high16 v2, 0x4f000000

    .line 731
    .local v2, "prevScreenY":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v11

    move/from16 v16, v0

    move v8, v1

    move v15, v2

    .end local v0    # "numVisibleTasks":I
    .end local v1    # "numVisibleThumbnails":I
    .end local v2    # "prevScreenY":F
    .local v3, "i":I
    .local v8, "numVisibleThumbnails":I
    .local v15, "prevScreenY":F
    .local v16, "numVisibleTasks":I
    :goto_1
    move v7, v3

    .end local v3    # "i":I
    .local v7, "i":I
    if-ltz v7, :cond_9

    .line 732
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    .line 735
    .local v6, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v9, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v5

    .line 736
    .local v5, "taskProgress":F
    invoke-virtual {v13, v5}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 737
    nop

    .line 731
    move/from16 v17, v7

    goto :goto_3

    .line 740
    :cond_4
    iget v3, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iget v4, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v9

    move v1, v5

    move v2, v5

    move/from16 v20, v5

    move-object v5, v12

    .end local v5    # "taskProgress":F
    .local v20, "taskProgress":F
    move-object/from16 v21, v6

    move-object/from16 v6, v17

    .end local v6    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .local v21, "task":Lcom/android/systemui/shared/recents/model/Task;
    move/from16 v17, v7

    move/from16 v7, v18

    .end local v7    # "i":I
    .local v17, "i":I
    move v11, v8

    move/from16 v8, v19

    .end local v8    # "numVisibleThumbnails":I
    .local v11, "numVisibleThumbnails":I
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 742
    iget-object v0, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 743
    .local v0, "screenY":F
    sub-float v1, v15, v0

    int-to-float v2, v14

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 744
    .local v1, "hasVisibleThumbnail":Z
    :goto_2
    if-eqz v1, :cond_6

    .line 745
    add-int/lit8 v8, v11, 0x1

    .line 746
    .end local v11    # "numVisibleThumbnails":I
    .restart local v8    # "numVisibleThumbnails":I
    add-int/lit8 v16, v16, 0x1

    .line 747
    move v2, v0

    .line 731
    .end local v15    # "prevScreenY":F
    .restart local v2    # "prevScreenY":F
    move v15, v2

    .end local v0    # "screenY":F
    .end local v1    # "hasVisibleThumbnail":Z
    .end local v2    # "prevScreenY":F
    .end local v20    # "taskProgress":F
    .end local v21    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v15    # "prevScreenY":F
    :goto_3
    add-int/lit8 v3, v17, -0x1

    .end local v17    # "i":I
    .restart local v3    # "i":I
    const/4 v11, 0x1

    goto :goto_1

    .line 751
    .end local v3    # "i":I
    .end local v8    # "numVisibleThumbnails":I
    .restart local v0    # "screenY":F
    .restart local v1    # "hasVisibleThumbnail":Z
    .restart local v11    # "numVisibleThumbnails":I
    .restart local v17    # "i":I
    .restart local v20    # "taskProgress":F
    .restart local v21    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_6
    move/from16 v2, v17

    .local v2, "j":I
    :goto_4
    if-ltz v2, :cond_8

    .line 752
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v9, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v3

    .line 753
    .end local v20    # "taskProgress":F
    .local v3, "taskProgress":F
    invoke-virtual {v13, v3}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v4

    if-nez v4, :cond_7

    .line 754
    goto :goto_5

    .line 756
    :cond_7
    add-int/lit8 v16, v16, 0x1

    .line 751
    add-int/lit8 v2, v2, -0x1

    move/from16 v20, v3

    goto :goto_4

    .line 758
    .end local v2    # "j":I
    .end local v3    # "taskProgress":F
    .restart local v20    # "taskProgress":F
    :cond_8
    move/from16 v3, v20

    .line 761
    .end local v20    # "taskProgress":F
    .restart local v3    # "taskProgress":F
    :goto_5
    move/from16 v0, v16

    goto :goto_6

    .end local v0    # "screenY":F
    .end local v1    # "hasVisibleThumbnail":Z
    .end local v3    # "taskProgress":F
    .end local v11    # "numVisibleThumbnails":I
    .end local v17    # "i":I
    .end local v21    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v8    # "numVisibleThumbnails":I
    :cond_9
    move v11, v8

    move/from16 v0, v16

    .end local v8    # "numVisibleThumbnails":I
    .end local v16    # "numVisibleTasks":I
    .local v0, "numVisibleTasks":I
    .restart local v11    # "numVisibleThumbnails":I
    :goto_6
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    invoke-direct {v1, v0, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "TaskStackLayoutAlgorithm"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    const-string v1, " numStackTasks="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1247
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1249
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    const-string v1, "insets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    const-string v1, " stack="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1252
    const-string v1, " task="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1253
    const-string v1, " actionButton="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1256
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    const-string v1, "minScroll="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1258
    const-string v1, " maxScroll="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1259
    const-string v1, " initialScroll="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1260
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1262
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1263
    const-string v1, "focusState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1264
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1266
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1268
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1269
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    int-to-float v3, v3

    .line 1270
    .local v3, "x":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1272
    .local v4, "overrideX":F
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    const-string v5, "taskId= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1274
    const-string v5, " x= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 1275
    const-string v5, " overrideX= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 1276
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1267
    .end local v2    # "taskId":I
    .end local v3    # "x":F
    .end local v4    # "overrideX":F
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1279
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getDeltaPForY(II)F
    .locals 2
    .param p1, "downY"    # I
    .param p2, "y"    # I

    .line 1006
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    sub-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result v0

    return v0

    .line 1009
    :cond_0
    sub-int v0, p2, p1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 1010
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v1

    mul-float/2addr v0, v1

    .line 1011
    .local v0, "deltaP":F
    neg-float v1, v0

    return v1
.end method

.method public getFocusState()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    return v0
.end method

.method public getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getInitialFocusState()I
    .locals 3

    .line 668
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 669
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v1

    .line 670
    .local v1, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v2, :cond_0

    .line 671
    const/4 v2, 0x1

    return v2

    .line 673
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getStackActionButtonRect()Landroid/graphics/Rect;
    .locals 1

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getStackActionButtonRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    .line 678
    :goto_0
    return-object v0
.end method

.method getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 968
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 969
    .local v0, "overrideP":Ljava/lang/Float;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 970
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/shared/recents/model/Task;)F
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 988
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 989
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 990
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getInitialScrollP(IZ)F

    move-result v1

    return v1

    .line 994
    .end local v0    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_2
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v0

    .line 995
    .local v0, "normX":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 996
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 997
    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v2

    .line 996
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method getStackScrollForTaskIgnoreOverrides(Lcom/android/systemui/shared/recents/model/Task;)F
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 980
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 14
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "focusState"    # I
    .param p4, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "forceUpdate"    # Z
    .param p7, "ignoreTaskOverrides"    # Z

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p4

    .line 784
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 786
    .local v0, "taskIndex":I
    iget-object v1, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 787
    .local v1, "taskCount":I
    iget-object v2, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v2, v0, v1, v11, v9}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 788
    return-object v11

    .line 789
    .end local v0    # "taskIndex":I
    .end local v1    # "taskCount":I
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_2

    .line 790
    if-nez v10, :cond_1

    .line 791
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 792
    return-object v11

    .line 794
    :cond_1
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 795
    .local v6, "taskIndex":I
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    iget v4, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move v1, v6

    move/from16 v2, p2

    move-object v3, v11

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTransform(IFLcom/android/systemui/recents/views/TaskViewTransform;ILcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 797
    return-object v11

    .line 800
    .end local v6    # "taskIndex":I
    :cond_2
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 801
    .local v12, "nonOverrideTaskProgress":I
    if-eqz v10, :cond_5

    if-ne v12, v2, :cond_3

    goto :goto_2

    .line 805
    :cond_3
    if-eqz p7, :cond_4

    .line 806
    int-to-float v0, v12

    .line 807
    :goto_0
    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v0

    goto :goto_0

    .line 809
    .local v1, "taskProgress":F
    :goto_1
    int-to-float v2, v12

    const/4 v7, 0x0

    move-object v0, v9

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v11

    move-object/from16 v6, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 811
    return-object v11

    .line 802
    .end local v1    # "taskProgress":F
    :cond_5
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 803
    return-object v11
.end method

.method public getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 770
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "ignoreTaskOverrides"    # Z

    .line 777
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V
    .locals 26
    .param p1, "taskProgress"    # F
    .param p2, "nonOverrideTaskProgress"    # F
    .param p3, "stackScroll"    # F
    .param p4, "focusState"    # I
    .param p5, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p7, "ignoreSingleTaskCase"    # Z
    .param p8, "forceUpdate"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 856
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 859
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 860
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 861
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v8

    .line 862
    .local v8, "unfocusedVisible":Z
    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v9, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v9

    .line 865
    .local v9, "focusedVisible":Z
    if-nez p8, :cond_0

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 866
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 867
    return-void

    .line 872
    :cond_0
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v11, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 873
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v11, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 874
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v11, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v11

    .line 875
    .local v11, "unfocusedRangeX":F
    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v12, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v12

    .line 879
    .local v12, "focusedRangeX":F
    iget v13, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v3, v13, v14}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v13

    .line 880
    .local v13, "boundedStackScroll":F
    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v14, v13}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 881
    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v14, v13}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 882
    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v14, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v14

    .line 883
    .local v14, "boundedScrollUnfocusedRangeX":F
    iget-object v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 884
    invoke-virtual {v15, v2}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v15

    .line 888
    .local v15, "boundedScrollUnfocusedNonOverrideRangeX":F
    move-object/from16 v16, v7

    const v7, -0x800001

    .end local v7    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .local v16, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move/from16 v17, v8

    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .end local v8    # "unfocusedVisible":Z
    .local v17, "unfocusedVisible":Z
    invoke-static {v3, v7, v8}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v7

    .line 889
    .local v7, "lowerBoundedStackScroll":F
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 890
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 891
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v8

    .line 892
    .local v8, "lowerBoundedUnfocusedRangeX":F
    move/from16 v18, v7

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .end local v7    # "lowerBoundedStackScroll":F
    .local v18, "lowerBoundedStackScroll":F
    invoke-virtual {v7, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v7

    .line 894
    .local v7, "lowerBoundedFocusedRangeX":F
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    move/from16 v19, v9

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .end local v9    # "focusedVisible":Z
    .local v19, "focusedVisible":Z
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v1, v9

    const/4 v9, 0x2

    div-int/2addr v1, v9

    .line 899
    .local v1, "x":I
    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v10, 0x1

    move/from16 v21, v13

    .end local v13    # "boundedStackScroll":F
    .local v21, "boundedStackScroll":F
    if-ne v9, v10, :cond_1

    if-nez p7, :cond_1

    .line 902
    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    sub-float/2addr v10, v3

    iget v13, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    int-to-float v13, v13

    div-float/2addr v10, v13

    .line 903
    .local v10, "tmpP":F
    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v3

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 904
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v9

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v3, v9

    const/4 v9, 0x2

    div-int/2addr v3, v9

    add-int/2addr v13, v3

    .line 905
    .local v13, "centerYOffset":I
    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v3

    add-int/2addr v3, v13

    .line 906
    .local v3, "y":I
    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    int-to-float v9, v9

    .line 907
    .local v9, "z":F
    const/16 v20, 0x0

    .line 908
    .local v20, "dimAlpha":F
    const/high16 v10, 0x3f800000    # 1.0f

    .line 911
    .end local v13    # "centerYOffset":I
    .local v10, "viewOutlineAlpha":F
    nop

    .line 939
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v2, v20

    goto/16 :goto_1

    .line 913
    .end local v3    # "y":I
    .end local v9    # "z":F
    .end local v10    # "viewOutlineAlpha":F
    .end local v20    # "dimAlpha":F
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v3, v11}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v13, v9, v3

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 914
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v13, v3

    float-to-int v3, v13

    .line 915
    .local v3, "unfocusedY":I
    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v10, v12}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v10

    sub-float v13, v9, v10

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 916
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v13, v9

    float-to-int v9, v13

    .line 917
    .local v9, "focusedY":I
    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v10, v8}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v10

    .line 919
    .local v10, "unfocusedDim":F
    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v13, v7}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v13

    .line 925
    .local v13, "focusedDim":F
    move/from16 v22, v7

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .end local v7    # "lowerBoundedFocusedRangeX":F
    .local v22, "lowerBoundedFocusedRangeX":F
    move/from16 v23, v8

    const/4 v8, 0x2

    if-gt v7, v8, :cond_3

    .end local v8    # "lowerBoundedUnfocusedRangeX":F
    .local v23, "lowerBoundedUnfocusedRangeX":F
    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-nez v8, :cond_3

    .line 926
    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v8, v14, v7

    if-ltz v8, :cond_2

    .line 927
    const/4 v10, 0x0

    goto :goto_0

    .line 929
    :cond_2
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v7

    .line 930
    .local v7, "offset":F
    sub-float/2addr v10, v7

    .line 931
    const/high16 v8, 0x3e800000    # 0.25f

    sub-float v20, v8, v7

    div-float v8, v8, v20

    mul-float/2addr v10, v8

    .line 934
    .end local v7    # "offset":F
    :cond_3
    :goto_0
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v8, v4

    int-to-float v2, v3

    move/from16 v24, v3

    int-to-float v3, v9

    .line 935
    .end local v3    # "unfocusedY":I
    .local v24, "unfocusedY":I
    invoke-static {v8, v2, v3}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result v2

    float-to-int v2, v2

    add-int v3, v7, v2

    .line 936
    .local v3, "y":I
    invoke-static {v15}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp01(F)F

    move-result v2

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    int-to-float v7, v7

    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    int-to-float v8, v8

    invoke-static {v2, v7, v8}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result v2

    .line 938
    .local v2, "z":F
    int-to-float v7, v4

    invoke-static {v7, v10, v13}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result v20

    .line 939
    .restart local v20    # "dimAlpha":F
    invoke-static {v14}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp01(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v25, v2

    const/4 v2, 0x0

    invoke-static {v7, v2, v8}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result v10

    .end local v2    # "z":F
    .end local v9    # "focusedY":I
    .end local v10    # "unfocusedDim":F
    .end local v13    # "focusedDim":F
    .end local v24    # "unfocusedY":I
    .local v25, "z":F
    move/from16 v2, v20

    move/from16 v9, v25

    .end local v20    # "dimAlpha":F
    .end local v25    # "z":F
    .local v2, "dimAlpha":F
    .local v9, "z":F
    .local v10, "viewOutlineAlpha":F
    :goto_1
    move v7, v10

    .line 944
    .end local v10    # "viewOutlineAlpha":F
    .local v7, "viewOutlineAlpha":F
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 945
    iput v8, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 946
    iput v9, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 947
    iput v2, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 948
    iput v7, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 949
    iget-object v8, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 950
    iget-object v8, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v13, v3

    invoke-virtual {v8, v10, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 951
    iget-object v8, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v10, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v8, v10}, Lcom/android/systemui/shared/recents/utilities/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 952
    iget-object v8, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_5

    if-eqz v6, :cond_4

    iget-object v8, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_5

    :cond_4
    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 954
    return-void
.end method

.method public getStackTransformScreenCoordinates(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "windowOverrideRect"    # Landroid/graphics/Rect;

    .line 821
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    .line 824
    .local v0, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {p0, v0, p5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v1

    return-object v1
.end method

.method public getTaskRect()Landroid/graphics/Rect;
    .locals 1

    .line 1236
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1239
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTaskGridRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    :goto_0
    return-object v0
.end method

.method public getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "topInset"    # I
    .param p4, "leftInset"    # I
    .param p5, "rightInset"    # I
    .param p6, "taskStackBounds"    # Landroid/graphics/Rect;

    move-object v6, p0

    move-object/from16 v7, p2

    .line 1034
    move-object/from16 v8, p6

    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int v0, v0, p4

    iget v1, v7, Landroid/graphics/Rect;->top:I

    add-int v1, v1, p3

    iget v2, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, v2, p5

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1038
    iget v3, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v9

    .line 1040
    .local v9, "sideMargin":I
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v10, 0x2

    mul-int v1, v10, v9

    sub-int v11, v0, v1

    .line 1041
    .local v11, "targetStackWidth":I
    iget-object v0, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x0

    if-ne v0, v10, :cond_0

    .line 1045
    new-instance v0, Landroid/graphics/Rect;

    .line 1046
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1047
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v12, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v0

    .line 1048
    .local v5, "portraitDisplayRect":Landroid/graphics/Rect;
    iget v3, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v13, 0x0

    move-object v0, v6

    move-object v1, v5

    move-object v2, v5

    move-object v12, v5

    move v5, v13

    .end local v5    # "portraitDisplayRect":Landroid/graphics/Rect;
    .local v12, "portraitDisplayRect":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v0

    .line 1050
    .local v0, "portraitSideMargin":I
    nop

    .line 1051
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v2, v10, v0

    sub-int/2addr v1, v2

    .line 1050
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1053
    .end local v0    # "portraitSideMargin":I
    .end local v12    # "portraitDisplayRect":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v11

    div-int/2addr v0, v10

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1054
    return-void
.end method

.method public getUntransformedTaskViewBounds()Landroid/graphics/Rect;
    .locals 2

    .line 960
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getYForDeltaP(FF)I
    .locals 3
    .param p1, "downScrollP"    # F
    .param p2, "p"    # F

    .line 1019
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    sub-float v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v0

    return v0

    .line 1022
    :cond_0
    sub-float v0, p2, p1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 1023
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1024
    .local v0, "y":I
    neg-int v1, v0

    return v1
.end method

.method public initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;

    .line 380
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 382
    .local v0, "lastStackRect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v1

    .line 383
    .local v1, "topMargin":I
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v2

    .line 385
    .local v2, "bottomMargin":I
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    .line 387
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    .line 390
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    .line 391
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 392
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 395
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    sub-int/2addr v3, v4

    .line 400
    .local v3, "height":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 402
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gtz v4, :cond_1

    .line 404
    :cond_0
    const-string v4, "TaskStackLayoutAlgorithm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid task rect: taskRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " stackRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " displayRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " windowRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " taskStackBounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedCurve()Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    .line 413
    new-instance v4, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedCurve()Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    .line 415
    new-instance v4, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedDimCurve()Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    .line 417
    new-instance v4, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedDimCurve()Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    .line 419
    new-instance v4, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    .line 425
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 426
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 427
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/systemui/recents/views/Range;

    const v2, 0x7f0b007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 288
    const v3, 0x7f0b007c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 289
    new-instance v1, Lcom/android/systemui/recents/views/Range;

    const v2, 0x7f0b007f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 290
    const v3, 0x7f0b007e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 292
    const v1, 0x7f0705a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    .line 293
    nop

    .line 294
    const v1, 0x7f070593

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    .line 295
    const v1, 0x7f0705a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    .line 296
    const v1, 0x7f0705a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    .line 297
    const v3, 0x7f070599

    const v4, 0x7f070598

    const v5, 0x7f07059a

    const v6, 0x7f07059a

    const v7, 0x7f07059a

    const v8, 0x7f07059a

    const v9, 0x7f07059a

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    .line 305
    const v3, 0x7f070595

    const v4, 0x7f070594

    const v5, 0x7f070597

    const v6, 0x7f070597

    const v7, 0x7f070597

    const v8, 0x7f070597

    const v9, 0x7f070597

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    .line 313
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 314
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 315
    const v1, 0x7f07059b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 316
    const v1, 0x7f0705a2

    const v2, 0x7f0705a1

    const v3, 0x7f0705a3

    invoke-static {p1, v2, v1, v3, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    .line 321
    const v1, 0x7f07059d

    const v2, 0x7f07059c

    const v3, 0x7f07059f

    invoke-static {p1, v2, v1, v3, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    .line 326
    const v1, 0x7f070592

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    .line 327
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    const v3, 0x7f0705b1

    const v4, 0x7f0705b1

    const v5, 0x7f0705b1

    const v6, 0x7f0705b2

    const v7, 0x7f0705b1

    const v8, 0x7f0705b2

    const v9, 0x7f070590

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    .line 335
    return-void
.end method

.method public reset()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 343
    return-void
.end method

.method public setFocusState(I)V
    .locals 2
    .param p1, "focusState"    # I

    .line 360
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 361
    .local v0, "prevFocusState":I
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    .line 363
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;->onFocusStateChanged(II)V

    .line 366
    :cond_0
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .line 349
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 350
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 351
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 353
    return v0
.end method

.method public setTaskOverridesForInitialState(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V
    .locals 16
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "ignoreScrollToFront"    # Z

    move-object/from16 v0, p0

    .line 530
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 532
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 534
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 538
    .local v2, "scrollToFront":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v5

    if-nez v5, :cond_5

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-le v5, v4, :cond_5

    .line 539
    if-nez p2, :cond_2

    iget-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v6, :cond_5

    if-nez v2, :cond_5

    .line 541
    :cond_2
    const/4 v6, 0x0

    .line 542
    .local v6, "initialNormX":[F
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v0, v7, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v7

    .line 544
    .local v7, "minBottomTaskNormX":F
    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 545
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 544
    invoke-direct {v0, v8, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v8

    .line 546
    .local v8, "maxBottomTaskNormX":F
    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v10, 0x2

    if-gt v9, v10, :cond_3

    .line 550
    new-array v9, v10, [F

    .line 551
    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v9, v3

    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v10, v10

    .line 552
    invoke-direct {v0, v10, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    aput v3, v9, v4

    move-object v3, v9

    .end local v6    # "initialNormX":[F
    .local v3, "initialNormX":[F
    :goto_2
    goto :goto_3

    .line 555
    .end local v3    # "initialNormX":[F
    .restart local v6    # "initialNormX":[F
    :cond_3
    new-array v9, v10, [F

    aput v7, v9, v3

    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v10, v10

    .line 557
    invoke-direct {v0, v10, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    aput v3, v9, v4

    move-object v3, v9

    goto :goto_2

    .line 561
    .end local v6    # "initialNormX":[F
    .restart local v3    # "initialNormX":[F
    :goto_3
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 563
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 564
    .local v9, "taskCount":I
    add-int/lit8 v10, v9, -0x1

    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_5

    .line 565
    sub-int v11, v9, v10

    sub-int/2addr v11, v4

    .line 566
    .local v11, "indexFromFront":I
    array-length v12, v3

    if-lt v11, v12, :cond_4

    .line 567
    goto :goto_5

    .line 569
    :cond_4
    iget v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    aget v14, v3, v11

    .line 570
    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v13

    add-float/2addr v12, v13

    .line 571
    .local v12, "newTaskProgress":F
    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v14, v14, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v14, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    .end local v11    # "indexFromFront":I
    .end local v12    # "newTaskProgress":F
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 575
    .end local v3    # "initialNormX":[F
    .end local v6    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/model/Task;>;"
    .end local v7    # "minBottomTaskNormX":F
    .end local v8    # "maxBottomTaskNormX":F
    .end local v9    # "taskCount":I
    .end local v10    # "i":I
    :cond_5
    :goto_5
    return-void
.end method

.method transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 4
    .param p1, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "windowOverrideRect"    # Landroid/graphics/Rect;

    .line 833
    if-eqz p2, :cond_0

    .line 834
    nop

    .line 835
    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 836
    .local v0, "windowRect":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 837
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 842
    :cond_1
    return-object p1
.end method

.method public update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;Lcom/android/systemui/recents/RecentsActivityLaunchState;F)V
    .locals 19
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p3, "launchState"    # Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .param p4, "lastScrollPPercent"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/TaskStack;",
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;",
            "Lcom/android/systemui/recents/RecentsActivityLaunchState;",
            "F)V"
        }
    .end annotation

    .local p2, "ignoreTasksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/shared/recents/model/Task$TaskKey;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 435
    move/from16 v2, p4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 438
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 442
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 443
    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontMostTaskP:F

    .line 444
    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 445
    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 446
    return-void

    .line 450
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v5, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    move v8, v6

    .local v8, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 452
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shared/recents/model/Task;

    .line 453
    .local v9, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v10, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 454
    goto :goto_1

    .line 456
    :cond_1
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v9    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 458
    .end local v8    # "i":I
    :cond_2
    move-object/from16 v11, p2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 462
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 463
    .local v8, "taskCount":I
    move v9, v6

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_3

    .line 464
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/shared/recents/model/Task;

    .line 465
    .local v10, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v13, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v13, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v12, v13, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    .end local v10    # "task":Lcom/android/systemui/shared/recents/model/Task;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 469
    .end local v9    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    .line 470
    .local v9, "launchTask":Lcom/android/systemui/shared/recents/model/Task;
    const/4 v10, 0x1

    if-eqz v9, :cond_4

    .line 471
    move-object/from16 v12, p1

    invoke-virtual {v12, v9}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v13

    goto :goto_3

    .line 472
    :cond_4
    move-object/from16 v12, p1

    iget v13, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    sub-int/2addr v13, v10

    .line 473
    .local v13, "launchTaskIndex":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v14

    if-ne v14, v10, :cond_7

    .line 474
    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v6, v14

    .line 475
    .local v6, "maxBottomOffset":I
    int-to-float v14, v6

    invoke-direct {v0, v14, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v14

    .line 476
    .local v14, "maxBottomNormX":F
    iget-object v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v15, v7}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 477
    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 478
    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 479
    invoke-virtual {v10, v14}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v10

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .end local v3    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .local v16, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    sub-float/2addr v7, v3

    .line 478
    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 480
    iget-boolean v3, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v3, :cond_6

    iget-boolean v3, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v3, :cond_6

    iget-boolean v3, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    if-eqz v3, :cond_5

    goto :goto_4

    .line 484
    :cond_5
    add-int/lit8 v3, v13, -0x1

    int-to-float v3, v3

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v3, v7, v10}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .end local v6    # "maxBottomOffset":I
    .end local v14    # "maxBottomNormX":F
    goto :goto_5

    .line 482
    .restart local v6    # "maxBottomOffset":I
    .restart local v14    # "maxBottomNormX":F
    :cond_6
    :goto_4
    int-to-float v3, v13

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v3, v7, v10}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 486
    .end local v6    # "maxBottomOffset":I
    .end local v14    # "maxBottomNormX":F
    :goto_5
    goto/16 :goto_a

    .end local v16    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v3    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_7
    move-object/from16 v16, v3

    .end local v3    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v16    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-ne v3, v10, :cond_8

    .line 488
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 489
    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 490
    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_a

    .line 494
    :cond_8
    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v3, v7

    .line 495
    .local v3, "maxBottomOffset":I
    int-to-float v7, v3

    invoke-direct {v0, v7, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v7

    .line 496
    .local v7, "maxBottomNormX":F
    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 497
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v14, :cond_9

    .line 498
    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-virtual {v14}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getMinScrollP()F

    move-result v14

    goto :goto_6

    .line 499
    :cond_9
    const/4 v14, 0x0

    :goto_6
    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 500
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v14, :cond_a

    .line 501
    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-virtual {v14, v8}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getMaxScrollP(I)F

    move-result v14

    goto :goto_7

    .line 502
    :cond_a
    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    sub-int/2addr v15, v10

    int-to-float v15, v15

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 503
    invoke-virtual {v10, v7}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v10

    const/4 v6, 0x0

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    sub-float/2addr v15, v10

    .line 502
    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :goto_7
    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 504
    iget-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v6, :cond_c

    iget-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v6, :cond_c

    iget-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    if-nez v6, :cond_c

    iget-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    const/16 v17, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/16 v17, 0x1

    :goto_9
    move/from16 v6, v17

    .line 507
    .local v6, "scrollToFront":Z
    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v10, :cond_d

    .line 508
    int-to-float v10, v13

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v10, v14, v15}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v10

    iput v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_a

    .line 509
    :cond_d
    const/4 v10, 0x0

    cmpg-float v14, v10, v2

    if-gtz v14, :cond_e

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_e

    .line 510
    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v2, v10, v14}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result v10

    iput v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_a

    .line 511
    :cond_e
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v10, :cond_f

    .line 512
    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {v10, v14, v6}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getInitialScrollP(IZ)F

    move-result v10

    iput v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_a

    .line 514
    :cond_f
    if-eqz v6, :cond_10

    .line 515
    int-to-float v10, v13

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v10, v14, v15}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v10

    iput v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_a

    .line 519
    :cond_10
    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v10, v10

    const/4 v14, 0x0

    invoke-direct {v0, v10, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    .line 520
    .local v10, "initialTopNormX":F
    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    iget v1, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-static {v15, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 521
    invoke-virtual {v15, v10}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v15

    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    .line 520
    invoke-static {v14, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 524
    .end local v3    # "maxBottomOffset":I
    .end local v6    # "scrollToFront":Z
    .end local v7    # "maxBottomNormX":F
    .end local v10    # "initialTopNormX":F
    :goto_a
    return-void
.end method

.method public updateFocusStateOnScroll(FFF)F
    .locals 10
    .param p1, "lastTargetStackScroll"    # F
    .param p2, "targetStackScroll"    # F
    .param p3, "lastStackScroll"    # F

    .line 623
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 627
    :cond_0
    sub-float v0, p2, p3

    .line 628
    .local v0, "deltaScroll":F
    sub-float v1, p2, p1

    .line 629
    .local v1, "deltaTargetScroll":F
    move v2, p2

    .line 630
    .local v2, "newScroll":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 631
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 632
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 633
    .local v4, "taskId":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    .line 634
    .local v5, "x":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 635
    .local v6, "overrideX":F
    add-float v8, v6, v0

    .line 636
    .local v8, "newOverrideX":F
    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 638
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    .line 639
    :cond_1
    cmpl-float v9, v6, v5

    if-ltz v9, :cond_2

    cmpg-float v9, v0, v7

    if-lez v9, :cond_3

    :cond_2
    cmpg-float v9, v6, v5

    if-gtz v9, :cond_4

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_4

    .line 642
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 645
    :cond_4
    move v2, p3

    .line 646
    sub-float v7, v6, v1

    .line 647
    .end local v8    # "newOverrideX":F
    .local v7, "newOverrideX":F
    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 648
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    .line 650
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    .end local v4    # "taskId":I
    .end local v5    # "x":F
    .end local v6    # "overrideX":F
    .end local v7    # "newOverrideX":F
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 654
    .end local v3    # "i":I
    :cond_6
    return v2

    .line 624
    .end local v0    # "deltaScroll":F
    .end local v1    # "deltaTargetScroll":F
    .end local v2    # "newScroll":F
    :cond_7
    :goto_2
    return p2
.end method

.method useGridLayout()Z
    .locals 1

    .line 152
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    return v0
.end method
