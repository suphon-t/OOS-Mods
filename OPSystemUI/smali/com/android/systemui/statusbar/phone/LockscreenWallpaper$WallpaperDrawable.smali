.class public Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "LockscreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;
    }
.end annotation


# instance fields
.field private final mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .line 239
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)V

    .line 240
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    .line 243
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->access$500(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 244
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;
    .param p3, "x2"    # Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->getConstantState()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 260
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 255
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 266
    .local v0, "vwidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 267
    .local v1, "vheight":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->access$500(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 268
    .local v2, "dwidth":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->access$500(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 270
    .local v3, "dheight":I
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 272
    .local v5, "dy":F
    mul-int v6, v2, v1

    mul-int v7, v0, v3

    if-le v6, v7, :cond_0

    .line 273
    int-to-float v6, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    .local v6, "scale":F
    goto :goto_0

    .line 275
    .end local v6    # "scale":F
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 278
    .restart local v6    # "scale":F
    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_1

    .line 279
    const/high16 v6, 0x3f800000    # 1.0f

    .line 281
    :cond_1
    int-to-float v7, v1

    int-to-float v8, v3

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    .line 283
    .end local v5    # "dy":F
    .local v7, "dy":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mTmpRect:Landroid/graphics/Rect;

    iget v8, p1, Landroid/graphics/Rect;->left:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    .line 285
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    mul-float/2addr v11, v6

    .line 286
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    mul-float/2addr v12, v6

    add-float/2addr v12, v7

    .line 287
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v12

    .line 283
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-super {p0, v5}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 290
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 251
    return-void
.end method
