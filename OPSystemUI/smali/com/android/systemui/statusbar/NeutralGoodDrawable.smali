.class public Lcom/android/systemui/statusbar/NeutralGoodDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "NeutralGoodDrawable.java"


# direct methods
.method protected constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 64
    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->setLayerGravity(II)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->setDarkIntensity(F)V

    .line 69
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/NeutralGoodDrawable;
    .locals 4
    .param p0, "light"    # Landroid/content/Context;
    .param p1, "dark"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/NeutralGoodDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public setDarkIntensity(F)V
    .locals 3
    .param p1, "intensity"    # F

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float/2addr v2, p1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->invalidateSelf()V

    .line 77
    return-void
.end method
