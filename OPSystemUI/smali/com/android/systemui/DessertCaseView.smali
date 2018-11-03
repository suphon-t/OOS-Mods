.class public Lcom/android/systemui/DessertCaseView;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DessertCaseView$RescalingContainer;
    }
.end annotation


# static fields
.field private static final ALPHA_MASK:[F

.field private static final MASK:[F

.field private static final NUM_PASTRIES:I

.field private static final PASTRIES:[I

.field private static final RARE_PASTRIES:[I

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE_MASK:[F

.field private static final XRARE_PASTRIES:[I

.field private static final XXRARE_PASTRIES:[I


# instance fields
.field hsv:[F

.field private mCellSize:I

.field private mCells:[Landroid/view/View;

.field private mColumns:I

.field private mDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mJuggle:Ljava/lang/Runnable;

.field private mRows:I

.field private mStarted:Z

.field private mWidth:I

.field private final tmpSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-class v0, Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    .line 95
    sget-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    array-length v0, v0

    sget-object v1, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    .line 100
    const/16 v0, 0x14

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/systemui/DessertCaseView;->MASK:[F

    .line 107
    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    .line 114
    new-array v0, v0, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/DessertCaseView;->WHITE_MASK:[F

    return-void

    :array_0
    .array-data 4
        0x7f0801df
        0x7f0801d1
    .end array-data

    :array_1
    .array-data 4
        0x7f0801d2
        0x7f0801d4
        0x7f0801d6
        0x7f0801d8
        0x7f0801d9
        0x7f0801da
        0x7f0801db
        0x7f0801dd
    .end array-data

    :array_2
    .array-data 4
        0x7f0801e0
        0x7f0801d5
        0x7f0801d7
        0x7f0801de
    .end array-data

    :array_3
    .array-data 4
        0x7f0801e1
        0x7f0801d3
        0x7f0801dc
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    move-object v0, p0

    .line 166
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v1, Landroid/util/SparseArray;

    sget v2, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    .line 134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 136
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v1, Lcom/android/systemui/DessertCaseView$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/DessertCaseView$1;-><init>(Lcom/android/systemui/DessertCaseView;)V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    .line 227
    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, v0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    .line 351
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    .line 168
    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 170
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 172
    const v4, 0x7f07019b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 173
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v5, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    const/4 v6, 0x2

    const/16 v7, 0x200

    if-ge v5, v7, :cond_0

    .line 175
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 177
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 178
    const/4 v7, 0x0

    .line 179
    .local v7, "loaded":Landroid/graphics/Bitmap;
    const/4 v8, 0x4

    new-array v8, v8, [[I

    sget-object v9, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    aput-object v9, v8, v3

    sget-object v9, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    aput-object v9, v8, v5

    sget-object v5, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    aput-object v5, v8, v6

    sget-object v5, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    aput-object v5, v8, v1

    array-length v1, v8

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v6, v8, v5

    .line 180
    .local v6, "list":[I
    array-length v9, v6

    move-object v10, v7

    move v7, v3

    .end local v7    # "loaded":Landroid/graphics/Bitmap;
    .local v10, "loaded":Landroid/graphics/Bitmap;
    :goto_1
    if-ge v7, v9, :cond_1

    aget v11, v6, v7

    .line 181
    .local v11, "resid":I
    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 182
    invoke-static {v2, v11, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 183
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v10}, Lcom/android/systemui/DessertCaseView;->convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v12, v2, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 184
    .local v12, "d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v14, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    invoke-direct {v13, v14}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 185
    iget v13, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v14, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    invoke-virtual {v12, v3, v3, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 186
    iget-object v13, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 180
    .end local v11    # "resid":I
    .end local v12    # "d":Landroid/graphics/drawable/BitmapDrawable;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 179
    .end local v6    # "list":[I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object v7, v10

    goto :goto_0

    .line 189
    .end local v10    # "loaded":Landroid/graphics/Bitmap;
    .restart local v7    # "loaded":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    .line 191
    .end local v7    # "loaded":Landroid/graphics/Bitmap;
    .local v1, "loaded":Landroid/graphics/Bitmap;
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/DessertCaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/DessertCaseView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/DessertCaseView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 197
    .local v2, "pt":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/DessertCaseView;->MASK:[F

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    return-object v0
.end method

.method static frand()F
    .locals 2

    .line 473
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static frand(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 477
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method private getOccupied(Landroid/view/View;)[Landroid/graphics/Point;
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .line 458
    const v0, 0x2000002

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 459
    .local v0, "scale":I
    const v1, 0x2000001

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 460
    .local v1, "pt":Landroid/graphics/Point;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    .line 462
    :cond_0
    mul-int v3, v0, v0

    new-array v3, v3, [Landroid/graphics/Point;

    .line 463
    .local v3, "result":[Landroid/graphics/Point;
    const/4 v4, 0x0

    .line 464
    .local v4, "p":I
    move v5, v4

    move v4, v2

    .local v4, "i":I
    .local v5, "p":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 465
    move v6, v5

    move v5, v2

    .local v5, "j":I
    .local v6, "p":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 466
    add-int/lit8 v7, v6, 0x1

    .local v7, "p":I
    new-instance v8, Landroid/graphics/Point;

    iget v9, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v4

    iget v10, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v5

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v3, v6

    .line 465
    .end local v6    # "p":I
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_1

    .line 464
    .end local v5    # "j":I
    .end local v7    # "p":I
    .restart local v6    # "p":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    .line 469
    .end local v4    # "i":I
    .end local v6    # "p":I
    .local v5, "p":I
    :cond_2
    return-object v3

    .line 460
    .end local v3    # "result":[Landroid/graphics/Point;
    .end local v5    # "p":I
    :cond_3
    :goto_2
    new-array v2, v2, [Landroid/graphics/Point;

    return-object v2
.end method

.method static irand(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 481
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/DessertCaseView;->frand(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private final makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 338
    new-instance v0, Lcom/android/systemui/DessertCaseView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DessertCaseView$3;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public fillFreeList()V
    .locals 1

    .line 276
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 277
    return-void
.end method

.method public declared-synchronized fillFreeList(I)V
    .locals 13
    .param p1, "animationLen"    # I

    monitor-enter p0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 283
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 284
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 285
    .local v2, "pt":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 286
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 287
    .local v3, "i":I
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 289
    .local v4, "j":I
    iget-object v5, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .end local v2    # "pt":Landroid/graphics/Point;
    .end local v3    # "i":I
    .end local v4    # "j":I
    goto :goto_0

    .line 290
    .restart local v2    # "pt":Landroid/graphics/Point;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_0
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 291
    .local v5, "v":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/systemui/DessertCaseView$2;

    invoke-direct {v6, p0, v5}, Lcom/android/systemui/DessertCaseView$2;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->random_color()I

    move-result v6

    .line 300
    .local v6, "c":I
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 302
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v7

    .line 304
    .local v7, "which":F
    const v8, 0x3a03126f    # 5.0E-4f

    cmpg-float v8, v7, v8

    const/high16 v9, 0x3f000000    # 0.5f

    if-gez v8, :cond_1

    .line 305
    iget-object v8, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v10, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    .local v8, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    goto :goto_2

    .line 306
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v8, 0x3ba3d70a    # 0.005f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    .line 307
    iget-object v8, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v10, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 308
    :cond_2
    cmpg-float v8, v7, v9

    if-gez v8, :cond_3

    .line 309
    iget-object v8, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v10, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 310
    :cond_3
    const v8, 0x3f333333    # 0.7f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4

    .line 311
    iget-object v8, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v10, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 313
    :cond_4
    const/4 v8, 0x0

    .line 315
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v8, :cond_5

    .line 316
    invoke-virtual {v5}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_5
    iget v10, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 320
    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/DessertCaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    const/4 v10, 0x0

    invoke-virtual {p0, v5, v2, v10}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 322
    if-lez p1, :cond_6

    .line 323
    const v10, 0x2000002

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    .line 324
    .local v10, "s":F
    mul-float v11, v9, v10

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 325
    mul-float/2addr v9, v10

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 326
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 327
    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    int-to-long v11, p1

    invoke-virtual {v9, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .end local v2    # "pt":Landroid/graphics/Point;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "v":Landroid/widget/ImageView;
    .end local v6    # "c":I
    .end local v7    # "which":F
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "s":F
    :cond_6
    goto/16 :goto_0

    .line 330
    :cond_7
    monitor-exit p0

    return-void

    .line 279
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local p1    # "animationLen":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/DessertCaseView;
    throw p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 486
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 487
    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 238
    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 241
    .local v0, "wasStarted":Z
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->stop()V

    .line 245
    :cond_1
    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    .line 246
    iput p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->removeAllViewsInLayout()V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 252
    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 253
    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 255
    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v1, v2

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 259
    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p0, v1}, Lcom/android/systemui/DessertCaseView;->setScaleX(F)V

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/systemui/DessertCaseView;->setScaleY(F)V

    .line 261
    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/android/systemui/DessertCaseView;->setTranslationX(F)V

    .line 262
    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v5, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v3, v2

    mul-float/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setTranslationY(F)V

    .line 264
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    if-ge v2, v3, :cond_3

    .line 265
    move v3, v1

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    if-ge v3, v4, :cond_2

    .line 266
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "j":I
    :cond_3
    if-eqz v0, :cond_4

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_4
    monitor-exit p0

    return-void

    .line 236
    .end local v0    # "wasStarted":Z
    .end local p1    # "w":I
    .end local p2    # "h":I
    .end local p3    # "oldw":I
    .end local p4    # "oldh":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/DessertCaseView;
    throw p1
.end method

.method pick([I)I
    .locals 4
    .param p1, "a"    # [I

    .line 216
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, p1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    aget v0, p1, v0

    return v0
.end method

.method public declared-synchronized place(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pt"    # Landroid/graphics/Point;
    .param p3, "animate"    # Z

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 353
    :try_start_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 354
    .local v3, "i":I
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 355
    .local v4, "j":I
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v5

    .line 356
    .local v5, "rnd":F
    const v6, 0x2000001

    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 357
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v12, v7, v11

    .line 358
    .local v12, "oc":Landroid/graphics/Point;
    iget-object v13, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v13, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v14, v12, Landroid/graphics/Point;->y:I

    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v14, v9

    iget v9, v12, Landroid/graphics/Point;->x:I

    add-int/2addr v14, v9

    aput-object v8, v13, v14

    .line 357
    .end local v12    # "oc":Landroid/graphics/Point;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 362
    :cond_0
    const/4 v7, 0x1

    .line 363
    .local v7, "scale":I
    const v9, 0x3c23d70a    # 0.01f

    cmpg-float v9, v5, v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-gez v9, :cond_1

    .line 364
    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v9, v10

    if-ge v3, v9, :cond_3

    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v9, v10

    if-ge v4, v9, :cond_3

    .line 365
    const/4 v7, 0x4

    goto :goto_1

    .line 367
    :cond_1
    const v9, 0x3dcccccd    # 0.1f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    .line 368
    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v9, v11

    if-ge v3, v9, :cond_3

    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v9, v11

    if-ge v4, v9, :cond_3

    .line 369
    const/4 v7, 0x3

    goto :goto_1

    .line 371
    :cond_2
    const v9, 0x3ea8f5c3    # 0.33f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    .line 372
    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v9, v12

    if-eq v3, v9, :cond_3

    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v9, v12

    if-eq v4, v9, :cond_3

    .line 373
    const/4 v7, 0x2

    .line 377
    :cond_3
    :goto_1
    invoke-virtual {v0, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 378
    const v9, 0x2000002

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v9, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 380
    iget-object v9, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 382
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v9

    .line 383
    .local v9, "occupied":[Landroid/graphics/Point;
    array-length v13, v9

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_5

    aget-object v15, v9, v14

    move-object/from16 v16, v15

    .line 384
    .local v16, "oc":Landroid/graphics/Point;
    iget-object v10, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v12, v16

    iget v11, v12, Landroid/graphics/Point;->y:I

    .end local v16    # "oc":Landroid/graphics/Point;
    .restart local v12    # "oc":Landroid/graphics/Point;
    iget v6, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v11, v6

    iget v6, v12, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v6

    aget-object v6, v10, v11

    .line 385
    .local v6, "squatter":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 386
    iget-object v10, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v6    # "squatter":Landroid/view/View;
    .end local v12    # "oc":Landroid/graphics/Point;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    const v6, 0x2000001

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto :goto_2

    .line 390
    :cond_5
    iget-object v6, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 391
    .local v10, "squatter":Landroid/view/View;
    invoke-direct {v1, v10}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v13

    array-length v14, v13

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v14, :cond_6

    aget-object v12, v13, v11

    .line 392
    .local v12, "sq":Landroid/graphics/Point;
    iget-object v8, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v8, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v2, v12, Landroid/graphics/Point;->y:I

    move/from16 v17, v5

    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .end local v5    # "rnd":F
    .local v17, "rnd":F
    mul-int/2addr v2, v5

    iget v5, v12, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v5

    const/4 v5, 0x0

    aput-object v5, v8, v2

    .line 391
    .end local v12    # "sq":Landroid/graphics/Point;
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v17

    move-object/from16 v2, p2

    const/4 v8, 0x0

    goto :goto_4

    .line 395
    .end local v17    # "rnd":F
    .restart local v5    # "rnd":F
    :cond_6
    move/from16 v17, v5

    .end local v5    # "rnd":F
    .restart local v17    # "rnd":F
    if-eq v10, v0, :cond_8

    .line 396
    const v2, 0x2000001

    const/4 v5, 0x0

    invoke-virtual {v10, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 397
    if-eqz p3, :cond_7

    .line 398
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 399
    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 400
    const-wide/16 v11, 0x1f4

    invoke-virtual {v8, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 401
    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v11, Lcom/android/systemui/DessertCaseView$4;

    invoke-direct {v11, v1, v10}, Lcom/android/systemui/DessertCaseView$4;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    .line 402
    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 410
    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    .line 412
    :cond_7
    invoke-virtual {v1, v10}, Lcom/android/systemui/DessertCaseView;->removeView(Landroid/view/View;)V

    .end local v10    # "squatter":Landroid/view/View;
    goto :goto_5

    .line 415
    :cond_8
    const v2, 0x2000001

    const/4 v5, 0x0

    .line 390
    :goto_5
    move-object v8, v5

    move/from16 v5, v17

    move-object/from16 v2, p2

    goto :goto_3

    .line 417
    .end local v17    # "rnd":F
    .restart local v5    # "rnd":F
    :cond_9
    move/from16 v17, v5

    .end local v5    # "rnd":F
    .restart local v17    # "rnd":F
    array-length v2, v9

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_a

    aget-object v6, v9, v5

    .line 418
    .local v6, "oc":Landroid/graphics/Point;
    iget-object v8, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v10, v6, Landroid/graphics/Point;->y:I

    iget v11, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v10, v11

    iget v11, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v11

    aput-object v0, v8, v10

    .line 419
    iget-object v8, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 417
    .end local v6    # "oc":Landroid/graphics/Point;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 422
    :cond_a
    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x42b40000    # 90.0f

    mul-float/2addr v2, v5

    .line 424
    .local v2, "rot":F
    if-eqz p3, :cond_b

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    .line 427
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 428
    .local v5, "set1":Landroid/animation/AnimatorSet;
    const/4 v6, 0x2

    new-array v8, v6, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v11, v10, [F

    int-to-float v10, v7

    const/4 v12, 0x0

    aput v10, v11, v12

    .line 429
    invoke-static {v0, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v8, v12

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v11, v10, [F

    int-to-float v13, v7

    aput v13, v11, v12

    .line 430
    invoke-static {v0, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v8, v10

    .line 428
    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 432
    new-instance v6, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 433
    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 435
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 436
    .local v6, "set2":Landroid/animation/AnimatorSet;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    sget-object v10, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v12, v11, [F

    const/4 v11, 0x0

    aput v2, v12, v11

    .line 437
    invoke-static {v0, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v11

    sget-object v10, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v12, v11, [F

    iget v11, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v11, v3

    add-int/lit8 v13, v7, -0x1

    iget v14, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v13, v14

    const/4 v14, 0x2

    div-int/2addr v13, v14

    add-int/2addr v11, v13

    int-to-float v11, v11

    const/4 v13, 0x0

    aput v11, v12, v13

    .line 438
    invoke-static {v0, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v8, v11

    sget-object v10, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v11, v11, [F

    iget v12, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v12, v4

    add-int/lit8 v13, v7, -0x1

    iget v14, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v13, v14

    const/4 v14, 0x2

    div-int/2addr v13, v14

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 439
    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v14

    .line 436
    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 441
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 442
    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 444
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 447
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 448
    .end local v5    # "set1":Landroid/animation/AnimatorSet;
    .end local v6    # "set2":Landroid/animation/AnimatorSet;
    goto :goto_7

    .line 449
    :cond_b
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v5, v3

    add-int/lit8 v6, v7, -0x1

    iget v8, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v6, v8

    const/4 v8, 0x2

    div-int/2addr v6, v8

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    .line 450
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v5, v4

    add-int/lit8 v6, v7, -0x1

    iget v8, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v6, v8

    const/4 v8, 0x2

    div-int/2addr v6, v8

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setY(F)V

    .line 451
    int-to-float v5, v7

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 452
    int-to-float v5, v7

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 453
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :goto_7
    monitor-exit p0

    return-void

    .line 352
    .end local v2    # "rot":F
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v7    # "scale":I
    .end local v9    # "occupied":[Landroid/graphics/Point;
    .end local v17    # "rnd":F
    .end local p1    # "v":Landroid/view/View;
    .end local p2    # "pt":Landroid/graphics/Point;
    .end local p3    # "animate":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/DessertCaseView;
    throw v0
.end method

.method public place(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 333
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    invoke-static {v2, v3}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 334
    return-void
.end method

.method random_color()I
    .locals 5

    .line 230
    const/16 v0, 0xc

    .line 231
    .local v0, "COLORS":I
    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 232
    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public start()V
    .locals 4

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 205
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    return-void
.end method

.method public stop()V
    .locals 2

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 212
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method
