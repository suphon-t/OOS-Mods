.class Lcom/android/systemui/egg/MLand$Player;
.super Landroid/widget/ImageView;
.source "MLand.java"

# interfaces
.implements Lcom/android/systemui/egg/MLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Player"
.end annotation


# static fields
.field static sNextColor:I


# instance fields
.field public color:I

.field public final corners:[F

.field public dv:F

.field private mAlive:Z

.field private mBoosting:Z

.field private mLand:Lcom/android/systemui/egg/MLand;

.field private mScore:I

.field private mScoreField:Landroid/widget/TextView;

.field private mTouchX:F

.field private mTouchY:F

.field private final sColors:[I

.field private final sHull:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1028
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/egg/MLand$Player;->sNextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1088
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1014
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    .line 1019
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->sColors:[I

    .line 1030
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    .line 1090
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setBackgroundResource(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->sColors:[I

    sget v1, Lcom/android/systemui/egg/MLand$Player;->sNextColor:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/systemui/egg/MLand$Player;->sNextColor:I

    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Player;->sColors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    .line 1093
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1094
    new-instance v0, Lcom/android/systemui/egg/MLand$Player$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/MLand$Player$1;-><init>(Lcom/android/systemui/egg/MLand$Player;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1104
    return-void

    :array_0
    .array-data 4
        -0x24bbc9
        -0xc48719
        -0xb4c00
        -0xf062a8
        -0x84e780
        -0x616162
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
        0x3f333333    # 0.7f
        0x0
        0x3f6b851f    # 0.92f
        0x3ea8f5c3    # 0.33f
        0x3f6b851f    # 0.92f
        0x3f400000    # 0.75f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3da3d70a    # 0.08f
        0x3f400000    # 0.75f
        0x3da3d70a    # 0.08f
        0x3ea8f5c3    # 0.33f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand$Player;

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/egg/MLand$Player;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand$Player;

    .line 1009
    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/egg/MLand$Player;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand$Player;

    .line 1009
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/egg/MLand$Player;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand$Player;
    .param p1, "x1"    # I

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/systemui/egg/MLand$Player;->addScore(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/egg/MLand$Player;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand$Player;

    .line 1009
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/egg/MLand$Player;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand$Player;

    .line 1009
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    return v0
.end method

.method private addScore(I)V
    .locals 1
    .param p1, "incr"    # I

    .line 1063
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    .line 1064
    return-void
.end method

.method public static create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;
    .locals 4
    .param p0, "land"    # Lcom/android/systemui/egg/MLand;

    .line 1043
    new-instance v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$Player;-><init>(Landroid/content/Context;)V

    .line 1044
    .local v0, "p":Lcom/android/systemui/egg/MLand$Player;
    iput-object p0, v0, Lcom/android/systemui/egg/MLand$Player;->mLand:Lcom/android/systemui/egg/MLand;

    .line 1045
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    .line 1046
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    .line 1047
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    return-object v0
.end method

.method private setScore(I)V
    .locals 2
    .param p1, "score"    # I

    .line 1052
    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    sget-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v1, :cond_0

    const-string v1, "??"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    :cond_1
    return-void
.end method


# virtual methods
.method public below(I)Z
    .locals 6
    .param p1, "h"    # I

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 1120
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1121
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget v3, v3, v4

    float-to-int v3, v3

    .line 1122
    .local v3, "y":I
    if-lt v3, p1, :cond_0

    return v5

    .line 1120
    .end local v3    # "y":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1124
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public boost()V
    .locals 4

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    .line 1158
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1160
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1161
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1162
    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1163
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1164
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z_BOOST:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1165
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1166
    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setScaleX(F)V

    .line 1167
    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setScaleY(F)V

    .line 1168
    return-void
.end method

.method public boost(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1151
    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    .line 1152
    iput p2, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    .line 1153
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->boost()V

    .line 1154
    return-void
.end method

.method public die()V
    .locals 1

    .line 1183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    .line 1189
    return-void
.end method

.method public getScore()I
    .locals 1

    .line 1059
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    return v0
.end method

.method public prepareCheckIntersections()V
    .locals 9

    .line 1107
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1108
    .local v0, "inset":I
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    .line 1109
    .local v1, "scale":I
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 1110
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1111
    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v5, v3, 0x2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    mul-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    mul-float/2addr v6, v7

    int-to-float v7, v0

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 1112
    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v6, v7

    int-to-float v7, v0

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 1110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1114
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 1115
    .local v3, "m":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1116
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->access$1200(Lcom/android/systemui/egg/MLand;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1079
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    .line 1080
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1078
    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setY(F)V

    .line 1081
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    .line 1082
    iget-object v1, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setScoreField(Landroid/widget/TextView;)V

    .line 1083
    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    .line 1084
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1085
    return-void
.end method

.method public setScoreField(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;

    .line 1067
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    .line 1068
    if-eqz p1, :cond_1

    .line 1069
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    invoke-static {v1}, Lcom/android/systemui/egg/MLand;->access$1100(I)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1074
    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    .line 1193
    return-void
.end method

.method public step(JJFF)V
    .locals 5
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J
    .param p5, "t"    # F
    .param p6, "dt"    # F

    .line 1128
    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    if-nez v0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getTranslationX()F

    move-result v0

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    mul-float/2addr v1, p6

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setTranslationX(F)V

    .line 1131
    return-void

    .line 1134
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    if-eqz v0, :cond_1

    .line 1135
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    goto :goto_0

    .line 1137
    :cond_1
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->G:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1139
    :goto_0
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    goto :goto_1

    .line 1140
    :cond_2
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1142
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    mul-float/2addr v1, p6

    add-float/2addr v0, v1

    .line 1143
    .local v0, "y":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setTranslationY(F)V

    .line 1144
    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1145
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float v2, v2

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/egg/MLand;->rlerp(FFF)F

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/egg/MLand;->clamp(F)F

    move-result v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v1, v3, v2}, Lcom/android/systemui/egg/MLand;->lerp(FFF)F

    move-result v1

    add-float/2addr v3, v1

    .line 1144
    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand$Player;->setRotation(F)V

    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->prepareCheckIntersections()V

    .line 1148
    return-void
.end method

.method public unboost()V
    .locals 3

    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    .line 1172
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    .line 1174
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1175
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1176
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1178
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1179
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1180
    return-void
.end method
