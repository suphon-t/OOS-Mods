.class public Landroid/support/design/button/MaterialButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "MaterialButton.java"


# instance fields
.field private additionalPaddingLeftForIcon:I

.field private additionalPaddingRightForIcon:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconPadding:I

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private final materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

.field private paddingBottom:I

.field private paddingEnd:I

.field private paddingStart:I

.field private paddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 115
    sget v0, Landroid/support/design/button/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    sget-object v0, Landroid/support/design/button/R$styleable;->MaterialButton:[I

    sget v1, Landroid/support/design/button/R$style;->Widget_MaterialComponents_Button:I

    .line 122
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/button/R$styleable;->MaterialButton_android_padding:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 130
    .local v1, "padding":I
    sget v3, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingLeft:I

    .line 131
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 132
    .local v3, "paddingLeft":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 133
    sget v4, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingStart:I

    .line 134
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    goto :goto_0

    .line 137
    :cond_0
    iput v3, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    .line 140
    :goto_0
    sget v4, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingRight:I

    .line 141
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 143
    .local v4, "paddingRight":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_1

    .line 144
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingEnd:I

    .line 145
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    goto :goto_1

    .line 148
    :cond_1
    iput v4, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    .line 151
    :goto_1
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingTop:I

    .line 152
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    .line 153
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_android_paddingBottom:I

    .line 154
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    .line 157
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetLeft:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->insetLeft:I

    .line 158
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetRight:I

    .line 159
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->insetRight:I

    .line 160
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->insetTop:I

    .line 161
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_android_insetBottom:I

    .line 162
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->insetBottom:I

    .line 164
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_additionalPaddingLeftForIcon:I

    .line 165
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingLeftForIcon:I

    .line 167
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_additionalPaddingRightForIcon:I

    .line 168
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingRightForIcon:I

    .line 171
    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    .line 172
    sget v2, Landroid/support/design/button/R$styleable;->MaterialButton_iconTintMode:I

    const/4 v5, -0x1

    .line 174
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 173
    invoke-static {v2, v5}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 176
    nop

    .line 178
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_iconTint:I

    .line 177
    invoke-static {v2, v0, v5}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 179
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Landroid/support/design/button/R$styleable;->MaterialButton_icon:I

    invoke-static {v2, v0, v5}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 182
    new-instance v2, Landroid/support/design/button/MaterialButtonHelper;

    invoke-direct {v2, p0}, Landroid/support/design/button/MaterialButtonHelper;-><init>(Landroid/support/design/button/MaterialButton;)V

    iput-object v2, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    .line 183
    iget-object v2, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v2, v0}, Landroid/support/design/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    iget v2, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, v2}, Landroid/support/design/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 188
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    .line 189
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 190
    return-void
.end method

.method private isUsingOriginalBackground()Z
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateIcon()V
    .locals 2

    .line 618
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 620
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 621
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 627
    return-void
.end method

.method private updatePadding()V
    .locals 5

    .line 475
    iget v0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingLeftForIcon:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/button/MaterialButton;->insetLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    iget v3, p0, Landroid/support/design/button/MaterialButton;->insetTop:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    iget-object v4, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget v2, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingRightForIcon:I

    nop

    :cond_1
    add-int/2addr v3, v2

    iget v2, p0, Landroid/support/design/button/MaterialButton;->insetRight:I

    add-int/2addr v3, v2

    iget v2, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    iget v4, p0, Landroid/support/design/button/MaterialButton;->insetBottom:I

    add-int/2addr v2, v4

    invoke-static {p0, v0, v1, v3, v2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 481
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 194
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->draw(Landroid/graphics/Canvas;)V

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 199
    :cond_0
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 284
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 295
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 229
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 267
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 343
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    sub-int v1, p5, p3

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/button/MaterialButtonHelper;->updateMaskBounds(II)V

    .line 348
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 311
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 300
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setBackgroundColor(I)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundColor(I)V

    .line 307
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 325
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 327
    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 329
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 337
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "backgroundResourceId"    # I

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 278
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 279
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 289
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 290
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 210
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_1

    .line 215
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 217
    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 248
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_1

    .line 253
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 255
    :cond_1
    :goto_0
    return-void
.end method
