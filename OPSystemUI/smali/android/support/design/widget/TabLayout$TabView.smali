.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Landroid/support/design/widget/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Landroid/support/design/widget/TabLayout;
    .param p2, "context"    # Landroid/content/Context;

    .line 1913
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1914
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1911
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 1915
    invoke-direct {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 1916
    iget v0, p1, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    iget v3, p1, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1918
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1919
    iget-boolean v0, p1, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1920
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1921
    nop

    .line 1922
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object v0

    .line 1921
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    .line 1923
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout$TabView;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .line 1901
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout$TabView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout$TabView;

    .line 1901
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "textSize"    # F

    .line 2307
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1981
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1983
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1985
    :cond_0
    return-void
.end method

.method private getContentWidth()I
    .locals 8

    .line 2286
    const/4 v0, 0x0

    .line 2287
    .local v0, "initialized":Z
    const/4 v1, 0x0

    .line 2288
    .local v1, "left":I
    const/4 v2, 0x0

    .line 2290
    .local v2, "right":I
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    array-length v4, v3

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 2291
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 2292
    if-eqz v0, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    :goto_1
    move v1, v7

    .line 2293
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    :goto_2
    move v2, v7

    .line 2294
    const/4 v0, 0x1

    .line 2290
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2298
    :cond_3
    sub-int v3, v2, v1

    return v3
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1926
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    invoke-static {p1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1928
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1929
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 1932
    :cond_0
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1936
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1937
    .local v0, "contentDrawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1939
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 1940
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1944
    .local v2, "maskDrawable":Landroid/graphics/drawable/GradientDrawable;
    const v4, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1945
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1947
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1948
    invoke-static {v4}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 1952
    .local v4, "rippleColor":Landroid/content/res/ColorStateList;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_4

    .line 1953
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v5, v5, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v6, v6, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-direct {v3, v4, v5, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 1959
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1960
    .local v1, "rippleDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1961
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v3

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "rippleDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "maskDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "rippleColor":Landroid/content/res/ColorStateList;
    move-object v1, v5

    .line 1963
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    :goto_3
    goto :goto_4

    .line 1964
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v1, v0

    .line 1966
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1967
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->invalidate()V

    .line 1968
    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "iconView"    # Landroid/widget/ImageView;

    .line 2214
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2215
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2216
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2218
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 2219
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 2221
    .local v3, "contentDesc":Ljava/lang/CharSequence;
    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    .line 2222
    if-eqz v0, :cond_4

    .line 2223
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2224
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v6, :cond_3

    .line 2225
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2227
    :cond_3
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2228
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2229
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_3

    .line 2231
    :cond_4
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2232
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2234
    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2237
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 2238
    .local v6, "hasText":Z
    if-eqz p1, :cond_7

    .line 2239
    if-eqz v6, :cond_6

    .line 2240
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2241
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2242
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    .line 2244
    :cond_6
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2245
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2247
    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2250
    :cond_7
    if-eqz p2, :cond_a

    .line 2251
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2252
    .local v7, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v8, 0x0

    .line 2253
    .local v8, "iconMargin":I
    if-eqz v6, :cond_8

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_8

    .line 2255
    iget-object v9, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v9, v4}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v8

    .line 2257
    :cond_8
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v4, v4, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    if-eqz v4, :cond_9

    .line 2258
    invoke-static {v7}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    if-eq v8, v4, :cond_a

    .line 2259
    invoke-static {v7, v8}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2260
    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2262
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2263
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_5

    .line 2266
    :cond_9
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v8, v4, :cond_a

    .line 2267
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2268
    invoke-static {v7, v5}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2270
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2271
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2276
    .end local v7    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "iconMargin":I
    :cond_a
    :goto_5
    if-eqz v6, :cond_b

    goto :goto_6

    :cond_b
    move-object v1, v3

    :goto_6
    invoke-static {p0, v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2277
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .line 1989
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1990
    const/4 v0, 0x0

    .line 1991
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getDrawableState()[I

    move-result-object v1

    .line 1992
    .local v1, "state":[I
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1993
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1996
    :cond_0
    if-eqz v0, :cond_1

    .line 1997
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->invalidate()V

    .line 1998
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->invalidate()V

    .line 2000
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2043
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2045
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2046
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 2051
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2053
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2054
    return-void
.end method

.method public onMeasure(II)V
    .locals 17
    .param p1, "origWidthMeasureSpec"    # I
    .param p2, "origHeightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 2058
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2059
    .local v1, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2060
    .local v2, "specWidthMode":I
    iget-object v3, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v3

    .line 2063
    .local v3, "maxWidth":I
    move/from16 v4, p2

    .line 2065
    .local v4, "heightMeasureSpec":I
    if-lez v3, :cond_1

    if-eqz v2, :cond_0

    if-le v1, v3, :cond_1

    .line 2068
    :cond_0
    iget-object v5, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v5, v5, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .local v5, "widthMeasureSpec":I
    goto :goto_0

    .line 2071
    .end local v5    # "widthMeasureSpec":I
    :cond_1
    move/from16 v5, p1

    .line 2075
    .restart local v5    # "widthMeasureSpec":I
    :goto_0
    invoke-super {v0, v5, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2078
    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 2079
    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v6, v6, Landroid/support/design/widget/TabLayout;->tabTextSize:F

    .line 2080
    .local v6, "textSize":F
    iget v7, v0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2082
    .local v7, "maxLines":I
    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 2084
    const/4 v7, 0x1

    goto :goto_1

    .line 2085
    :cond_2
    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLineCount()I

    move-result v8

    if-le v8, v9, :cond_3

    .line 2087
    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v6, v8, Landroid/support/design/widget/TabLayout;->tabTextMultiLineSize:F

    .line 2090
    :cond_3
    :goto_1
    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    .line 2091
    .local v8, "curTextSize":F
    iget-object v10, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLineCount()I

    move-result v10

    .line 2092
    .local v10, "curLineCount":I
    iget-object v11, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v11}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v11

    .line 2094
    .local v11, "curMaxLines":I
    cmpl-float v12, v6, v8

    if-nez v12, :cond_4

    if-ltz v11, :cond_7

    if-eq v7, v11, :cond_7

    .line 2096
    :cond_4
    const/4 v12, 0x1

    .line 2098
    .local v12, "updateTextView":Z
    iget-object v13, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v13, v13, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v14, 0x0

    if-ne v13, v9, :cond_6

    cmpl-float v13, v6, v8

    if-lez v13, :cond_6

    if-ne v10, v9, :cond_6

    .line 2104
    iget-object v9, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 2105
    .local v9, "layout":Landroid/text/Layout;
    if-eqz v9, :cond_5

    .line 2106
    invoke-direct {v0, v9, v14, v6}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v13

    .line 2107
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    cmpl-float v13, v13, v15

    if-lez v13, :cond_6

    .line 2108
    :cond_5
    const/4 v12, 0x0

    .line 2112
    .end local v9    # "layout":Landroid/text/Layout;
    :cond_6
    if-eqz v12, :cond_7

    .line 2113
    iget-object v9, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v9, v14, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2114
    iget-object v9, v0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2115
    invoke-super {v0, v5, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2119
    .end local v6    # "textSize":F
    .end local v7    # "maxLines":I
    .end local v8    # "curTextSize":F
    .end local v10    # "curLineCount":I
    .end local v11    # "curMaxLines":I
    .end local v12    # "updateTextView":Z
    :cond_7
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 2004
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2006
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1

    .line 2007
    if-nez v0, :cond_0

    .line 2008
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->playSoundEffect(I)V

    .line 2010
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 2011
    const/4 v1, 0x1

    return v1

    .line 2013
    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    .line 2129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 2130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 2131
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .line 2019
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2021
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2023
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 2025
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 2030
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2031
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2033
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 2034
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2036
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 2037
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 2039
    :cond_4
    return-void
.end method

.method setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .line 2122
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 2123
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2124
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 2126
    :cond_0
    return-void
.end method

.method final update()V
    .locals 6

    .line 2134
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2135
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2136
    .local v2, "custom":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_6

    .line 2137
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2138
    .local v3, "customParent":Landroid/view/ViewParent;
    if-eq v3, p0, :cond_2

    .line 2139
    if-eqz v3, :cond_1

    .line 2140
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2142
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2144
    :cond_2
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2145
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    .line 2146
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2148
    :cond_3
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 2149
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2150
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2153
    :cond_4
    const v1, 0x1020014

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2154
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 2155
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2157
    :cond_5
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2158
    .end local v3    # "customParent":Landroid/view/ViewParent;
    goto :goto_1

    .line 2160
    :cond_6
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 2161
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2162
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2164
    :cond_7
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2165
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2168
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v1, :cond_b

    .line 2170
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    .line 2171
    nop

    .line 2173
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Landroid/support/design/widget/R$layout;->design_layout_tab_icon:I

    .line 2174
    invoke-virtual {v1, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2175
    .local v1, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v1, v3}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 2176
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2178
    .end local v1    # "iconView":Landroid/widget/ImageView;
    :cond_8
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_9

    .line 2179
    nop

    .line 2181
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Landroid/support/design/widget/R$layout;->design_layout_tab_text:I

    .line 2182
    invoke-virtual {v1, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2183
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2184
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2185
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2187
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_9
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v4, v4, Landroid/support/design/widget/TabLayout;->tabTextAppearance:I

    invoke-static {v1, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2188
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_a

    .line 2189
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2191
    :cond_a
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v4}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 2194
    :cond_b
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 2195
    :cond_c
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v4}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2200
    :cond_d
    :goto_2
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v3, 0x1

    nop

    :cond_e
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 2201
    return-void
.end method
