.class public Landroid/support/design/widget/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomNavigationView$SavedState;,
        Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;,
        Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# instance fields
.field private final menu:Landroid/support/v7/view/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private final presenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private reselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 114
    sget v0, Landroid/support/design/widget/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 121
    new-instance v0, Landroid/support/design/internal/BottomNavigationMenu;

    invoke-direct {v0, p1}, Landroid/support/design/internal/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 123
    new-instance v0, Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-direct {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v1, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setBottomNavigationMenuView(Landroid/support/design/internal/BottomNavigationMenuView;)V

    .line 131
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setId(I)V

    .line 132
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V

    .line 133
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 134
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 137
    sget-object v1, Landroid/support/design/widget/R$styleable;->BottomNavigationView:[I

    sget v3, Landroid/support/design/widget/R$style;->Widget_Design_BottomNavigationView:I

    .line 138
    invoke-static {p1, p2, v1, p3, v3}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 145
    .local v1, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    sget v4, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    const v5, 0x1010038

    .line 149
    invoke-virtual {v4, v5}, Landroid/support/design/internal/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 152
    :goto_0
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemIconSize:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomNavigationView;->setItemIconSize(I)V

    .line 153
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 155
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 154
    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 157
    :cond_1
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    .line 159
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 158
    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 162
    :cond_2
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    :cond_3
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_elevation:I

    .line 168
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    .line 167
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 171
    :cond_4
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    const/4 v5, -0x1

    .line 172
    invoke-virtual {v1, v3, v5}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v3

    .line 171
    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 175
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemHorizontalTranslation:I

    .line 176
    invoke-virtual {v1, v3, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 175
    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomNavigationView;->setItemHorizontalTranslation(Z)V

    .line 178
    sget v2, Landroid/support/design/widget/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 179
    .local v2, "itemBackground":I
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 181
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    sget v3, Landroid/support/design/widget/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomNavigationView;->inflateMenu(I)V

    .line 184
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 186
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, v3, v0}, Landroid/support/design/widget/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_6

    .line 188
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 191
    :cond_6
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v4, Landroid/support/design/widget/BottomNavigationView$1;

    invoke-direct {v4, p0}, Landroid/support/design/widget/BottomNavigationView$1;-><init>(Landroid/support/design/widget/BottomNavigationView;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 205
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/BottomNavigationView;

    .line 97
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->reselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/BottomNavigationView;

    .line 97
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->selectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 533
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 534
    .local v0, "divider":Landroid/view/View;
    sget v1, Landroid/support/design/widget/R$color;->design_bottom_navigation_shadow_color:I

    .line 535
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 534
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 536
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 539
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/widget/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 540
    .local v1, "dividerParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomNavigationView;->addView(Landroid/view/View;)V

    .line 542
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 545
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 548
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getSelectedItemId()I
    .locals 1

    .line 365
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 246
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 247
    invoke-direct {p0}, Landroid/support/design/widget/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 248
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 249
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 250
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 562
    instance-of v0, p1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 563
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 564
    return-void

    .line 566
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/BottomNavigationView$SavedState;

    .line 567
    .local v0, "savedState":Landroid/support/design/widget/BottomNavigationView$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 568
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, v0, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 569
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 553
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 554
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 555
    .local v1, "savedState":Landroid/support/design/widget/BottomNavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 556
    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v3, v1, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 557
    return-object v1
.end method

.method public setItemHorizontalTranslation(Z)V
    .locals 2
    .param p1, "itemHorizontalTranslation"    # Z

    .line 479
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemHorizontalTranslation()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 480
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemHorizontalTranslation(Z)V

    .line 481
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 483
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1, "iconSize"    # I

    .line 287
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemIconSize(I)V

    .line 288
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1
    .param p1, "textAppearanceRes"    # I

    .line 458
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    .line 459
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1
    .param p1, "textAppearanceRes"    # I

    .line 439
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    .line 440
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 334
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 335
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2
    .param p1, "labelVisibilityMode"    # I

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 399
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 400
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 402
    :cond_0
    return-void
.end method
