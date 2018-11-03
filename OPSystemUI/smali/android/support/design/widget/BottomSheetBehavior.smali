.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;,
        Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field activePointerId:I

.field private callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field collapsedOffset:I

.field private final dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private fitToContents:Z

.field fitToContentsOffset:I

.field halfExpandedOffset:I

.field hideable:Z

.field private ignoreEvents:Z

.field private initialY:I

.field private lastNestedScrollDy:I

.field private lastPeekHeight:I

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field parentHeight:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightMin:I

.field private skipCollapsed:Z

.field state:I

.field touchingScrollingChild:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 143
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 744
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 179
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 143
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 744
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 180
    sget-object v1, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 181
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 182
    .local v2, "value":Landroid/util/TypedValue;
    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-ne v4, v3, :cond_0

    .line 183
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0

    .line 185
    :cond_0
    sget v4, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 186
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 185
    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 189
    :goto_0
    sget v3, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 190
    sget v3, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 191
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 190
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setFitToContents(Z)V

    .line 192
    sget v0, Landroid/support/design/widget/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 193
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 192
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 194
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 196
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->maximumVelocity:F

    .line 197
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/BottomSheetBehavior;

    .line 48
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/BottomSheetBehavior;

    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    return v0
.end method

.method private calculateCollapsedOffset()V
    .locals 2

    .line 665
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_0

    .line 666
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0

    .line 668
    :cond_0
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 670
    :goto_0
    return-void
.end method

.method private getExpandedOffset()I
    .locals 1

    .line 715
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getYVelocity()F
    .locals 3

    .line 710
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->maximumVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 711
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .line 673
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 674
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 678
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchOnSlide(I)V
    .locals 5
    .param p1, "top"    # I

    .line 865
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 866
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_1

    .line 867
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    if-le p1, v1, :cond_0

    .line 868
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0

    .line 871
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 872
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 871
    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 875
    :cond_1
    :goto_0
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 694
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    return-object p1

    .line 697
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 698
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 699
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 700
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 701
    .local v3, "scrollingChild":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 702
    return-object v3

    .line 699
    .end local v3    # "scrollingChild":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getPeekHeightMin()I
    .locals 1

    .line 879
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 262
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 263
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 264
    return v1

    .line 266
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 268
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 269
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 271
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 272
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 274
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 275
    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 287
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 288
    .local v3, "initialX":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    .line 289
    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 290
    .local v6, "scroll":Landroid/view/View;
    :goto_0
    if-eqz v6, :cond_4

    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v6, v3, v7}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 291
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 292
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 294
    :cond_4
    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    if-ne v7, v4, :cond_5

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    .line 296
    invoke-virtual {p1, p2, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 297
    goto :goto_2

    .line 278
    .end local v3    # "initialX":I
    .end local v6    # "scroll":Landroid/view/View;
    :cond_6
    :pswitch_1
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 279
    iput v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 281
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz v3, :cond_7

    .line 282
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 283
    return v1

    .line 300
    :cond_7
    :goto_2
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 301
    return v2

    .line 306
    :cond_8
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    nop

    :cond_9
    move-object v3, v5

    .line 307
    .local v3, "scroll":Landroid/view/View;
    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    if-eqz v3, :cond_a

    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_a

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-eq v4, v2, :cond_a

    .line 311
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_a

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    int-to-float v4, v4

    .line 312
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 307
    move v1, v2

    goto :goto_3

    .line 312
    :cond_a
    nop

    .line 307
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 218
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 221
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 223
    .local v0, "savedTop":I
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 225
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 226
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v2, :cond_2

    .line 227
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    if-nez v2, :cond_1

    .line 228
    nop

    .line 230
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/widget/R$dimen;->design_bottom_sheet_peek_height_min:I

    .line 231
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    .line 233
    :cond_1
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    goto :goto_0

    .line 235
    :cond_2
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    .line 237
    :goto_0
    const/4 v2, 0x0

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 238
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 239
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 241
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 242
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 243
    :cond_3
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    .line 244
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 245
    :cond_4
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 246
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 247
    :cond_5
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_6

    .line 248
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 249
    :cond_6
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-eq v2, v1, :cond_7

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-ne v2, v3, :cond_8

    .line 250
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 252
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v2, :cond_9

    .line 253
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 255
    :cond_9
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 256
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 257
    return v1
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 475
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 477
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 5
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 367
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 372
    .local v1, "scrollingChild":Landroid/view/View;
    if-eq p3, v1, :cond_1

    .line 373
    return-void

    .line 375
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 376
    .local v2, "currentTop":I
    sub-int v3, v2, p5

    .line 377
    .local v3, "newTop":I
    if-lez p5, :cond_3

    .line 378
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 379
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 380
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 381
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 383
    :cond_2
    aput p5, p6, v0

    .line 384
    neg-int v4, p5

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 385
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 387
    :cond_3
    if-gez p5, :cond_6

    .line 388
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 389
    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    if-le v3, v4, :cond_5

    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v4, :cond_4

    goto :goto_0

    .line 394
    :cond_4
    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 395
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 396
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 390
    :cond_5
    :goto_0
    aput p5, p6, v0

    .line 391
    neg-int v4, p5

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 392
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 400
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 401
    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 402
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 403
    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 206
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    move-object v0, p3

    check-cast v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    .line 207
    .local v0, "ss":Landroid/support/design/widget/BottomSheetBehavior$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 209
    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    goto :goto_1

    .line 210
    :cond_1
    :goto_0
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 214
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 201
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 353
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 354
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 355
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 4
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 411
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 412
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 413
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_b

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 420
    :cond_1
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    const/4 v1, 0x4

    if-lez v0, :cond_2

    .line 421
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    .line 422
    .local v0, "top":I
    const/4 v1, 0x3

    .local v1, "targetState":I
    :goto_0
    goto/16 :goto_3

    .line 423
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getYVelocity()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 425
    .restart local v0    # "top":I
    const/4 v1, 0x5

    goto :goto_0

    .line 426
    .end local v0    # "top":I
    :cond_3
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez v0, :cond_9

    .line 427
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 428
    .local v0, "currentTop":I
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v2, :cond_5

    .line 429
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 430
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 431
    .local v1, "top":I
    const/4 v2, 0x3

    .line 451
    .end local v1    # "top":I
    .local v0, "top":I
    .local v2, "targetState":I
    :goto_1
    move v0, v1

    goto :goto_2

    .line 433
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_4
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 434
    .restart local v1    # "top":I
    const/4 v2, 0x4

    goto :goto_1

    .line 437
    .end local v1    # "top":I
    :cond_5
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v2, :cond_7

    .line 438
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 439
    const/4 v1, 0x0

    .line 440
    .restart local v1    # "top":I
    const/4 v2, 0x3

    goto :goto_1

    .line 442
    .end local v1    # "top":I
    :cond_6
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 443
    .restart local v1    # "top":I
    const/4 v2, 0x6

    goto :goto_1

    .line 446
    .end local v1    # "top":I
    :cond_7
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 447
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 448
    .restart local v1    # "top":I
    const/4 v2, 0x6

    goto :goto_1

    .line 450
    .end local v1    # "top":I
    :cond_8
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 451
    .local v2, "top":I
    nop

    .end local v0    # "currentTop":I
    move v0, v2

    move v2, v1

    .local v0, "top":I
    .local v2, "targetState":I
    :goto_2
    move v1, v2

    .line 455
    .end local v2    # "targetState":I
    .local v1, "targetState":I
    goto :goto_3

    .line 456
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_9
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 457
    .restart local v0    # "top":I
    nop

    .line 459
    .restart local v1    # "targetState":I
    :goto_3
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 460
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 461
    new-instance v2, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v2, p0, p2, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 463
    :cond_a
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 465
    :goto_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 466
    return-void

    .line 416
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_b
    :goto_5
    return-void
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 317
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 321
    .local v0, "action":I
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 322
    return v2

    .line 324
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 328
    :cond_2
    if-nez v0, :cond_3

    .line 329
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 331
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_4

    .line 332
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 334
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 337
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v1, :cond_5

    .line 338
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 339
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 342
    :cond_5
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public setFitToContents(Z)V
    .locals 2
    .param p1, "fitToContents"    # Z

    .line 497
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_0

    .line 498
    return-void

    .line 500
    :cond_0
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 504
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 505
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 508
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 509
    return-void
.end method

.method public setHideable(Z)V
    .locals 0
    .param p1, "hideable"    # Z

    .line 557
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    .line 558
    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 3
    .param p1, "peekHeight"    # I

    .line 519
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 520
    .local v0, "layout":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 521
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_2

    .line 522
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    .line 523
    const/4 v0, 0x1

    goto :goto_0

    .line 525
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    if-eq v1, p1, :cond_2

    .line 526
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    .line 527
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    .line 528
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 529
    const/4 v0, 0x1

    .line 531
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 532
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 533
    .local v1, "view":Landroid/view/View;, "TV;"
    if-eqz v1, :cond_3

    .line 534
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 537
    .end local v1    # "view":Landroid/view/View;, "TV;"
    :cond_3
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0
    .param p1, "skipCollapsed"    # Z

    .line 578
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->skipCollapsed:Z

    .line 579
    return-void
.end method

.method setStateInternal(I)V
    .locals 2
    .param p1, "state"    # I

    .line 654
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_0

    .line 655
    return-void

    .line 657
    :cond_0
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 658
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 659
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 662
    :cond_1
    return-void
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "yvel"    # F

    .line 681
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 682
    return v1

    .line 684
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 686
    return v3

    .line 688
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    .line 689
    .local v0, "newTop":F
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method
