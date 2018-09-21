.class public Lcom/android/systemui/statusbar/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAllowAnimation:Z

.field mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field mAttached:Z

.field mDrawableId:I

.field private final mHasOverlappingRendering:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->AnimatedImageView:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mHasOverlappingRendering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    nop

    .line 58
    return-void

    .line 56
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private updateAnim()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 76
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 82
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 84
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mHasOverlappingRendering:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 114
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    .line 123
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "vis"    # I

    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 135
    :cond_1
    :goto_0
    return-void
.end method

.method public setAllowAnimation(Z)V
    .locals 3
    .param p1, "allowAnimation"    # Z

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eq v0, p1, :cond_1

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 69
    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 88
    if-eqz p1, :cond_1

    .line 89
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    .line 95
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 97
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 102
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 104
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    .line 105
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 107
    return-void
.end method
