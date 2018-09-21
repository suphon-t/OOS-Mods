.class public Landroidx/car/widget/ClickThroughToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "ClickThroughToolbar.java"


# instance fields
.field private mAllowClickPassThrough:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/car/widget/ClickThroughToolbar;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    .line 51
    sget-object v0, Landroidx/car/R$styleable;->ClickThroughToolbar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroidx/car/R$styleable;->ClickThroughToolbar_clickThrough:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/car/widget/ClickThroughToolbar;->mAllowClickPassThrough:Z

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 72
    iget-boolean v0, p0, Landroidx/car/widget/ClickThroughToolbar;->mAllowClickPassThrough:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
