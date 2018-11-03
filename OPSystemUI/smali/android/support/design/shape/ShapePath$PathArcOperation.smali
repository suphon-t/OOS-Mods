.class public Landroid/support/design/shape/ShapePath$PathArcOperation;
.super Landroid/support/design/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public startAngle:F

.field public sweepAngle:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/support/design/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 176
    invoke-direct {p0}, Landroid/support/design/shape/ShapePath$PathOperation;-><init>()V

    .line 177
    iput p1, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->left:F

    .line 178
    iput p2, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->top:F

    .line 179
    iput p3, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->right:F

    .line 180
    iput p4, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->bottom:F

    .line 181
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 6
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 185
    iget-object v0, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->matrix:Landroid/graphics/Matrix;

    .line 186
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 187
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 188
    sget-object v1, Landroid/support/design/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->left:F

    iget v3, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->top:F

    iget v4, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->right:F

    iget v5, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 189
    sget-object v1, Landroid/support/design/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->startAngle:F

    iget v3, p0, Landroid/support/design/shape/ShapePath$PathArcOperation;->sweepAngle:F

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 190
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 191
    return-void
.end method
