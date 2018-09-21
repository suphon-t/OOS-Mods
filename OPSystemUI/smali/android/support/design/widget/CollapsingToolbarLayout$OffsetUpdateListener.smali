.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .line 1234
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 9
    .param p1, "layout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .line 1238
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput p2, v0, Landroid/support/design/widget/CollapsingToolbarLayout;->currentOffset:I

    .line 1240
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1242
    .local v0, "insetTop":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v3

    .local v3, "z":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1243
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1244
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1245
    .local v5, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-static {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v6

    .line 1247
    .local v6, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    iget v7, v5, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    packed-switch v7, :pswitch_data_0

    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v6    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    goto :goto_2

    .line 1253
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .restart local v6    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    :pswitch_0
    neg-int v7, p2

    int-to-float v7, v7

    iget v8, v5, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 1254
    goto :goto_2

    .line 1249
    :pswitch_1
    neg-int v7, p2

    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1250
    invoke-virtual {v8, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v1, v8}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v7

    .line 1249
    invoke-virtual {v6, v7}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 1251
    nop

    .line 1242
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v6    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1261
    .end local v2    # "i":I
    .end local v3    # "z":I
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1263
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 1264
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1268
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1269
    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1270
    .local v1, "expandRange":I
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1271
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
