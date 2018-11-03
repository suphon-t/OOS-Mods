.class final Landroid/support/v7/graphics/Palette$1;
.super Ljava/lang/Object;
.source "Palette.java"

# interfaces
.implements Landroid/support/v7/graphics/Palette$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isBlack([F)Z
    .locals 2
    .param p1, "hslColor"    # [F

    .line 973
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNearRedILine([F)Z
    .locals 4
    .param p1, "hslColor"    # [F

    .line 987
    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    aget v1, p1, v0

    const/high16 v3, 0x42140000    # 37.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    aget v1, p1, v2

    const v3, 0x3f51eb85    # 0.82f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0
.end method

.method private isWhite([F)Z
    .locals 2
    .param p1, "hslColor"    # [F

    .line 980
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isAllowed(I[F)Z
    .locals 1
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .line 966
    invoke-direct {p0, p2}, Landroid/support/v7/graphics/Palette$1;->isWhite([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/graphics/Palette$1;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/graphics/Palette$1;->isNearRedILine([F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
