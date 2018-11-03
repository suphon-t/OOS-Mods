.class final Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;
.super Ljava/lang/Object;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/graph/SignalDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlashArtist"
.end annotation


# instance fields
.field private final mPath:Landroid/graphics/Path;

.field private final mSlashRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/settingslib/graph/SignalDrawable;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/graph/SignalDrawable;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    .line 477
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/graph/SignalDrawable;Lcom/android/settingslib/graph/SignalDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/graph/SignalDrawable;
    .param p2, "x1"    # Lcom/android/settingslib/graph/SignalDrawable$1;

    .line 459
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;-><init>(Lcom/android/settingslib/graph/SignalDrawable;)V

    return-void
.end method

.method private scale(FI)F
    .locals 1
    .param p1, "frac"    # F
    .param p2, "width"    # I

    .line 514
    int-to-float v0, p2

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 480
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 481
    .local v0, "m":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p2}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v1

    .line 482
    .local v1, "radius":F
    nop

    .line 483
    const v2, 0x3ecf96ed

    invoke-direct {p0, v2, p2}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v2

    .line 484
    const v3, 0x3e4fc113

    invoke-direct {p0, v3, p1}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v3

    .line 485
    const v4, 0x3ef6cf78

    invoke-direct {p0, v4, p2}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v4

    .line 486
    const v5, 0x3f8f4d78

    invoke-direct {p0, v5, p1}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v5

    .line 482
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->updateRect(FFFF)V

    .line 488
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 490
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 491
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    const/high16 v4, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 492
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 493
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, v2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 496
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    const/high16 v5, 0x42340000    # 45.0f

    invoke-virtual {v0, v5, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 497
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 498
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 499
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 500
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 501
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 502
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 503
    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, v2}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 504
    return-void
.end method

.method updateRect(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 507
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 508
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 509
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 510
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    .line 511
    return-void
.end method
