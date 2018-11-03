.class final Landroid/support/v7/app/MediaRouteDialogHelper;
.super Ljava/lang/Object;
.source "MediaRouteDialogHelper.java"


# direct methods
.method public static getDialogWidth(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 45
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 47
    .local v1, "isPortrait":Z
    :goto_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 48
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_1

    sget v5, Landroid/support/v7/mediarouter/R$dimen;->mr_dialog_fixed_width_minor:I

    goto :goto_1

    :cond_1
    sget v5, Landroid/support/v7/mediarouter/R$dimen;->mr_dialog_fixed_width_major:I

    :goto_1
    invoke-virtual {v4, v5, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 50
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 51
    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    return v3

    .line 52
    :cond_2
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 53
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    float-to-int v3, v3

    return v3

    .line 55
    :cond_3
    const/4 v3, -0x2

    return v3
.end method

.method public static getItemBitmapMap(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/widget/ListView;",
            "Landroid/widget/ArrayAdapter<",
            "TE;>;)",
            "Ljava/util/HashMap<",
            "TE;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 134
    .local p2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, "itemBitmapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<TE;Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 136
    .local v1, "firstVisiblePosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 137
    add-int v3, v1, v2

    .line 138
    .local v3, "position":I
    invoke-virtual {p2, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 139
    .local v4, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 140
    .local v5, "view":Landroid/view/View;
    invoke-static {p0, v5}, Landroid/support/v7/app/MediaRouteDialogHelper;->getViewBitmap(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v3    # "position":I
    .end local v4    # "item":Ljava/lang/Object;, "TE;"
    .end local v5    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getItemBoundMap(Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;
    .locals 11
    .param p0, "listView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ListView;",
            "Landroid/widget/ArrayAdapter<",
            "TE;>;)",
            "Ljava/util/HashMap<",
            "TE;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 111
    .local p1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "itemBoundMap":Ljava/util/HashMap;, "Ljava/util/HashMap<TE;Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 113
    .local v1, "firstVisiblePosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 114
    add-int v3, v1, v2

    .line 115
    .local v3, "position":I
    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 116
    .local v4, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 117
    .local v5, "view":Landroid/view/View;
    new-instance v6, Landroid/graphics/Rect;

    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .end local v3    # "position":I
    .end local v4    # "item":Ljava/lang/Object;, "TE;"
    .end local v5    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getItemsAdded(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 81
    .local p0, "before":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "after":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 82
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 83
    return-object v0
.end method

.method public static getItemsRemoved(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 96
    .local p0, "before":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "after":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 97
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 98
    return-object v0
.end method

.method private static getViewBitmap(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 150
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public static listUnorderedEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)Z"
        }
    .end annotation

    .line 66
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 67
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
