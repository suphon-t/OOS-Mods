.class Landroid/support/design/card/MaterialCardViewHelper;
.super Ljava/lang/Object;
.source "MaterialCardViewHelper.java"


# instance fields
.field private cornerRadius:F

.field private final materialCardView:Landroid/support/design/card/MaterialCardView;

.field private strokeColor:I

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/support/design/card/MaterialCardView;)V
    .locals 0
    .param p1, "card"    # Landroid/support/design/card/MaterialCardView;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    .line 42
    return-void
.end method

.method private adjustContentPadding(I)V
    .locals 5
    .param p1, "strokeWidth"    # I

    .line 85
    iget-object v0, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    invoke-virtual {v0}, Landroid/support/design/card/MaterialCardView;->getContentPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 86
    .local v0, "contentPaddingLeft":I
    iget-object v1, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    invoke-virtual {v1}, Landroid/support/design/card/MaterialCardView;->getContentPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    .line 87
    .local v1, "contentPaddingTop":I
    iget-object v2, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    invoke-virtual {v2}, Landroid/support/design/card/MaterialCardView;->getContentPaddingRight()I

    move-result v2

    add-int/2addr v2, p1

    .line 88
    .local v2, "contentPaddingRight":I
    iget-object v3, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    invoke-virtual {v3}, Landroid/support/design/card/MaterialCardView;->getContentPaddingBottom()I

    move-result v3

    add-int/2addr v3, p1

    .line 89
    .local v3, "contentPaddingBottom":I
    iget-object v4, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/support/design/card/MaterialCardView;->setContentPadding(IIII)V

    .line 91
    return-void
.end method

.method private createBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 59
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 60
    .local v0, "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    iget v1, p0, Landroid/support/design/card/MaterialCardViewHelper;->cornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 64
    iget v1, p0, Landroid/support/design/card/MaterialCardViewHelper;->strokeColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 65
    iget v1, p0, Landroid/support/design/card/MaterialCardViewHelper;->strokeWidth:I

    iget v2, p0, Landroid/support/design/card/MaterialCardViewHelper;->strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 68
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 69
    iget-object v1, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    invoke-virtual {v1}, Landroid/support/design/card/MaterialCardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    invoke-virtual {v1}, Landroid/support/design/card/MaterialCardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    :goto_0
    return-object v0
.end method


# virtual methods
.method public loadFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attributes"    # Landroid/content/res/TypedArray;

    .line 45
    sget v0, Landroid/support/design/card/R$styleable;->CardView_cardCornerRadius:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/card/MaterialCardViewHelper;->cornerRadius:F

    .line 46
    sget v0, Landroid/support/design/card/R$styleable;->MaterialCardView_strokeColor:I

    .line 47
    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/card/MaterialCardViewHelper;->strokeColor:I

    .line 48
    sget v0, Landroid/support/design/card/R$styleable;->MaterialCardView_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/card/MaterialCardViewHelper;->strokeWidth:I

    .line 49
    iget-object v0, p0, Landroid/support/design/card/MaterialCardViewHelper;->materialCardView:Landroid/support/design/card/MaterialCardView;

    invoke-direct {p0}, Landroid/support/design/card/MaterialCardViewHelper;->createBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget v0, p0, Landroid/support/design/card/MaterialCardViewHelper;->strokeWidth:I

    invoke-direct {p0, v0}, Landroid/support/design/card/MaterialCardViewHelper;->adjustContentPadding(I)V

    .line 51
    return-void
.end method
