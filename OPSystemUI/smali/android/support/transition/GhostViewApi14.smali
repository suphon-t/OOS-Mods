.class Landroid/support/transition/GhostViewApi14;
.super Landroid/view/View;
.source "GhostViewApi14.java"

# interfaces
.implements Landroid/support/transition/GhostViewImpl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field mCurrentMatrix:Landroid/graphics/Matrix;

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mReferences:I

.field mStartParent:Landroid/view/ViewGroup;

.field mStartView:Landroid/view/View;

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/GhostViewApi14;->mMatrix:Landroid/graphics/Matrix;

    .line 113
    new-instance v0, Landroid/support/transition/GhostViewApi14$1;

    invoke-direct {v0, p0}, Landroid/support/transition/GhostViewApi14$1;-><init>(Landroid/support/transition/GhostViewApi14;)V

    iput-object v0, p0, Landroid/support/transition/GhostViewApi14;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 133
    iput-object p1, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    .line 134
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/transition/GhostViewApi14;->setLayerType(ILandroid/graphics/Paint;)V

    .line 135
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/support/transition/GhostViewImpl;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 46
    invoke-static {p0}, Landroid/support/transition/GhostViewApi14;->getGhostView(Landroid/view/View;)Landroid/support/transition/GhostViewApi14;

    move-result-object v0

    .line 47
    .local v0, "ghostView":Landroid/support/transition/GhostViewApi14;
    if-nez v0, :cond_1

    .line 48
    invoke-static {p1}, Landroid/support/transition/GhostViewApi14;->findFrameLayout(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 49
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    if-nez v1, :cond_0

    .line 50
    const/4 v2, 0x0

    return-object v2

    .line 52
    :cond_0
    new-instance v2, Landroid/support/transition/GhostViewApi14;

    invoke-direct {v2, p0}, Landroid/support/transition/GhostViewApi14;-><init>(Landroid/view/View;)V

    move-object v0, v2

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    iget v1, v0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    .line 56
    return-object v0
.end method

.method private static findFrameLayout(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 79
    :goto_0
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 81
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_0
    move-object p0, v0

    check-cast p0, Landroid/view/ViewGroup;

    .line 85
    .end local v0    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 86
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static getGhostView(Landroid/view/View;)Landroid/support/transition/GhostViewApi14;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 191
    sget v0, Landroid/support/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/GhostViewApi14;

    return-object v0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 60
    invoke-static {p0}, Landroid/support/transition/GhostViewApi14;->getGhostView(Landroid/view/View;)Landroid/support/transition/GhostViewApi14;

    move-result-object v0

    .line 61
    .local v0, "ghostView":Landroid/support/transition/GhostViewApi14;
    if-eqz v0, :cond_0

    .line 62
    iget v1, v0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    .line 63
    iget v1, v0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    if-gtz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/support/transition/GhostViewApi14;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 65
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 66
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 67
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 68
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static setGhostView(Landroid/view/View;Landroid/support/transition/GhostViewApi14;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ghostView"    # Landroid/support/transition/GhostViewApi14;

    .line 187
    sget v0, Landroid/support/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 188
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .line 139
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 140
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/transition/GhostViewApi14;->setGhostView(Landroid/view/View;Landroid/support/transition/GhostViewApi14;)V

    .line 142
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 143
    .local v1, "location":[I
    new-array v0, v0, [I

    .line 144
    .local v0, "viewLocation":[I
    invoke-virtual {p0, v1}, Landroid/support/transition/GhostViewApi14;->getLocationOnScreen([I)V

    .line 145
    iget-object v2, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 146
    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    .line 147
    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v3

    .line 148
    aget v4, v0, v2

    aget v2, v1, v2

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/support/transition/GhostViewApi14;->mDeltaX:I

    .line 149
    aget v2, v0, v3

    aget v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/transition/GhostViewApi14;->mDeltaY:I

    .line 151
    iget-object v2, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/GhostViewApi14;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 153
    iget-object v2, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 158
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/GhostViewApi14;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 159
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/GhostViewApi14;->setGhostView(Landroid/view/View;Landroid/support/transition/GhostViewApi14;)V

    .line 161
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 162
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 167
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/transition/GhostViewApi14;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 168
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/transition/GhostViewApi14;->mDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/transition/GhostViewApi14;->mDeltaY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 169
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 171
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 182
    iput-object p1, p0, Landroid/support/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    .line 183
    iput-object p2, p0, Landroid/support/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    .line 184
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 176
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    return-void
.end method
