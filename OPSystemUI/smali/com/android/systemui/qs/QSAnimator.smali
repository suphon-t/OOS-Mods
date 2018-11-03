.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickQsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .locals 3
    .param p1, "qs"    # Lcom/android/systemui/plugins/qs/QS;
    .param p2, "quickPanel"    # Lcom/android/systemui/qs/QuickQSPanel;
    .param p3, "panel"    # Lcom/android/systemui/qs/QSPanel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 425
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 438
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$2;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 82
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 83
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 85
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    .line 90
    .local v0, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_1

    .line 91
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    .line 93
    :cond_1
    const-string v1, "QSAnimator"

    const-string v2, "QS Not using page layout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSAnimator;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSAnimator;

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSAnimator;

    .line 37
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    return v0
.end method

.method private clearAnimationState()V
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 399
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 400
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 401
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 402
    .local v4, "v":Landroid/view/View;
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 403
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 404
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 400
    .end local v4    # "v":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    .end local v3    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 407
    .local v2, "N2":I
    move v3, v1

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 408
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 410
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "loc1"    # [I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .line 312
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    .line 313
    const/4 v0, 0x1

    aput v1, p1, v0

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    .line 315
    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "loc1"    # [I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .line 318
    if-eq p2, p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_1

    .line 322
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 323
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 325
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    .line 326
    return-void

    .line 318
    :cond_2
    :goto_0
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 4
    .param p1, "count"    # I

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 305
    return v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 308
    .local v0, "columnCount":I
    iget v2, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method

.method private updateAnimators()V
    .locals 31

    .line 156
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 157
    .local v1, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 158
    .local v2, "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 160
    .local v3, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    .line 162
    .local v4, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    const/4 v5, 0x0

    .line 163
    .local v5, "count":I
    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 164
    .local v7, "loc1":[I
    new-array v8, v6, [I

    .line 165
    .local v8, "loc2":[I
    const/4 v9, 0x0

    .line 166
    .local v9, "lastXDiff":I
    const/4 v10, 0x0

    .line 168
    .local v10, "lastX":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 169
    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v11

    .line 173
    .local v11, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object v13, v11

    check-cast v13, Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_1

    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_0

    :cond_1
    move v12, v13

    .line 175
    .local v12, "height":I
    :goto_0
    iget-object v14, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v14}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    sub-int v14, v12, v14

    iget-object v15, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 176
    invoke-interface {v15}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    .line 177
    .local v14, "heightDiff":I
    const-string/jumbo v15, "translationY"

    move/from16 v16, v5

    new-array v5, v6, [F

    .line 177
    .end local v5    # "count":I
    .local v16, "count":I
    int-to-float v6, v14

    aput v6, v5, v13

    const/4 v6, 0x0

    const/16 v17, 0x1

    aput v6, v5, v17

    invoke-virtual {v1, v11, v15, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 179
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v15, v9

    move/from16 v9, v16

    .line 179
    .end local v16    # "count":I
    .local v9, "count":I
    .local v15, "lastXDiff":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile;

    .line 180
    .local v6, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v13, v6}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v13

    .line 181
    .local v13, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    if-nez v13, :cond_2

    .line 182
    move-object/from16 v20, v5

    const-string v5, "QSAnimator"

    move/from16 v21, v10

    new-instance v10, Ljava/lang/StringBuilder;

    .line 182
    .end local v10    # "lastX":I
    .local v21, "lastX":I
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v12

    const-string/jumbo v12, "tileView is null "

    .line 182
    .end local v12    # "height":I
    .local v22, "height":I
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    goto :goto_2

    .line 185
    .end local v21    # "lastX":I
    .end local v22    # "height":I
    .restart local v10    # "lastX":I
    .restart local v12    # "height":I
    :cond_2
    move-object/from16 v20, v5

    move/from16 v21, v10

    move/from16 v22, v12

    .line 185
    .end local v10    # "lastX":I
    .end local v12    # "height":I
    .restart local v21    # "lastX":I
    .restart local v22    # "height":I
    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v5

    .line 186
    .local v5, "tileIcon":Landroid/view/View;
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v10

    .line 187
    .local v10, "view":Landroid/view/View;
    iget v12, v0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    if-ge v9, v12, :cond_4

    iget-boolean v12, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v12, :cond_4

    .line 189
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v12, v6}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v12

    .line 190
    .local v12, "quickTileView":Lcom/android/systemui/plugins/qs/QSTileView;
    if-nez v12, :cond_3

    .line 179
    .end local v5    # "tileIcon":Landroid/view/View;
    .end local v6    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v10    # "view":Landroid/view/View;
    .end local v12    # "quickTileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v13    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    :goto_2
    move-object/from16 v5, v20

    move/from16 v10, v21

    move/from16 v12, v22

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_1

    .line 192
    .restart local v5    # "tileIcon":Landroid/view/View;
    .restart local v6    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .restart local v10    # "view":Landroid/view/View;
    .restart local v12    # "quickTileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .restart local v13    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    :cond_3
    const/16 v16, 0x0

    aget v21, v7, v16

    .line 193
    move-object/from16 v23, v6

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v6

    .line 193
    .end local v6    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .local v23, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-direct {v0, v7, v6, v10}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 194
    invoke-direct {v0, v8, v5, v10}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 195
    aget v6, v8, v16

    aget v19, v7, v16

    sub-int v6, v6, v19

    .line 196
    .local v6, "xDiff":I
    aget v19, v8, v17

    aget v24, v7, v17

    move-object/from16 v25, v4

    sub-int v4, v19, v24

    .line 197
    .local v4, "yDiff":I
    .local v25, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    aget v19, v7, v16

    sub-int v15, v19, v21

    .line 199
    move/from16 v26, v15

    const-string/jumbo v15, "translationX"

    .line 199
    .end local v15    # "lastXDiff":I
    .local v26, "lastXDiff":I
    move-object/from16 v28, v1

    move-object/from16 v27, v11

    const/4 v11, 0x2

    new-array v1, v11, [F

    .line 199
    .end local v1    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v11    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .local v27, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .local v28, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    const/16 v18, 0x0

    aput v18, v1, v16

    int-to-float v11, v6

    aput v11, v1, v17

    invoke-virtual {v2, v12, v15, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 200
    const-string/jumbo v1, "translationY"

    const/4 v11, 0x2

    new-array v15, v11, [F

    aput v18, v15, v16

    int-to-float v11, v4

    aput v11, v15, v17

    invoke-virtual {v3, v12, v1, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 208
    const-string/jumbo v1, "translationX"

    const/4 v11, 0x2

    new-array v15, v11, [F

    neg-int v11, v6

    int-to-float v11, v11

    aput v11, v15, v16

    aput v18, v15, v17

    invoke-virtual {v2, v13, v1, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 209
    const-string/jumbo v1, "translationY"

    const/4 v11, 0x2

    new-array v15, v11, [F

    neg-int v11, v4

    int-to-float v11, v11

    aput v11, v15, v16

    aput v18, v15, v17

    invoke-virtual {v3, v13, v1, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 211
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v4    # "yDiff":I
    .end local v6    # "xDiff":I
    .end local v12    # "quickTileView":Lcom/android/systemui/plugins/qs/QSTileView;
    nop

    .line 234
    move-object/from16 v29, v7

    move/from16 v15, v26

    move-object/from16 v12, v28

    .line 234
    .end local v7    # "loc1":[I
    .end local v26    # "lastXDiff":I
    .end local v28    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v12, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v15    # "lastXDiff":I
    .local v29, "loc1":[I
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 214
    .end local v12    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v23    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v25    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .end local v27    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .end local v29    # "loc1":[I
    .restart local v1    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v4, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .local v6, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .restart local v7    # "loc1":[I
    .restart local v11    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    :cond_4
    move-object/from16 v28, v1

    move-object/from16 v25, v4

    move-object/from16 v23, v6

    move-object/from16 v27, v11

    .line 214
    .end local v1    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v4    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .end local v6    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v11    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .restart local v23    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .restart local v25    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .restart local v27    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .restart local v28    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    if-eqz v1, :cond_5

    invoke-direct {v0, v9}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    const/4 v1, 0x0

    aget v4, v7, v1

    add-int/2addr v4, v15

    aput v4, v7, v1

    .line 220
    invoke-direct {v0, v8, v5, v10}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 221
    aget v4, v8, v1

    aget v6, v7, v1

    sub-int/2addr v4, v6

    .line 222
    .local v4, "xDiff":I
    aget v6, v8, v17

    aget v11, v7, v17

    sub-int/2addr v6, v11

    .line 224
    .local v6, "yDiff":I
    const-string/jumbo v11, "translationY"

    move-object/from16 v29, v7

    const/4 v12, 0x2

    new-array v7, v12, [F

    .line 224
    .end local v7    # "loc1":[I
    .restart local v29    # "loc1":[I
    int-to-float v12, v14

    aput v12, v7, v1

    const/4 v12, 0x0

    aput v12, v7, v17

    move-object/from16 v12, v28

    invoke-virtual {v12, v13, v11, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 225
    .end local v28    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v12    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    const-string/jumbo v7, "translationX"

    const/4 v11, 0x2

    new-array v1, v11, [F

    neg-int v11, v4

    int-to-float v11, v11

    const/16 v16, 0x0

    aput v11, v1, v16

    const/4 v11, 0x0

    aput v11, v1, v17

    invoke-virtual {v2, v13, v7, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 226
    const-string/jumbo v1, "translationY"

    const/4 v7, 0x2

    new-array v11, v7, [F

    neg-int v7, v6

    int-to-float v7, v7

    aput v7, v11, v16

    const/4 v7, 0x0

    aput v7, v11, v17

    invoke-virtual {v3, v13, v1, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 227
    const-string/jumbo v1, "translationY"

    const/4 v11, 0x2

    new-array v7, v11, [F

    neg-int v11, v6

    int-to-float v11, v11

    aput v11, v7, v16

    const/4 v11, 0x0

    aput v11, v7, v17

    invoke-virtual {v3, v5, v1, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 229
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v4    # "xDiff":I
    .end local v6    # "yDiff":I
    goto :goto_3

    .line 231
    .end local v12    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v29    # "loc1":[I
    .restart local v7    # "loc1":[I
    .restart local v28    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_5
    move-object/from16 v29, v7

    move-object/from16 v12, v28

    .line 231
    .end local v7    # "loc1":[I
    .end local v28    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v12    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v29    # "loc1":[I
    const-string v1, "alpha"

    const/4 v4, 0x2

    new-array v6, v4, [F

    fill-array-data v6, :array_0

    invoke-virtual {v12, v13, v1, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 232
    const-string/jumbo v1, "translationY"

    new-array v6, v4, [F

    neg-int v4, v14

    int-to-float v4, v4

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v4, 0x0

    aput v4, v6, v17

    invoke-virtual {v12, v13, v1, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 234
    :goto_4
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v9, v9, 0x1

    .line 236
    .end local v5    # "tileIcon":Landroid/view/View;
    .end local v10    # "view":Landroid/view/View;
    .end local v13    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v23    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    nop

    .line 179
    move v13, v7

    move-object v1, v12

    move-object/from16 v5, v20

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    move-object/from16 v7, v29

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 237
    .end local v21    # "lastX":I
    .end local v22    # "height":I
    .end local v25    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .end local v27    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .end local v29    # "loc1":[I
    .restart local v1    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v4, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .restart local v7    # "loc1":[I
    .local v10, "lastX":I
    .restart local v11    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .local v12, "height":I
    :cond_6
    move-object/from16 v25, v4

    move-object/from16 v29, v7

    move/from16 v21, v10

    move-object/from16 v27, v11

    move/from16 v22, v12

    move-object v12, v1

    .line 237
    .end local v1    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v4    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .end local v7    # "loc1":[I
    .end local v10    # "lastX":I
    .end local v11    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .local v12, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v21    # "lastX":I
    .restart local v22    # "height":I
    .restart local v25    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .restart local v27    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .restart local v29    # "loc1":[I
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_a

    .line 239
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "brightness":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 244
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v10, v7, [F

    fill-array-data v10, :array_1

    .line 245
    invoke-virtual {v5, v1, v6, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 246
    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 248
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 250
    :cond_7
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 252
    :goto_5
    nop

    .line 253
    invoke-virtual {v12, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 254
    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 256
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 257
    const v6, 0x3f5c28f6    # 0.86f

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    const-string v7, "alpha"

    const/4 v10, 0x2

    new-array v11, v10, [F

    fill-array-data v11, :array_2

    .line 261
    move-object/from16 v13, v27

    invoke-virtual {v5, v13, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 261
    .end local v27    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .local v13, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    iget-object v7, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 265
    invoke-virtual {v7}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v7

    const-string v11, "alpha"

    new-array v4, v10, [F

    fill-array-data v4, :array_3

    invoke-virtual {v5, v7, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 267
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 268
    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 269
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v10, v7, [F

    fill-array-data v10, :array_4

    invoke-virtual {v4, v5, v6, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 271
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const/4 v4, 0x0

    .line 277
    .local v4, "px":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 278
    .local v5, "py":F
    move-object/from16 v6, v25

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    .line 278
    .end local v25    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .local v6, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    const/4 v10, 0x3

    if-gt v7, v10, :cond_8

    .line 279
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_6

    .line 280
    :cond_8
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v10, 0x6

    if-gt v7, v10, :cond_9

    .line 281
    const v4, 0x3ecccccd    # 0.4f

    .line 283
    :cond_9
    :goto_6
    new-instance v7, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v4, v5}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 284
    .local v7, "interpolatorBuilder":Lcom/android/systemui/qs/PathInterpolatorBuilder;
    invoke-virtual {v7}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 285
    invoke-virtual {v7}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 286
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 287
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 287
    .end local v1    # "brightness":Landroid/view/View;
    .end local v4    # "px":F
    .end local v5    # "py":F
    .end local v7    # "interpolatorBuilder":Lcom/android/systemui/qs/PathInterpolatorBuilder;
    goto :goto_7

    .line 289
    .end local v6    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .end local v13    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .restart local v25    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .restart local v27    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    :cond_a
    move-object/from16 v6, v25

    move-object/from16 v13, v27

    .line 289
    .end local v25    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .end local v27    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .restart local v6    # "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    .restart local v13    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    :goto_7
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const-string v5, "alpha"

    const/4 v7, 0x2

    new-array v10, v7, [F

    fill-array-data v10, :array_5

    .line 290
    invoke-virtual {v1, v4, v5, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 291
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    const-string v5, "alpha"

    new-array v10, v7, [F

    fill-array-data v10, :array_6

    invoke-virtual {v1, v4, v5, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 295
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 296
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 298
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v4, 0x3e0f5c29    # 0.14f

    .line 299
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_7

    .line 300
    invoke-virtual {v1, v13, v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 301
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 381
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 382
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 375
    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 389
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 391
    .local v0, "N":I
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 392
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 395
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1
    .param p1, "isFirst"    # Z

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 149
    :cond_0
    if-nez p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 152
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 153
    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 100
    return-void
.end method

.method public onTilesChanged()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "sysui_qs_fancy_anim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 133
    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez v0, :cond_6

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_2

    .line 137
    :cond_2
    const-string/jumbo v0, "sysui_qs_move_whole_rows"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    nop

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_2

    .line 139
    :cond_5
    const-string/jumbo v0, "sysui_qqs_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 143
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 144
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 118
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qs_fancy_anim"

    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    const-string/jumbo v3, "sysui_qqs_count"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 127
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 128
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "qsh"    # Lcom/android/systemui/qs/QSTileHost;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 112
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 114
    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 2
    .param p1, "onKeyguard"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 108
    :cond_1
    return-void
.end method

.method public setPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .line 329
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    .line 331
    return-void

    .line 333
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_4

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 370
    :cond_4
    return-void
.end method
