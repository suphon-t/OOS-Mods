.class public Landroid/support/v17/leanback/transition/SlideNoPropagation;
.super Landroid/transition/Slide;
.source "SlideNoPropagation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/transition/Slide;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "slideEdge"    # I

    .line 36
    invoke-direct {p0, p1}, Landroid/transition/Slide;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setSlideEdge(I)V
    .locals 1
    .param p1, "slideEdge"    # I

    .line 45
    invoke-super {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/transition/SlideNoPropagation;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 47
    return-void
.end method
