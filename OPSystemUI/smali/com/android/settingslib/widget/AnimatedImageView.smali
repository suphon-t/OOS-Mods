.class public Lcom/android/settingslib/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# instance fields
.field private mAnimating:Z

.field private mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private updateAnimating()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method private updateDrawable()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_1

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedRotateDrawable;

    iput-object v1, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 46
    iget-object v1, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 47
    iget-object v1, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 54
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 81
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    .line 82
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 87
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    .line 88
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "vis"    # I

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 98
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    .line 99
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateDrawable()V

    .line 70
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateDrawable()V

    .line 76
    return-void
.end method
