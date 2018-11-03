.class final Landroid/support/v17/leanback/widget/ForegroundHelper;
.super Ljava/lang/Object;
.source "ForegroundHelper.java"


# direct methods
.method static setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_0
    return-void
.end method
