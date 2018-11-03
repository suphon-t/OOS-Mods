.class public Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
.super Ljava/lang/Object;
.source "SearchOrbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/SearchOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field public brightColor:I

.field public color:I

.field public iconColor:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "brightColor"    # I
    .param p3, "iconColor"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    .line 95
    if-ne p2, p1, :cond_0

    invoke-static {p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->getBrightColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->brightColor:I

    .line 96
    iput p3, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->iconColor:I

    .line 97
    return-void
.end method

.method public static getBrightColor(I)I
    .locals 7
    .param p0, "color"    # I

    .line 121
    const/high16 v0, 0x42190000    # 38.25f

    .line 122
    .local v0, "brightnessValue":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    const/high16 v3, 0x42190000    # 38.25f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 123
    .local v1, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    float-to-int v4, v4

    .line 124
    .local v4, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    float-to-int v5, v5

    .line 125
    .local v5, "blue":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v3

    float-to-int v2, v6

    .line 126
    .local v2, "alpha":I
    invoke-static {v2, v1, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method
