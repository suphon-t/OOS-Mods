.class public Landroid/support/design/shape/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/shape/ShapePath$PathArcOperation;,
        Landroid/support/design/shape/ShapePath$PathLineOperation;,
        Landroid/support/design/shape/ShapePath$PathOperation;
    }
.end annotation


# instance fields
.field public endX:F

.field public endY:F

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/shape/ShapePath$PathOperation;",
            ">;"
        }
    .end annotation
.end field

.field public startX:F

.field public startY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    .line 40
    return-void
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 102
    new-instance v0, Landroid/support/design/shape/ShapePath$PathArcOperation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/design/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 103
    .local v0, "operation":Landroid/support/design/shape/ShapePath$PathArcOperation;
    iput p5, v0, Landroid/support/design/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 104
    iput p6, v0, Landroid/support/design/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 105
    iget-object v1, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-float v1, p1, p3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float v3, p3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v5, p5, p6

    float-to-double v5, v5

    .line 108
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iput v1, p0, Landroid/support/design/shape/ShapePath;->endX:F

    .line 109
    add-float v1, p2, p4

    mul-float/2addr v1, v2

    sub-float v2, p4, p2

    div-float/2addr v2, v4

    add-float v3, p5, p6

    float-to-double v3, v3

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/design/shape/ShapePath;->endY:F

    .line 111
    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 121
    iget-object v2, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/shape/ShapePath$PathOperation;

    .line 122
    .local v2, "operation":Landroid/support/design/shape/ShapePath$PathOperation;
    invoke-virtual {v2, p1, p2}, Landroid/support/design/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 120
    .end local v2    # "operation":Landroid/support/design/shape/ShapePath$PathOperation;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public lineTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 61
    new-instance v0, Landroid/support/design/shape/ShapePath$PathLineOperation;

    invoke-direct {v0}, Landroid/support/design/shape/ShapePath$PathLineOperation;-><init>()V

    .line 62
    .local v0, "operation":Landroid/support/design/shape/ShapePath$PathLineOperation;
    invoke-static {v0, p1}, Landroid/support/design/shape/ShapePath$PathLineOperation;->access$002(Landroid/support/design/shape/ShapePath$PathLineOperation;F)F

    .line 63
    invoke-static {v0, p2}, Landroid/support/design/shape/ShapePath$PathLineOperation;->access$102(Landroid/support/design/shape/ShapePath$PathLineOperation;F)F

    .line 64
    iget-object v1, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iput p1, p0, Landroid/support/design/shape/ShapePath;->endX:F

    .line 67
    iput p2, p0, Landroid/support/design/shape/ShapePath;->endY:F

    .line 68
    return-void
.end method

.method public reset(FF)V
    .locals 1
    .param p1, "startX"    # F
    .param p2, "startY"    # F

    .line 47
    iput p1, p0, Landroid/support/design/shape/ShapePath;->startX:F

    .line 48
    iput p2, p0, Landroid/support/design/shape/ShapePath;->startY:F

    .line 49
    iput p1, p0, Landroid/support/design/shape/ShapePath;->endX:F

    .line 50
    iput p2, p0, Landroid/support/design/shape/ShapePath;->endY:F

    .line 51
    iget-object v0, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    return-void
.end method
