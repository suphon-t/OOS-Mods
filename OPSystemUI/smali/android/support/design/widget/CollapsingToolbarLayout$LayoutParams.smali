.class public Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field collapseMode:I

.field parallaxMult:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1155
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1137
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1138
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1141
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1137
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1138
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1143
    sget-object v2, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1144
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseMode:I

    .line 1145
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1147
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier:I

    .line 1148
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1147
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->setParallaxMultiplier(F)V

    .line 1151
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1152
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1163
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1138
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1164
    return-void
.end method


# virtual methods
.method public setParallaxMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .line 1206
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1207
    return-void
.end method
