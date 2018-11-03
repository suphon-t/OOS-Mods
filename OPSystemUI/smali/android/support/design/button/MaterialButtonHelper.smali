.class Landroid/support/design/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# static fields
.field private static final IS_LOLLIPOP:Z


# instance fields
.field private backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

.field private backgroundOverwritten:Z

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final bounds:Landroid/graphics/Rect;

.field private final buttonStrokePaint:Landroid/graphics/Paint;

.field private colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

.field private cornerRadius:I

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

.field private final materialButton:Landroid/support/design/button/MaterialButton;

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

.field private strokeColor:Landroid/content/res/ColorStateList;

.field private strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

.field private strokeWidth:I

.field private tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

.field private tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/design/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/design/button/MaterialButton;)V
    .locals 2
    .param p1, "button"    # Landroid/support/design/button/MaterialButton;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->rectF:Landroid/graphics/RectF;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 87
    iput-object p1, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    .line 88
    return-void
.end method

.method private createBackgroundCompat()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 166
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    .line 167
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 168
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 170
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 172
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 176
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    .line 177
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Landroid/support/design/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 178
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 180
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;

    .line 181
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 183
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v0}, Landroid/support/design/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0
.end method

.method private createBackgroundLollipop()Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 238
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    .line 239
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 240
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 242
    invoke-direct {p0}, Landroid/support/design/button/MaterialButtonHelper;->updateTintAndTintModeLollipop()V

    .line 244
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    .line 245
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Landroid/support/design/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 246
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 247
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    iget-object v5, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 249
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    aput-object v5, v4, v3

    iget-object v3, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 252
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v0}, Landroid/support/design/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    .line 254
    .local v3, "bgInsetDrawable":Landroid/graphics/drawable/InsetDrawable;
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v4, p0, Landroid/support/design/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    .line 255
    iget-object v4, p0, Landroid/support/design/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Landroid/support/design/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 256
    iget-object v2, p0, Landroid/support/design/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 258
    new-instance v1, Landroid/support/design/button/MaterialButtonBackgroundDrawable;

    iget-object v2, p0, Landroid/support/design/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 259
    invoke-static {v2}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v4, p0, Landroid/support/design/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v3, v4}, Landroid/support/design/button/MaterialButtonBackgroundDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 258
    return-object v1
.end method

.method private updateTintAndTintModeLollipop()V
    .locals 2

    .line 223
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 225
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 229
    :cond_0
    return-void
.end method

.method private wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 189
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Landroid/support/design/button/MaterialButtonHelper;->insetLeft:I

    iget v3, p0, Landroid/support/design/button/MaterialButtonHelper;->insetTop:I

    iget v4, p0, Landroid/support/design/button/MaterialButtonHelper;->insetRight:I

    iget v5, p0, Landroid/support/design/button/MaterialButtonHelper;->insetBottom:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method


# virtual methods
.method drawStroke(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 146
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    invoke-virtual {v1}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 148
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/design/button/MaterialButtonHelper;->insetLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Landroid/support/design/button/MaterialButtonHelper;->insetTop:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, p0, Landroid/support/design/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/support/design/button/MaterialButtonHelper;->insetRight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/support/design/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/support/design/button/MaterialButtonHelper;->insetBottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    iget v0, p0, Landroid/support/design/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 156
    .local v0, "strokeCornerRadius":F
    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/design/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 158
    .end local v0    # "strokeCornerRadius":F
    :cond_0
    return-void
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method isBackgroundOverwritten()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundOverwritten:Z

    return v0
.end method

.method public loadFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attributes"    # Landroid/content/res/TypedArray;

    .line 91
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButtonHelper;->insetLeft:I

    .line 92
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetRight:I

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButtonHelper;->insetRight:I

    .line 94
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButtonHelper;->insetTop:I

    .line 95
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetBottom:I

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButtonHelper;->insetBottom:I

    .line 98
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButtonHelper;->cornerRadius:I

    .line 99
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    .line 101
    sget v0, Landroid/support/design/button/R$styleable;->MaterialButton_backgroundTintMode:I

    .line 103
    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 102
    invoke-static {v0, v2}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 104
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    .line 106
    invoke-virtual {v0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/design/button/R$styleable;->MaterialButton_backgroundTint:I

    .line 105
    invoke-static {v0, p1, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 107
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    .line 109
    invoke-virtual {v0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/design/button/R$styleable;->MaterialButton_strokeColor:I

    .line 108
    invoke-static {v0, p1, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 110
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    .line 112
    invoke-virtual {v0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/design/button/R$styleable;->MaterialButton_rippleColor:I

    .line 111
    invoke-static {v0, p1, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 114
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    .line 118
    invoke-virtual {v3}, Landroid/support/design/button/MaterialButton;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    nop

    .line 116
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    sget-boolean v1, Landroid/support/design/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v1, :cond_1

    .line 123
    invoke-direct {p0}, Landroid/support/design/button/MaterialButtonHelper;->createBackgroundLollipop()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/design/button/MaterialButtonHelper;->createBackgroundCompat()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/design/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 271
    sget-boolean v0, Landroid/support/design/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 273
    :cond_0
    sget-boolean v0, Landroid/support/design/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 276
    :cond_1
    :goto_0
    return-void
.end method

.method setBackgroundOverwritten()V
    .locals 2

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 136
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 137
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->materialButton:Landroid/support/design/button/MaterialButton;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 138
    return-void
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 193
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 194
    iput-object p1, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 195
    sget-boolean v0, Landroid/support/design/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Landroid/support/design/button/MaterialButtonHelper;->updateTintAndTintModeLollipop()V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 201
    :cond_1
    :goto_0
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 208
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_1

    .line 209
    iput-object p1, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 210
    sget-boolean v0, Landroid/support/design/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Landroid/support/design/button/MaterialButtonHelper;->updateTintAndTintModeLollipop()V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 216
    :cond_1
    :goto_0
    return-void
.end method

.method updateMaskBounds(II)V
    .locals 5
    .param p1, "height"    # I
    .param p2, "width"    # I

    .line 265
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/support/design/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/button/MaterialButtonHelper;->insetLeft:I

    iget v2, p0, Landroid/support/design/button/MaterialButtonHelper;->insetTop:I

    iget v3, p0, Landroid/support/design/button/MaterialButtonHelper;->insetRight:I

    sub-int v3, p2, v3

    iget v4, p0, Landroid/support/design/button/MaterialButtonHelper;->insetBottom:I

    sub-int v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 268
    :cond_0
    return-void
.end method
