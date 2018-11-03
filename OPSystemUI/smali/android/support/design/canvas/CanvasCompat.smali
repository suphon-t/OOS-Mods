.class public Landroid/support/design/canvas/CanvasCompat;
.super Ljava/lang/Object;
.source "CanvasCompat.java"


# direct methods
.method public static saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I
    .locals 8
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 53
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v0

    return v0

    .line 55
    :cond_0
    const/16 v7, 0x1f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method
