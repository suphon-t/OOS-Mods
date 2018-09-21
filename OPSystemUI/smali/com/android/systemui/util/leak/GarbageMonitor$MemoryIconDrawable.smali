.class Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryIconDrawable"
.end annotation


# instance fields
.field final baseIcon:Landroid/graphics/drawable/Drawable;

.field final dp:F

.field limit:J

.field final paint:Landroid/graphics/Paint;

.field pss:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 227
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    .line 228
    const v0, 0x7f080287

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    .line 230
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->pss:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 252
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->pss:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 254
    .local v0, "frac":F
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 255
    .local v2, "bounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v6, 0x40a00000    # 5.0f

    iget v7, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    const/4 v7, 0x0

    iget v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v3, v4

    sub-float v6, v1, v0

    mul-float v8, v3, v6

    iget v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    mul-float/2addr v5, v3

    add-float v9, v5, v1

    iget v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    mul-float/2addr v4, v3

    add-float v10, v4, v1

    iget-object v11, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 259
    .end local v0    # "frac":F
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 308
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 280
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 284
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 286
    return-void
.end method

.method public setLimit(J)V
    .locals 2
    .param p1, "limit"    # J

    .line 241
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 242
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->invalidateSelf()V

    .line 245
    :cond_0
    return-void
.end method

.method public setPss(J)V
    .locals 2
    .param p1, "pss"    # J

    .line 234
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->pss:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 235
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->pss:J

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->invalidateSelf()V

    .line 238
    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .line 290
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 292
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 296
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 298
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 302
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 304
    return-void
.end method
