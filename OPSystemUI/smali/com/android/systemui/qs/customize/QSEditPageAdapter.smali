.class public Lcom/android/systemui/qs/customize/QSEditPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "QSEditPageAdapter.java"


# instance fields
.field private mListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public addPage(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public containsPage(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p1, "page"    # Landroid/support/v7/widget/RecyclerView;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 27
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 28
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, -0x1

    return v0

    .line 54
    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public getPage(I)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "pageIndex"    # I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 34
    .local v0, "view":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 45
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removePage(I)V
    .locals 1
    .param p1, "pageIndex"    # I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method
