.class Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [F

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 554
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    .line 555
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 556
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 557
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 558
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 559
    return-void
.end method

.method private setAnimationMatrix()V
    .locals 3

    .line 573
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    iget v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 574
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    iget v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 575
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 576
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 577
    return-void
.end method


# virtual methods
.method getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 580
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method setTranslation(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "translation"    # Landroid/graphics/PointF;

    .line 567
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 568
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 569
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 570
    return-void
.end method

.method setValues([F)V
    .locals 3
    .param p1, "values"    # [F

    .line 562
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 564
    return-void
.end method
