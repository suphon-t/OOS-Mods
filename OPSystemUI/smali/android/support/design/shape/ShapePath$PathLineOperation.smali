.class public Landroid/support/design/shape/ShapePath$PathLineOperation;
.super Landroid/support/design/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Landroid/support/design/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/support/design/shape/ShapePath$PathLineOperation;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/design/shape/ShapePath$PathLineOperation;
    .param p1, "x1"    # F

    .line 134
    iput p1, p0, Landroid/support/design/shape/ShapePath$PathLineOperation;->x:F

    return p1
.end method

.method static synthetic access$102(Landroid/support/design/shape/ShapePath$PathLineOperation;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/design/shape/ShapePath$PathLineOperation;
    .param p1, "x1"    # F

    .line 134
    iput p1, p0, Landroid/support/design/shape/ShapePath$PathLineOperation;->y:F

    return p1
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 140
    iget-object v0, p0, Landroid/support/design/shape/ShapePath$PathLineOperation;->matrix:Landroid/graphics/Matrix;

    .line 141
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 142
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 143
    iget v1, p0, Landroid/support/design/shape/ShapePath$PathLineOperation;->x:F

    iget v2, p0, Landroid/support/design/shape/ShapePath$PathLineOperation;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 145
    return-void
.end method
