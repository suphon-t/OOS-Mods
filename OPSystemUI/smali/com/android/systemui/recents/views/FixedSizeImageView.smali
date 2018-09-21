.class public Lcom/android/systemui/recents/views/FixedSizeImageView;
.super Lcom/android/systemui/statusbar/AlphaOptimizedImageView;
.source "FixedSizeImageView.java"


# instance fields
.field private mAllowInvalidate:Z

.field private mAllowRelayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 49
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->invalidate()V

    .line 63
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->requestLayout()V

    .line 56
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 67
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 69
    .local v0, "isNullBitmapDrawable":Z
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 70
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 73
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 76
    return-void
.end method
