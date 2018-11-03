.class public Lcom/android/settingslib/animation/DisappearAnimationUtils;
.super Lcom/android/settingslib/animation/AppearAnimationUtils;
.source "DisappearAnimationUtils.java"


# static fields
.field private static final ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/animation/DisappearAnimationUtils$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;->ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "duration"    # J
    .param p4, "translationScaleFactor"    # F
    .param p5, "delayScaleFactor"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 36
    sget-object v7, Lcom/android/settingslib/animation/DisappearAnimationUtils;->ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "duration"    # J
    .param p4, "translationScaleFactor"    # F
    .param p5, "delayScaleFactor"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p7, "rowScaler"    # Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    .line 43
    iput-object p7, p0, Lcom/android/settingslib/animation/DisappearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/animation/DisappearAnimationUtils;->mAppearing:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 48
    mul-int/lit8 v0, p1, 0x3c

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double v4, p1

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/settingslib/animation/DisappearAnimationUtils;->mDelayScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method
