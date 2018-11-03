.class public Landroid/support/v17/leanback/widget/MediaNowPlayingView;
.super Landroid/widget/LinearLayout;
.source "MediaNowPlayingView.java"


# instance fields
.field private final mImage1:Landroid/widget/ImageView;

.field private final mImage2:Landroid/widget/ImageView;

.field private final mImage3:Landroid/widget/ImageView;

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private final mObjectAnimator1:Landroid/animation/ObjectAnimator;

.field private final mObjectAnimator2:Landroid/animation/ObjectAnimator;

.field private final mObjectAnimator3:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_playback_now_playing_bars:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget v0, Landroid/support/v17/leanback/R$id;->bar1:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    .line 52
    sget v0, Landroid/support/v17/leanback/R$id;->bar2:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    .line 53
    sget v0, Landroid/support/v17/leanback/R$id;->bar3:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 56
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 57
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 59
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->setDropScale(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->setDropScale(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->setDropScale(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    const-string v1, "scaleY"

    const/16 v2, 0x1e

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    .line 68
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 69
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x910

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    const-string v2, "scaleY"

    const/16 v3, 0x1b

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 78
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x820

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 79
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    const-string v2, "scaleY"

    const/16 v3, 0x1a

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    return-void

    nop

    :array_0
    .array-data 4
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f155555
        0x3f400000    # 0.75f
        0x3f555555
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3e2aaaab
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f2aaaab
        0x3ed55555
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3ed55555
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f555555
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f555555
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f2aaaab
        0x3f555555
        0x3f800000    # 1.0f
        0x3f555555
        0x3f400000    # 0.75f
        0x3f2aaaab
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f555555
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3f155555
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3e800000    # 0.25f
        0x3f2aaaab
    .end array-data
.end method

.method static setDropScale(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 91
    const v0, 0x3daaaaab

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 92
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .line 118
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation(Landroid/animation/Animator;)V

    .line 119
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation(Landroid/animation/Animator;)V

    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation(Landroid/animation/Animator;)V

    .line 121
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method private startAnimation(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 136
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 139
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .line 127
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation(Landroid/animation/Animator;Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation(Landroid/animation/Animator;Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation(Landroid/animation/Animator;Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    return-void
.end method

.method private stopAnimation(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "view"    # Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 144
    invoke-static {p2}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->setDropScale(Landroid/view/View;)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 107
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation()V

    .line 109
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 113
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 114
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation()V

    .line 115
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 96
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 98
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation()V

    .line 102
    :goto_0
    return-void
.end method
