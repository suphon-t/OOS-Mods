.class public Lcom/android/systemui/qs/tileimpl/SlashImageView;
.super Landroid/widget/ImageView;
.source "SlashImageView.java"


# instance fields
.field private mAnimationEnabled:Z

.field protected mSlash:Lcom/android/systemui/qs/SlashDrawable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z

    .line 35
    return-void
.end method

.method private setSlashState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;)V
    .locals 2
    .param p1, "slashState"    # Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->ensureSlashDrawable()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;->setRotation(F)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;->setSlashed(Z)V

    .line 83
    return-void
.end method


# virtual methods
.method protected ensureSlashDrawable()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/systemui/qs/SlashDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;->setAnimationEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_0
    return-void
.end method

.method public getAnimationEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z

    return v0
.end method

.method protected getSlash()Lcom/android/systemui/qs/SlashDrawable;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    return-object v0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z

    .line 73
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 55
    if-nez p1, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    .line 57
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setImageLevel(I)V

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;->setAnimationEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SlashDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    return-void
.end method

.method protected setImageViewDrawable(Lcom/android/systemui/qs/SlashDrawable;)V
    .locals 0
    .param p1, "slash"    # Lcom/android/systemui/qs/SlashDrawable;

    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method protected setSlash(Lcom/android/systemui/qs/SlashDrawable;)V
    .locals 0
    .param p1, "slash"    # Lcom/android/systemui/qs/SlashDrawable;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    .line 43
    return-void
.end method

.method public setState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$SlashState;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setSlashState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;)V

    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mSlash:Lcom/android/systemui/qs/SlashDrawable;

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_0
    return-void
.end method
