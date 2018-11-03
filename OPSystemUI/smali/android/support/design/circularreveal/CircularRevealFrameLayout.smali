.class public Landroid/support/design/circularreveal/CircularRevealFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CircularRevealFrameLayout.java"

# interfaces
.implements Landroid/support/design/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Landroid/support/design/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-direct {v0, p0}, Landroid/support/design/circularreveal/CircularRevealHelper;-><init>(Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    .line 39
    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 96
    return-void
.end method

.method public actualIsOpaque()Z
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 44
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 49
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 91
    :goto_0
    return-void
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 69
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 70
    return-void
.end method

.method public setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 1
    .param p1, "revealInfo"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    .line 59
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealFrameLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 60
    return-void
.end method
