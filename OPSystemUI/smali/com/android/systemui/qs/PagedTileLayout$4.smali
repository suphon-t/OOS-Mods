.class Lcom/android/systemui/qs/PagedTileLayout$4;
.super Landroid/support/v4/view/PagerAdapter;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/PagedTileLayout;

    .line 396
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$4;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 400
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$4;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$700(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 402
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$4;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$800(Lcom/android/systemui/qs/PagedTileLayout;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$4;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$4;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$500(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p2, v0, p2

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$4;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$500(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 414
    .local v0, "view":Landroid/view/ViewGroup;
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e1":Ljava/lang/Exception;
    const-string v2, "PagedTileLayout"

    const-string v3, "instantiateItem1: exception caught."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    goto :goto_0

    .line 420
    :catch_1
    move-exception v2

    .line 421
    .local v2, "e2":Ljava/lang/Exception;
    const-string v3, "PagedTileLayout"

    const-string v4, "instantiateItem2: exception caught."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout$4;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v1}, Lcom/android/systemui/qs/PagedTileLayout;->access$700(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 426
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 436
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
