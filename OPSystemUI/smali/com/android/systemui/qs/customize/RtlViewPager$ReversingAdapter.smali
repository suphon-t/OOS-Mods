.class Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;
.super Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/RtlViewPager;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0
    .param p2, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .line 257
    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    .line 258
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    .line 259
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 274
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 275
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 266
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 279
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    .line 280
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 285
    :cond_1
    :goto_0
    const/4 v0, -0x2

    .line 290
    :cond_2
    :goto_1
    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 298
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 306
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 322
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 314
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 330
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 331
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 338
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 339
    return-void
.end method
