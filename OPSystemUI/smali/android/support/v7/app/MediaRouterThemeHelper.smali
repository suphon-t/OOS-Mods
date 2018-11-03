.class final Landroid/support/v7/app/MediaRouterThemeHelper;
.super Ljava/lang/Object;
.source "MediaRouterThemeHelper.java"


# direct methods
.method static createThemedButtonContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 51
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    .line 52
    .local v0, "style":I
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v1

    .line 56
    :cond_0
    return-object p0
.end method

.method static createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I
    .param p2, "alertDialog"    # Z

    .line 76
    if-nez p1, :cond_1

    .line 77
    if-nez p2, :cond_0

    sget v0, Landroid/support/v7/appcompat/R$attr;->dialogTheme:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result p1

    .line 82
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 85
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 89
    :cond_2
    return-object p0
.end method

.method static createThemedDialogStyle(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    .line 95
    .local v0, "theme":I
    if-nez v0, :cond_0

    .line 97
    invoke-static {p0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v0

    .line 100
    :cond_0
    return v0
.end method

.method static getButtonTextColor(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 128
    .local v0, "primaryColor":I
    const v2, 0x1010031

    invoke-static {p0, v1, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    .line 130
    .local v2, "backgroundColor":I
    invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 132
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    invoke-static {p0, v1, v3}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v1

    return v1

    .line 134
    :cond_0
    return v0
.end method

.method static getControllerColor(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .line 116
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-static {p0, p1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 118
    .local v0, "primaryColor":I
    const/4 v1, -0x1

    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 120
    return v1

    .line 122
    :cond_0
    const/high16 v1, -0x22000000

    return v1
.end method

.method static getDisabledAlpha(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 111
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    return v1
.end method

.method private static getRouterThemeId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    invoke-static {p0}, Landroid/support/v7/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, -0x22000000

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 196
    invoke-static {p0, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 197
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light:I

    .local v0, "themeId":I
    :goto_0
    goto :goto_1

    .line 199
    .end local v0    # "themeId":I
    :cond_0
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light_DarkControlPanel:I

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {p0, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 203
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_LightControlPanel:I

    goto :goto_0

    .line 205
    :cond_2
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter:I

    .line 208
    .restart local v0    # "themeId":I
    :goto_1
    return v0
.end method

.method private static getThemeColor(Landroid/content/Context;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I
    .param p2, "attr"    # I

    .line 176
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 177
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 178
    .local v1, "attrs":[I
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 179
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 180
    .local v2, "color":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    if-eqz v2, :cond_0

    .line 182
    return v2

    .line 185
    .end local v1    # "attrs":[I
    .end local v2    # "color":I
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 186
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 187
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 190
    :cond_1
    iget v0, v1, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method static getThemeResource(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 105
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 106
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isLightTheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 170
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 171
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static setMediaControlsBackgroundColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mainControls"    # Landroid/view/View;
    .param p2, "groupControls"    # Landroid/view/View;
    .param p3, "hasGroup"    # Z

    .line 139
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 141
    .local v0, "primaryColor":I
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorPrimaryDark:I

    invoke-static {p0, v1, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    .line 143
    .local v2, "primaryDarkColor":I
    if-eqz p3, :cond_0

    invoke-static {p0, v1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v1

    const/high16 v3, -0x22000000

    if-ne v1, v3, :cond_0

    .line 146
    move v2, v0

    .line 147
    const/4 v0, -0x1

    .line 149
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method static setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeSlider"    # Landroid/support/v7/app/MediaRouteVolumeSlider;
    .param p2, "backgroundView"    # Landroid/view/View;

    .line 159
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v0

    .line 160
    .local v0, "controllerColor":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 164
    .local v1, "backgroundColor":I
    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    .line 166
    .end local v1    # "backgroundColor":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setColor(I)V

    .line 167
    return-void
.end method
