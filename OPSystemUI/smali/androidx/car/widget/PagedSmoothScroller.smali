.class public final Landroidx/car/widget/PagedSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "PagedSmoothScroller.java"


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fe66666    # 1.8f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroidx/car/widget/PagedSmoothScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 67
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 2
    .param p1, "dx"    # I

    .line 72
    invoke-virtual {p0, p1}, Landroidx/car/widget/PagedSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .line 49
    const/4 v0, -0x1

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 5
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .line 54
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/car/widget/PagedSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v0

    .line 55
    .local v0, "dy":I
    if-nez v0, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/car/widget/PagedSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v1

    .line 60
    .local v1, "time":I
    if-lez v1, :cond_1

    .line 61
    const/4 v2, 0x0

    neg-int v3, v0

    iget-object v4, p0, Landroidx/car/widget/PagedSmoothScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v2, v3, v1, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 63
    :cond_1
    return-void
.end method
