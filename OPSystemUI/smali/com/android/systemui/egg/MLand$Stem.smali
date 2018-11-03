.class Lcom/android/systemui/egg/MLand$Stem;
.super Lcom/android/systemui/egg/MLand$Obstacle;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stem"
.end annotation


# instance fields
.field id:I

.field mDrawShadow:Z

.field mGradient:Landroid/graphics/drawable/GradientDrawable;

.field mJandystripe:Landroid/graphics/Path;

.field mPaint:Landroid/graphics/Paint;

.field mPaint2:Landroid/graphics/Paint;

.field mShadow:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "h"    # F
    .param p4, "drawShadow"    # Z

    .line 1312
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1313
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/egg/MLand$Obstacle;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    .line 1304
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    .line 1305
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    .line 1306
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 1314
    invoke-static {p1}, Lcom/android/systemui/egg/MLand;->access$1300(Lcom/android/systemui/egg/MLand;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Stem;->id:I

    .line 1316
    iput-boolean p4, p0, Lcom/android/systemui/egg/MLand$Stem;->mDrawShadow:Z

    .line 1317
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand$Stem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1318
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 1319
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1320
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v2, 0x22000000

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1322
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, v0

    const/4 v0, 0x2

    if-gez p1, :cond_0

    .line 1323
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 1324
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    .line 1325
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    .line 1326
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1327
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 1330
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 1332
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x222223
    .end array-data

    :array_1
    .array-data 4
        -0x43555c
        -0x5e7781
    .end array-data
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1336
    invoke-super {p0}, Lcom/android/systemui/egg/MLand$Obstacle;->onAttachedToWindow()V

    .line 1337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Stem;->setWillNotDraw(Z)V

    .line 1338
    new-instance v0, Lcom/android/systemui/egg/MLand$Stem$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/MLand$Stem$1;-><init>(Lcom/android/systemui/egg/MLand$Stem;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Stem;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1344
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 1348
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 1349
    .local v1, "h":I
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v3, v0

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 1350
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1351
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1353
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    .line 1354
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1355
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1356
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v5, v0

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1357
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v5, v0

    const/4 v6, 0x2

    mul-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1358
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    const/4 v5, 0x3

    mul-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1359
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1360
    nop

    .local v3, "y":I
    :goto_0
    move v2, v3

    .end local v3    # "y":I
    .local v2, "y":I
    if-ge v2, v1, :cond_0

    .line 1361
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1362
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    const/4 v5, 0x4

    mul-int v6, v5, v0

    int-to-float v6, v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->offset(FF)V

    .line 1360
    mul-int/2addr v5, v0

    add-int v3, v2, v5

    .end local v2    # "y":I
    .restart local v3    # "y":I
    goto :goto_0

    .line 1366
    .end local v3    # "y":I
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mDrawShadow:Z

    if-nez v2, :cond_1

    return-void

    .line 1367
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1368
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1369
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    int-to-float v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1370
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    int-to-float v3, v0

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    int-to-float v7, v0

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1371
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1372
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1373
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1374
    return-void
.end method
