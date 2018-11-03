.class final Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;
.super Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 5
    .param p1, "t"    # Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # [I

    .line 112
    const/4 v0, 0x0

    aget v1, p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 113
    .local v1, "viewCenter":I
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 114
    invoke-virtual {p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    .line 115
    .local v2, "center":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    aget v0, p4, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 117
    .local v0, "sceneRootCenter":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 118
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    .line 120
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result v4

    add-float/2addr v3, v4

    return v3
.end method
