.class public Landroid/support/design/circularreveal/CircularRevealGridLayout;
.super Landroid/widget/GridLayout;
.source "CircularRevealGridLayout.java"

# interfaces
.implements Landroid/support/design/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Landroid/support/design/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-direct {v0, p0}, Landroid/support/design/circularreveal/CircularRevealHelper;-><init>(Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    .line 38
    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 93
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->draw(Landroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.method public actualIsOpaque()Z
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/widget/GridLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 43
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 48
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 84
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :goto_0
    return-void
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/widget/GridLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 68
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 69
    return-void
.end method

.method public setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 1
    .param p1, "revealInfo"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    .line 58
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealGridLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 59
    return-void
.end method
