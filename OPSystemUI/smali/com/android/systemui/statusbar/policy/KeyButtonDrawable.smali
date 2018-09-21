.class public Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "KeyButtonDrawable.java"


# instance fields
.field private final mHasDarkDrawable:Z


# direct methods
.method protected constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 74
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 75
    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setLayerGravity(II)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 78
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 80
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 10
    .param p0, "lightContext"    # Landroid/content/Context;
    .param p1, "lightDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "darkDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "hasShadow"    # Z

    .line 43
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 44
    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 53
    :cond_1
    if-eqz p2, :cond_3

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .local v0, "light":Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
    new-instance v4, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .local v4, "dark":Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
    if-eqz p3, :cond_2

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 59
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f07036c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 60
    .local v6, "offsetX":I
    const v7, 0x7f07036d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 61
    .local v7, "offsetY":I
    const v8, 0x7f07036e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 62
    .local v8, "radius":I
    const v9, 0x7f0602d9

    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 63
    .local v9, "color":I
    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setShadowProperties(IIII)V

    .line 65
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "offsetX":I
    .end local v7    # "offsetY":I
    .end local v8    # "radius":I
    .end local v9    # "color":I
    :cond_2
    new-instance v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v3

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v5

    .line 67
    .end local v0    # "light":Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
    .end local v4    # "dark":Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public setDarkIntensity(F)V
    .locals 3
    .param p1, "intensity"    # F

    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float/2addr v2, p1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->invalidateSelf()V

    .line 89
    return-void
.end method

.method public setRotation(F)V
    .locals 2
    .param p1, "degrees"    # F

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setRotation(F)V

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setRotation(F)V

    .line 98
    :cond_1
    return-void
.end method
