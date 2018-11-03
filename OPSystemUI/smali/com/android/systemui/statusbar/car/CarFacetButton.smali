.class public Lcom/android/systemui/statusbar/car/CarFacetButton;
.super Landroid/widget/LinearLayout;
.source "CarFacetButton.java"


# instance fields
.field private mComponentNames:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFacetCategories:[Ljava/lang/String;

.field private mFacetPackages:[Ljava/lang/String;

.field private mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

.field private mIconResourceId:I

.field private mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

.field private mSelected:Z

.field private mSelectedAlpha:F

.field private mSelectedIconResourceId:I

.field private mUnselectedAlpha:F

.field private mUseMoreIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUseMoreIcon:Z

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mContext:Landroid/content/Context;

    .line 60
    const v0, 0x7f0d003b

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    sget-object v0, Lcom/android/systemui/R$styleable;->CarFacetButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setupIntents(Landroid/content/res/TypedArray;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setupIcons(Landroid/content/res/TypedArray;)V

    .line 66
    const-class v1, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    .line 68
    .local v1, "carFacetButtonController":Lcom/android/systemui/statusbar/car/CarFacetButtonController;
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->addFacetButton(Lcom/android/systemui/statusbar/car/CarFacetButton;)V

    .line 70
    return-void
.end method

.method public static synthetic lambda$setupIntents$0(Lcom/android/systemui/statusbar/car/CarFacetButton;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .line 99
    const-string v0, "launch_picker"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 101
    return-void
.end method

.method public static synthetic lambda$setupIntents$1(Lcom/android/systemui/statusbar/car/CarFacetButton;Landroid/content/Intent;Landroid/view/View;)Z
    .locals 2
    .param p1, "longPressIntent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method private setupIcons(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "styledAttributes"    # Landroid/content/res/TypedArray;

    .line 118
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    .line 122
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setClickable(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget v3, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    invoke-virtual {v0, v3}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    .line 126
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIconResourceId:I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget v3, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIconResourceId:I

    invoke-virtual {v0, v3}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setImageResource(I)V

    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIconResourceId:I

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedIconResourceId:I

    .line 131
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setClickable(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget v2, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setVisibility(I)V

    .line 135
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUseMoreIcon:Z

    .line 136
    return-void
.end method

.method private setupIntents(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .line 76
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "intentString":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "longPressIntentString":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "categoryString":Ljava/lang/String;
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "packageString":Ljava/lang/String;
    nop

    .line 81
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "componentNameString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 84
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "filter_id"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    if-eqz v3, :cond_0

    .line 87
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetPackages:[Ljava/lang/String;

    .line 88
    const-string v7, "packages"

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetPackages:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :cond_0
    if-eqz v2, :cond_1

    .line 91
    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetCategories:[Ljava/lang/String;

    .line 92
    const-string v7, "categories"

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetCategories:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_1
    if-eqz v5, :cond_2

    .line 95
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mComponentNames:[Ljava/lang/String;

    .line 98
    :cond_2
    new-instance v7, Lcom/android/systemui/statusbar/car/-$$Lambda$CarFacetButton$i_dU0gknjwIWw7BhdaypNSeIb4I;

    invoke-direct {v7, p0, v6}, Lcom/android/systemui/statusbar/car/-$$Lambda$CarFacetButton$i_dU0gknjwIWw7BhdaypNSeIb4I;-><init>(Lcom/android/systemui/statusbar/car/CarFacetButton;Landroid/content/Intent;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    if-eqz v1, :cond_3

    .line 104
    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 106
    .local v4, "longPressIntent":Landroid/content/Intent;
    new-instance v7, Lcom/android/systemui/statusbar/car/-$$Lambda$CarFacetButton$531BxJPdfLOepcWw24yntC-HGBQ;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/statusbar/car/-$$Lambda$CarFacetButton$531BxJPdfLOepcWw24yntC-HGBQ;-><init>(Lcom/android/systemui/statusbar/car/CarFacetButton;Landroid/content/Intent;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v4    # "longPressIntent":Landroid/content/Intent;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_3
    nop

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Failed to attach intent"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public getCategories()[Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetCategories:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetCategories:[Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()[Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mComponentNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFacetPackages()[Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetPackages:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 170
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 171
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setSelected(ZZ)V

    .line 172
    return-void
.end method

.method public setSelected(ZZ)V
    .locals 2
    .param p1, "selected"    # Z
    .param p2, "showMoreIcon"    # Z

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedIconResourceId:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIconResourceId:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setImageResource(I)V

    .line 184
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUseMoreIcon:Z

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setVisibility(I)V

    .line 187
    :cond_3
    return-void
.end method
