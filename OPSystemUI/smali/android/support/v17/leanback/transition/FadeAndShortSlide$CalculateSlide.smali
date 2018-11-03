.class abstract Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
.super Ljava/lang/Object;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalculateSlide"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 1
    .param p1, "t"    # Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # [I

    .line 64
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 1
    .param p1, "t"    # Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # [I

    .line 69
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method
