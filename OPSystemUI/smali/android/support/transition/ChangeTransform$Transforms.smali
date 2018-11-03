.class Landroid/support/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 466
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 472
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    .line 481
    instance-of v0, p1, Landroid/support/transition/ChangeTransform$Transforms;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 482
    return v1

    .line 484
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/transition/ChangeTransform$Transforms;

    .line 485
    .local v0, "thatTransform":Landroid/support/transition/ChangeTransform$Transforms;
    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 497
    iget v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 498
    .local v0, "code":I
    :goto_0
    const/16 v3, 0x1f

    mul-int v4, v3, v0

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    .line 499
    .end local v0    # "code":I
    .local v4, "code":I
    mul-int v0, v3, v4

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    add-int/2addr v0, v5

    .line 500
    .end local v4    # "code":I
    .restart local v0    # "code":I
    mul-int v4, v3, v0

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    add-int/2addr v4, v5

    .line 501
    .end local v0    # "code":I
    .restart local v4    # "code":I
    mul-int v0, v3, v4

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_4

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    add-int/2addr v0, v5

    .line 502
    .end local v4    # "code":I
    .restart local v0    # "code":I
    mul-int v4, v3, v0

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    add-int/2addr v4, v5

    .line 503
    .end local v0    # "code":I
    .restart local v4    # "code":I
    mul-int v0, v3, v4

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_6

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_6

    :cond_6
    move v5, v2

    :goto_6
    add-int/2addr v0, v5

    .line 504
    .end local v4    # "code":I
    .restart local v0    # "code":I
    mul-int/2addr v3, v0

    iget v4, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    :cond_7
    add-int/2addr v3, v2

    .line 505
    .end local v0    # "code":I
    .local v3, "code":I
    return v3
.end method

.method public restore(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 475
    iget v1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v4, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v6, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v7, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v8, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->access$200(Landroid/view/View;FFFFFFFF)V

    .line 477
    return-void
.end method
