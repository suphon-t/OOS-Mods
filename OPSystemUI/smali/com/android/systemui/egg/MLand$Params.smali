.class Lcom/android/systemui/egg/MLand$Params;
.super Ljava/lang/Object;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field public BOOST_DV:I

.field public BUILDING_HEIGHT_MIN:I

.field public BUILDING_WIDTH_MAX:I

.field public BUILDING_WIDTH_MIN:I

.field public CLOUD_SIZE_MAX:I

.field public CLOUD_SIZE_MIN:I

.field public G:I

.field public HUD_Z:F

.field public MAX_V:I

.field public OBSTACLE_GAP:I

.field public OBSTACLE_MIN:I

.field public OBSTACLE_PERIOD:I

.field public OBSTACLE_SPACING:I

.field public OBSTACLE_STEM_WIDTH:I

.field public OBSTACLE_WIDTH:I

.field public OBSTACLE_Z:F

.field public PLAYER_HIT_SIZE:I

.field public PLAYER_SIZE:I

.field public PLAYER_Z:F

.field public PLAYER_Z_BOOST:F

.field public SCENERY_Z:F

.field public STAR_SIZE_MAX:I

.field public STAR_SIZE_MIN:I

.field public TRANSLATION_PER_SEC:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const v0, 0x7f070668

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    .line 103
    const v0, 0x7f0703bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_SPACING:I

    .line 104
    iget v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_SPACING:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    .line 105
    const v0, 0x7f07008d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    .line 106
    const v0, 0x7f070509

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    .line 107
    const v0, 0x7f07050a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    .line 108
    const v0, 0x7f0703bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    .line 109
    const v0, 0x7f0703bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    .line 110
    const v0, 0x7f0703b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    .line 111
    const v0, 0x7f0703ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    .line 112
    const v0, 0x7f070096

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_HEIGHT_MIN:I

    .line 113
    const v0, 0x7f070098

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MIN:I

    .line 114
    const v0, 0x7f070097

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    .line 115
    const v0, 0x7f07013f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MIN:I

    .line 116
    const v0, 0x7f07013e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MAX:I

    .line 117
    const v0, 0x7f0705fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MIN:I

    .line 118
    const v0, 0x7f0705f9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MAX:I

    .line 120
    const/high16 v0, 0x7f070000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->G:I

    .line 121
    const v0, 0x7f070317

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    .line 123
    const v0, 0x7f0705c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->SCENERY_Z:F

    .line 124
    const v0, 0x7f0703be

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    .line 125
    const v0, 0x7f07050b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z:F

    .line 126
    const v0, 0x7f07050c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z_BOOST:F

    .line 127
    const v0, 0x7f0701f6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->HUD_Z:F

    .line 130
    iget v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    iget v1, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    .line 131
    const-string v0, "error: obstacles might be too short, adjusting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    .line 134
    :cond_0
    return-void
.end method
