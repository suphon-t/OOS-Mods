.class public Landroid/support/design/widget/NavigationView;
.super Landroid/support/design/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/NavigationView$SavedState;,
        Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field listener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

.field private maxWidth:I

.field private final menu:Landroid/support/design/internal/NavigationMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final presenter:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 82
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/support/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    .line 83
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    sget v0, Landroid/support/design/widget/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {v0}, Landroid/support/design/internal/NavigationMenuPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    .line 107
    new-instance v0, Landroid/support/design/internal/NavigationMenu;

    invoke-direct {v0, p1}, Landroid/support/design/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    .line 110
    sget-object v0, Landroid/support/design/widget/R$styleable;->NavigationView:[I

    sget v1, Landroid/support/design/widget/R$style;->Widget_Design_NavigationView:I

    .line 111
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 119
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 120
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_elevation:I

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 120
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 123
    :cond_0
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_android_fitsSystemWindows:I

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 123
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 126
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    .line 129
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .local v1, "itemIconTint":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 132
    .end local v1    # "itemIconTint":Landroid/content/res/ColorStateList;
    :cond_1
    const v1, 0x1010038

    invoke-direct {p0, v1}, Landroid/support/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 135
    .restart local v1    # "itemIconTint":Landroid/content/res/ColorStateList;
    :goto_0
    const/4 v3, 0x0

    .line 136
    .local v3, "textAppearanceSet":Z
    const/4 v4, 0x0

    .line 137
    .local v4, "textAppearance":I
    sget v5, Landroid/support/design/widget/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    sget v5, Landroid/support/design/widget/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v0, v5, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 139
    const/4 v3, 0x1

    .line 142
    :cond_2
    const/4 v5, 0x0

    .line 143
    .local v5, "itemTextColor":Landroid/content/res/ColorStateList;
    sget v6, Landroid/support/design/widget/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    sget v6, Landroid/support/design/widget/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 147
    :cond_3
    if-nez v3, :cond_4

    if-nez v5, :cond_4

    .line 149
    const v6, 0x1010036

    invoke-direct {p0, v6}, Landroid/support/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 152
    :cond_4
    sget v6, Landroid/support/design/widget/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 154
    .local v6, "itemBackground":Landroid/graphics/drawable/Drawable;
    sget v7, Landroid/support/design/widget/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 155
    sget v7, Landroid/support/design/widget/R$styleable;->NavigationView_itemHorizontalPadding:I

    .line 156
    invoke-virtual {v0, v7, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 157
    .local v7, "itemHorizontalPadding":I
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v7}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 159
    .end local v7    # "itemHorizontalPadding":I
    :cond_5
    sget v7, Landroid/support/design/widget/R$styleable;->NavigationView_itemIconPadding:I

    .line 160
    invoke-virtual {v0, v7, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 162
    .local v7, "itemIconPadding":I
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    new-instance v9, Landroid/support/design/widget/NavigationView$1;

    invoke-direct {v9, p0}, Landroid/support/design/widget/NavigationView$1;-><init>(Landroid/support/design/widget/NavigationView;)V

    invoke-virtual {v8, v9}, Landroid/support/design/internal/NavigationMenu;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 172
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/design/internal/NavigationMenuPresenter;->setId(I)V

    .line 173
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v9, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v8, p1, v9}, Landroid/support/design/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 174
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 175
    if-eqz v3, :cond_6

    .line 176
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v4}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 178
    :cond_6
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v5}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v6}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v7}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 181
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object v9, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v9}, Landroid/support/design/internal/NavigationMenu;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 182
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, p0}, Landroid/support/design/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/support/design/widget/NavigationView;->addView(Landroid/view/View;)V

    .line 184
    sget v8, Landroid/support/design/widget/R$styleable;->NavigationView_menu:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 185
    sget v8, Landroid/support/design/widget/R$styleable;->NavigationView_menu:I

    invoke-virtual {v0, v8, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/support/design/widget/NavigationView;->inflateMenu(I)V

    .line 188
    :cond_7
    sget v8, Landroid/support/design/widget/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 189
    sget v8, Landroid/support/design/widget/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v0, v8, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 192
    :cond_8
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 193
    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "baseColorThemeAttr"    # I

    .line 480
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 481
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 482
    return-object v3

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 485
    .local v1, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 486
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 487
    invoke-virtual {v4, v5, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 488
    return-object v3

    .line 490
    :cond_1
    iget v3, v0, Landroid/util/TypedValue;->data:I

    .line 491
    .local v3, "colorPrimary":I
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 492
    .local v4, "defaultColor":I
    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v6, 0x3

    new-array v7, v6, [[I

    sget-object v8, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Landroid/support/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v8, v7, v2

    sget-object v8, Landroid/support/design/widget/NavigationView;->EMPTY_STATE_SET:[I

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v6, v6, [I

    sget-object v8, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    .line 495
    invoke-virtual {v1, v8, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    aput v8, v6, v9

    aput v3, v6, v2

    aput v4, v6, v10

    invoke-direct {v5, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 492
    return-object v5
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 473
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "res"    # I

    .line 277
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 259
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 260
    invoke-direct {p0}, Landroid/support/design/widget/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 261
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 262
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 263
    return-void
.end method

.method protected onInsetsChanged(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 1
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 248
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 249
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 227
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    iget v0, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 232
    :cond_2
    nop

    .line 234
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 235
    nop

    .line 241
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 242
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Parcelable;

    .line 206
    instance-of v0, p1, Landroid/support/design/widget/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 207
    invoke-super {p0, p1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 208
    return-void

    .line 210
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/NavigationView$SavedState;

    .line 211
    .local v0, "state":Landroid/support/design/widget/NavigationView$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object v2, v0, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/design/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 197
    invoke-super {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 198
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/design/widget/NavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 199
    .local v1, "state":Landroid/support/design/widget/NavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 200
    iget-object v2, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object v3, v1, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    .line 201
    return-object v1
.end method
