.class public Landroid/support/design/internal/ScrimInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrimInsetsFrameLayout.java"


# instance fields
.field insetForeground:Landroid/graphics/drawable/Drawable;

.field insets:Landroid/graphics/Rect;

.field private tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    .line 55
    sget-object v0, Landroid/support/design/internal/R$styleable;->ScrimInsetsFrameLayout:[I

    sget v1, Landroid/support/design/internal/R$style;->Widget_Design_ScrimInsetsFrameLayout:I

    .line 56
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/internal/R$styleable;->ScrimInsetsFrameLayout_insetForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 66
    new-instance v1, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;-><init>(Landroid/support/design/internal/ScrimInsetsFrameLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 89
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->getWidth()I

    move-result v0

    .line 92
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->getHeight()I

    move-result v1

    .line 93
    .local v1, "height":I
    iget-object v2, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 95
    .local v2, "sc":I
    invoke-virtual {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 100
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v5, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 105
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v1, v7

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 110
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v1, v6

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 115
    iget-object v3, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 119
    .end local v2    # "sc":I
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 132
    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onInsetsChanged(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 137
    return-void
.end method
