.class public Landroid/support/v17/leanback/widget/SearchOrbView;
.super Landroid/widget/FrameLayout;
.source "SearchOrbView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    }
.end annotation


# instance fields
.field private mAttachedToWindow:Z

.field private mColorAnimationEnabled:Z

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorEvaluator:Landroid/animation/ArgbEvaluator;

.field private mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mFocusedZ:F

.field private final mFocusedZoom:F

.field private mIcon:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mListener:Landroid/view/View$OnClickListener;

.field private final mPulseDurationMs:I

.field private mRootView:Landroid/view/View;

.field private final mScaleDurationMs:I

.field private mSearchOrbView:Landroid/view/View;

.field private mShadowFocusAnimator:Landroid/animation/ValueAnimator;

.field private final mUnfocusedZ:F

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 160
    sget v0, Landroid/support/v17/leanback/R$attr;->searchOrbViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 132
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/SearchOrbView$1;-><init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 143
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/SearchOrbView$2;-><init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "layout_inflater"

    .line 169
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 170
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->getLayoutResourceId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    .line 171
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    sget v4, Landroid/support/v17/leanback/R$id;->search_orb:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 172
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    sget v4, Landroid/support/v17/leanback/R$id;->icon:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$fraction;->lb_search_orb_focused_zoom:I

    invoke-virtual {v2, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$integer;->lb_search_orb_pulse_duration_ms:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$integer;->lb_search_orb_scale_duration_ms:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_search_orb_focused_z:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_search_orb_unfocused_z:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    .line 185
    sget-object v2, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView:[I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 188
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbIcon:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 189
    .local v5, "img":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_0

    .line 190
    sget v6, Landroid/support/v17/leanback/R$drawable;->lb_ic_in_app_search:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 192
    :cond_0
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 194
    sget v6, Landroid/support/v17/leanback/R$color;->lb_default_search_color:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 195
    .local v6, "defColor":I
    sget v7, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbColor:I

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 196
    .local v7, "color":I
    sget v8, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbBrightColor:I

    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 198
    .local v8, "brightColor":I
    sget v9, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbIconColor:I

    invoke-virtual {v2, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 199
    .local v9, "iconColor":I
    new-instance v10, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v10, v7, v8, v9}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 200
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/SearchOrbView;->setFocusable(Z)V

    .line 203
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/SearchOrbView;->setClipChildren(Z)V

    .line 204
    invoke-virtual {p0, p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/SearchOrbView;->setSoundEffectsEnabled(Z)V

    .line 206
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    .line 209
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget v4, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setZ(Landroid/view/View;F)V

    .line 210
    return-void
.end method

.method private startShadowFocusAnimation(ZI)V
    .locals 3
    .param p1, "gainFocus"    # Z
    .param p2, "duration"    # I

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 237
    :cond_0
    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 242
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateColorAnimator()V
    .locals 4

    .line 348
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 352
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v3, v3, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v3, v3, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->brightColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v2, v2, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 354
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 356
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 357
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    mul-int/2addr v1, v3

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 358
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 361
    :cond_1
    return-void
.end method


# virtual methods
.method animateOnFocus(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .line 252
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 253
    .local v0, "zoom":F
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 254
    iget v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    invoke-direct {p0, p1, v1}, Landroid/support/v17/leanback/widget/SearchOrbView;->startShadowFocusAnimation(ZI)V

    .line 255
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    .line 256
    return-void
.end method

.method public enableOrbColorAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 343
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 344
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 345
    return-void
.end method

.method getFocusedZoom()F
    .locals 1

    .line 222
    iget v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    return v0
.end method

.method getLayoutResourceId()I
    .locals 1

    .line 213
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_search_orb:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 371
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 373
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 374
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 227
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 230
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 380
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 381
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 382
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 248
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    .line 249
    return-void
.end method

.method scaleOrbViewOnly(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 217
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 218
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 219
    return-void
.end method

.method public setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 280
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    .line 281
    return-void
.end method

.method public setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 2
    .param p1, "colors"    # Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 316
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 317
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v1, v1, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->iconColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 319
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v0, v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    goto :goto_0

    .line 322
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    .line 324
    :goto_0
    return-void
.end method

.method public setOrbIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 263
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    return-void
.end method

.method setOrbViewColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 364
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 367
    :cond_0
    return-void
.end method

.method setSearchOrbZ(F)V
    .locals 4
    .param p1, "fraction"    # F

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    iget v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    iget v3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setZ(Landroid/view/View;F)V

    .line 153
    return-void
.end method
