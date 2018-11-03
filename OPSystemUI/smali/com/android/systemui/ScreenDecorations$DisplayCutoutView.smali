.class public Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.super Landroid/view/View;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCutoutView"
.end annotation


# instance fields
.field private final mBoundingPath:Landroid/graphics/Path;

.field private final mBoundingRect:Landroid/graphics/Rect;

.field private final mBounds:Landroid/graphics/Region;

.field private mColor:I

.field private final mInfo:Landroid/view/DisplayInfo;

.field private final mLocation:[I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShouldDrawaCutout:Z

.field private final mStart:Z

.field private final mVisibilityChangedListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "start"    # Z
    .param p3, "visibilityChangedListener"    # Ljava/lang/Runnable;

    .line 555
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 539
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    .line 540
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    .line 541
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Landroid/graphics/Region;

    .line 542
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 543
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    .line 544
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    .line 548
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShouldDrawaCutout:Z

    .line 551
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 556
    iput-boolean p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mStart:Z

    .line 557
    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mVisibilityChangedListener:Ljava/lang/Runnable;

    .line 558
    const v0, 0x7f0a011e

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setId(I)V

    .line 559
    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    return-void
.end method

.method public static boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V
    .locals 7
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p1, "gravity"    # I
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 735
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBounds()Landroid/graphics/Region;

    move-result-object v6

    .line 736
    .local v6, "bounds":Landroid/graphics/Region;
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 750
    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 751
    goto :goto_0

    .line 738
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 740
    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 741
    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 755
    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 743
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    const v4, 0x7fffffff

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 745
    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 746
    nop

    .line 758
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 759
    return-void
.end method

.method private hasCutout()Z
    .locals 4

    .line 702
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 703
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 704
    return v1

    .line 706
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mStart:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 712
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-gtz v2, :cond_2

    .line 713
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    if-gtz v2, :cond_2

    .line 714
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-gtz v2, :cond_2

    .line 715
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 712
    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    return v1

    .line 718
    :cond_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-gtz v2, :cond_5

    .line 719
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    .line 718
    :cond_5
    :goto_2
    move v1, v3

    :goto_3
    return v1
.end method

.method private localBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 762
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 764
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mStart:Z

    const/16 v2, 0x50

    const/4 v3, 0x5

    if-eqz v1, :cond_3

    .line 773
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    if-lez v1, :cond_0

    .line 774
    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-lez v1, :cond_1

    .line 777
    const/16 v1, 0x30

    invoke-static {v0, v1, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 778
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    if-lez v1, :cond_2

    .line 780
    invoke-static {v0, v3, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 782
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    if-lez v1, :cond_5

    .line 783
    invoke-static {v0, v2, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 788
    :cond_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    if-lez v1, :cond_4

    .line 789
    invoke-static {v0, v3, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 790
    :cond_4
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    if-lez v1, :cond_5

    .line 791
    invoke-static {v0, v2, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 794
    :cond_5
    :goto_0
    return-void
.end method

.method private static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 3
    .param p0, "rotation"    # I
    .param p1, "physicalWidth"    # I
    .param p2, "physicalHeight"    # I
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 680
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :pswitch_0
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 694
    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 695
    goto :goto_0

    .line 689
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 690
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 691
    goto :goto_0

    .line 685
    :pswitch_2
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 686
    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 687
    goto :goto_0

    .line 682
    :pswitch_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 683
    nop

    .line 699
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private update()V
    .locals 4

    .line 626
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 628
    .local v0, "displayState":I
    sget-boolean v1, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 629
    const-string v1, "ScreenDecorations"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " update displayState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->requestLayout()V

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 641
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 642
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 643
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 647
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShouldDrawaCutout:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->hasCutout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v2, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBounds()Landroid/graphics/Region;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 650
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->localBounds(Landroid/graphics/Rect;)V

    .line 651
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateBoundingPath()V

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->invalidate()V

    .line 653
    const/4 v1, 0x0

    .local v1, "newVisible":I
    goto :goto_0

    .line 655
    .end local v1    # "newVisible":I
    :cond_2
    const/16 v1, 0x8

    .line 657
    .restart local v1    # "newVisible":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getVisibility()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 658
    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setVisibility(I)V

    .line 659
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mVisibilityChangedListener:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 661
    :cond_3
    return-void

    .line 635
    .end local v1    # "newVisible":I
    :cond_4
    :goto_1
    return-void
.end method

.method private updateBoundingPath()V
    .locals 7

    .line 664
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 665
    .local v0, "lw":I
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 667
    .local v1, "lh":I
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    nop

    :cond_1
    :goto_0
    move v2, v3

    .line 669
    .local v2, "flipped":Z
    if-eqz v2, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 670
    .local v3, "dw":I
    :goto_1
    if-eqz v2, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v1

    .line 672
    .local v4, "dh":I
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v3, v4}, Landroid/view/DisplayCutout;->pathFromResources(Landroid/content/res/Resources;II)Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 673
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 674
    .local v5, "m":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v6, v3, v4, v5}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 675
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 676
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 823
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cutout rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cutout Bounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBounds()Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cutout displayCutout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :cond_0
    monitor-exit p0

    return-void

    .line 822
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    throw p1
.end method

.method public getInterceptRegion()Landroid/graphics/Region;
    .locals 8

    .line 803
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x0

    return-object v0

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 808
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBounds()Landroid/graphics/Region;

    move-result-object v1

    .line 811
    .local v1, "cutoutBounds":Landroid/graphics/Region;
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 812
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 815
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 816
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 815
    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 818
    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 568
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 570
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 569
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    .line 572
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 576
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 578
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 595
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 610
    const/16 v0, 0xfa

    .line 611
    .local v0, "delay":I
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1f4

    .line 613
    :cond_0
    new-instance v1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;-><init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;I)V

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 599
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 582
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getLocationOnScreen([I)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 588
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 591
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 725
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 727
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 730
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->resolveSizeAndState(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 731
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2, p2, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->resolveSizeAndState(III)I

    move-result v1

    .line 729
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setMeasuredDimension(II)V

    .line 732
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 562
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->invalidate()V

    .line 564
    return-void
.end method

.method public shouldInterceptTouch()Z
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
