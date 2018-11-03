.class Landroid/support/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# direct methods
.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 28
    invoke-static {p0, p1, p2}, Landroid/support/transition/GhostViewApi21;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    invoke-static {p0, p1}, Landroid/support/transition/GhostViewApi14;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/support/transition/GhostViewImpl;

    move-result-object v0

    return-object v0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {p0}, Landroid/support/transition/GhostViewApi21;->removeGhost(Landroid/view/View;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Landroid/support/transition/GhostViewApi14;->removeGhost(Landroid/view/View;)V

    .line 39
    :goto_0
    return-void
.end method
