.class public Lcom/android/systemui/qs/customize/ItemLocations;
.super Ljava/lang/Object;
.source "ItemLocations.java"


# static fields
.field private static DEBUG:Z

.field private static FLIP_PAGE_WIDTH:I

.field private static SCREEN_WIDTH:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColumns:I

.field private mIsLayoutRTL:Z

.field private mItemHeight:I

.field private mItemLocations:[Landroid/graphics/Rect;

.field private mItemWidth:I

.field private mItems:I

.field private mMargin:I

.field private mParentLocation:Landroid/graphics/Point;

.field private mRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "ItemLocations"

    sput-object v0, Lcom/android/systemui/qs/customize/ItemLocations;->TAG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qs/customize/ItemLocations;->DEBUG:Z

    .line 23
    const/16 v0, 0x50

    sput v0, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    .line 24
    const/16 v0, 0x438

    sput v0, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4
    .param p1, "itemWidth"    # I
    .param p2, "itemHeight"    # I
    .param p3, "margin"    # I
    .param p4, "columns"    # I
    .param p5, "rows"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    .line 37
    sget-object v1, Lcom/android/systemui/qs/customize/ItemLocations;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCREEN_WIDTH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    .line 41
    iput p1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    .line 42
    iput p2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    .line 43
    iput p3, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mMargin:I

    .line 44
    iput p4, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    .line 45
    iput p5, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mRows:I

    .line 47
    mul-int v0, p4, p5

    iput v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    .line 48
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->initLocationItems()V

    .line 50
    return-void
.end method

.method private initLocationItems()V
    .locals 13

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "margin":I
    iget v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mMargin:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 80
    .local v1, "itemHeight":I
    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    iget v4, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mMargin:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 82
    .local v2, "itemWidth":I
    const/4 v3, 0x0

    .line 84
    .local v3, "index":I
    sget-boolean v4, Lcom/android/systemui/qs/customize/ItemLocations;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/qs/customize/ItemLocations;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mItemWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mItemHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 87
    .local v4, "x":I
    iget-object v5, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 88
    .local v5, "y":I
    const/4 v6, 0x0

    move v7, v3

    move v3, v1

    move v1, v6

    .local v1, "i":I
    .local v3, "itemHeight":I
    .local v7, "index":I
    :goto_0
    iget v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mRows:I

    if-ge v1, v8, :cond_4

    .line 90
    iget v8, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mRows:I

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_1

    .line 91
    add-int/lit8 v3, v3, 0xa

    .line 93
    :cond_1
    add-int/2addr v5, v0

    .line 94
    move v8, v7

    move v7, v4

    move v4, v6

    .local v4, "j":I
    .local v7, "x":I
    .local v8, "index":I
    :goto_1
    iget v9, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    if-ge v4, v9, :cond_3

    .line 95
    add-int/2addr v7, v0

    .line 96
    iget-object v9, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v7, v2

    add-int v12, v5, v3

    invoke-direct {v10, v7, v5, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v10, v9, v8

    .line 97
    sget-boolean v9, Lcom/android/systemui/qs/customize/ItemLocations;->DEBUG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/systemui/qs/customize/ItemLocations;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    aget-object v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 99
    add-int/2addr v7, v2

    .line 100
    add-int/2addr v7, v0

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 102
    .end local v4    # "j":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 103
    .end local v7    # "x":I
    .local v4, "x":I
    add-int/2addr v5, v3

    .line 104
    add-int/2addr v5, v0

    .line 88
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    .end local v8    # "index":I
    .local v7, "index":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    return v0
.end method

.method public getMaxItems()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    return v0
.end method

.method public getPositionIndex(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItems:I

    if-ge v0, v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemLocations:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget v1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    rem-int v2, v0, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 120
    :cond_0
    return v0

    .line 115
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public isGoingToNextPage(I)Z
    .locals 4
    .param p1, "x"    # I

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 137
    sget v0, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    if-ge p1, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 139
    :cond_1
    sget v0, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    sget v3, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public isGoingToPrevPage(I)Z
    .locals 4
    .param p1, "x"    # I

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->isLayoutRTL()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 144
    sget v0, Lcom/android/systemui/qs/customize/ItemLocations;->SCREEN_WIDTH:I

    sget v3, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 146
    :cond_1
    sget v0, Lcom/android/systemui/qs/customize/ItemLocations;->FLIP_PAGE_WIDTH:I

    if-ge p1, v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public isLayoutRTL()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    return v0
.end method

.method public setLayoutRTL(Z)V
    .locals 0
    .param p1, "isRTL"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mIsLayoutRTL:Z

    .line 129
    return-void
.end method

.method public setParentLocation(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mParentLocation:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 59
    iget v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mColumns:I

    div-int v0, p3, v0

    iput v0, p0, Lcom/android/systemui/qs/customize/ItemLocations;->mItemWidth:I

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->initLocationItems()V

    .line 61
    return-void
.end method
