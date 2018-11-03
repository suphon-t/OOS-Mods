.class public Lcom/android/systemui/statusbar/notification/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static final sLocationBase:[I

.field private static final sLocationOffset:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    .line 39
    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    return-void
.end method

.method public static getFontScaledHeight(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenId"    # I

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 81
    .local v0, "dimensionPixelSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 81
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 83
    .local v1, "factor":F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method public static getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F
    .locals 3
    .param p0, "offsetView"    # Landroid/view/View;
    .param p1, "baseView"    # Landroid/view/View;

    .line 70
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 71
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 72
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public static interpolate(FFF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "amount"    # F

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static interpolateColors(IIF)I
    .locals 5
    .param p0, "startColor"    # I
    .param p1, "endColor"    # I
    .param p2, "amount"    # F

    .line 62
    nop

    .line 63
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 64
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 65
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 66
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    .line 62
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z
    .locals 5
    .param p0, "v"    # Landroid/widget/ImageView;
    .param p1, "colorUtil"    # Lcom/android/internal/util/NotificationColorUtil;

    .line 41
    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "isGrayscale":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    .local v2, "iconDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v3, :cond_1

    .line 49
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 51
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    .line 53
    .local v3, "grayscale":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 54
    return v3
.end method
