.class public Lcom/android/systemui/shared/system/NavigationBarCompat;
.super Ljava/lang/Object;
.source "NavigationBarCompat.java"


# direct methods
.method private static convertDpToPixel(F)I
    .locals 1
    .param p0, "dp"    # F

    .line 81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static getQuickScrubTouchSlopPx()I
    .locals 1

    .line 45
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/NavigationBarCompat;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getQuickStepTouchSlopPx()I
    .locals 1

    .line 41
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/NavigationBarCompat;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method
