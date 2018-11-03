.class public Lcom/android/systemui/fingerprint/FingerprintAnimationView;
.super Landroid/widget/ImageView;
.source "FingerprintAnimationView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAnimationDuration:I

.field private mBackground:Landroid/graphics/drawable/AnimationDrawable;

.field private mFingerprintAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "FingerprintAnimationView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "FingerprintAnimationView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const-string v0, "FingerprintAnimationView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintAnimationView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mFingerprintAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    return-object v0
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mAnimationDuration:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070496

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setY(F)V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mAnimationDuration:I

    .line 56
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 117
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->stopAnimation()V

    .line 119
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "cns"    # Landroid/graphics/Canvas;

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 69
    :cond_0
    return-void
.end method

.method public setAnimationRes(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setBackgroundResource(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mAnimationDuration:I

    .line 129
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 96
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public stopDelayed()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->mAnimationDuration:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 109
    return-void
.end method
