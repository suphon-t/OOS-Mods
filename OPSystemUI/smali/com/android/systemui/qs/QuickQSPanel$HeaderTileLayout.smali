.class Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
.super Landroid/widget/LinearLayout;
.source "QuickQSPanel.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickQSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderTileLayout"
.end annotation


# instance fields
.field private mListening:Z

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTileDimensionSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipChildren(Z)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipToPadding(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07056c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mTileDimensionSize:I

    .line 194
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setGravity(I)V

    .line 195
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    return-void
.end method

.method private generateSpaceLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "spaceWidth"    # I

    .line 224
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mTileDimensionSize:I

    invoke-direct {v0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 226
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 228
    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 229
    return-object v0
.end method

.method private generateTileLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 259
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mTileDimensionSize:I

    iget v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mTileDimensionSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 261
    return-object v0
.end method

.method private getChildIndex(Lcom/android/systemui/plugins/qs/QSTileView;)I
    .locals 3
    .param p1, "tileView"    # Lcom/android/systemui/plugins/qs/QSTileView;

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v0

    .line 279
    .local v0, "childViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 281
    return v1

    .line 279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07056d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 247
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateSpaceLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 250
    .local v0, "spaceLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/Space;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .end local v0    # "spaceLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateTileLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 256
    return-void
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 1
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 200
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setGravity(I)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07056d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 203
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateSpaceLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 209
    .local v0, "staticSpaceLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v1

    .line 210
    .local v1, "childViewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, "childView":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/Space;

    if-eqz v4, :cond_0

    .line 213
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .end local v3    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 305
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 307
    move-object v0, p0

    .line 308
    .local v0, "previousView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 309
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .end local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    goto :goto_0

    .line 310
    .restart local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 311
    .end local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    const v2, 0x7f0a0045

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->setAccessibilityTraversalAfter(I)V

    .line 314
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    const v2, 0x7f0a0139

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->setAccessibilityTraversalBefore(I)V

    .line 317
    .end local v0    # "previousView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 266
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildIndex(Lcom/android/systemui/plugins/qs/QSTileView;)I

    move-result v0

    .line 268
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->removeViewAt(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->removeViewAt(I)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 275
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 235
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 237
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 238
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    goto :goto_0

    .line 239
    :cond_1
    return-void
.end method

.method public updateResources()Z
    .locals 1

    .line 295
    const/4 v0, 0x0

    return v0
.end method
