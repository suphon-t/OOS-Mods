.class public Lcom/android/settingslib/animation/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "AppearAnimationUtils.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;,
        Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAppearing:Z

.field protected final mDelayScale:F

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

.field protected mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

.field private final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .line 49
    nop

    .line 51
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 49
    const-wide/16 v3, 0xdc

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "duration"    # J
    .param p4, "translationScaleFactor"    # F
    .param p5, "delayScaleFactor"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    invoke-direct {v0, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;)V

    iput-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    .line 56
    iput-object p6, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->appear_y_translation_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    .line 59
    iput p5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    .line 60
    iput-wide p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    .line 62
    return-void
.end method

.method private getDelays([Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    .line 133
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const-wide/16 v0, -0x1

    .line 134
    .local v0, "maxDelay":J
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 135
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 136
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    array-length v3, p1

    new-array v3, v3, [[J

    iput-object v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 137
    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    .local v0, "row":I
    .local v3, "maxDelay":J
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v1, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v5, 0x1

    new-array v5, v5, [J

    aput-object v5, v1, v0

    .line 139
    invoke-virtual {p0, v0, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v5

    .line 140
    .local v5, "delay":J
    iget-object v1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v1, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v1, v1, v0

    aput-wide v5, v1, v2

    .line 141
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 142
    move-wide v3, v5

    .line 143
    iget-object v1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 144
    iget-object v1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v0, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 137
    .end local v5    # "delay":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "row":I
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    return-object v0
.end method

.method private getDelays([[Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    .line 151
    .local p1, "items":[[Ljava/lang/Object;, "[[TT;"
    const-wide/16 v0, -0x1

    .line 152
    .local v0, "maxDelay":J
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 153
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 154
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    array-length v3, p1

    new-array v3, v3, [[J

    iput-object v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 155
    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    .local v0, "row":I
    .local v3, "maxDelay":J
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 156
    aget-object v1, p1, v0

    .line 157
    .local v1, "columns":[Ljava/lang/Object;, "[TT;"
    iget-object v5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v5, v5, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v6, v1

    new-array v6, v6, [J

    aput-object v6, v5, v0

    .line 158
    move-wide v4, v3

    move v3, v2

    .local v3, "col":I
    .local v4, "maxDelay":J
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 159
    invoke-virtual {p0, v0, v3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v6

    .line 160
    .local v6, "delay":J
    iget-object v8, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v8, v8, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v8, v8, v0

    aput-wide v6, v8, v3

    .line 161
    aget-object v8, p1, v0

    aget-object v8, v8, v3

    if-eqz v8, :cond_0

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 162
    move-wide v4, v6

    .line 163
    iget-object v8, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v3, v8, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 164
    iget-object v8, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v0, v8, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 158
    .end local v6    # "delay":J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "columns":[Ljava/lang/Object;, "[TT;"
    .end local v3    # "col":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-wide v3, v4

    goto :goto_0

    .line 168
    .end local v0    # "row":I
    .end local v4    # "maxDelay":J
    .local v3, "maxDelay":J
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    return-object v0
.end method

.method private startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 20
    .param p1, "properties"    # Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    .param p3, "finishListener"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;",
            "[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    .local p2, "objects":[Ljava/lang/Object;, "[TT;"
    .local p4, "creator":Lcom/android/settingslib/animation/AppearAnimationCreator;, "Lcom/android/settingslib/animation/AppearAnimationCreator<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 86
    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 90
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .local v3, "row":I
    :goto_0
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 91
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v4, v4, v3

    .line 92
    .local v4, "columns":[J
    aget-wide v15, v4, v2

    .line 93
    .local v15, "delay":J
    const/4 v5, 0x0

    .line 94
    .local v5, "endRunnable":Ljava/lang/Runnable;
    iget v6, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v6, v3, :cond_1

    iget v6, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-nez v6, :cond_1

    .line 95
    move-object/from16 v5, p3

    .line 97
    .end local v5    # "endRunnable":Ljava/lang/Runnable;
    .local v17, "endRunnable":Ljava/lang/Runnable;
    :cond_1
    move-object/from16 v17, v5

    iget-object v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    if-eqz v5, :cond_2

    .line 98
    iget-object v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    iget-object v6, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v6, v6

    invoke-interface {v5, v3, v6}, Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;->getRowTranslationScale(II)F

    move-result v5

    goto :goto_1

    .line 99
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    move/from16 v18, v5

    .line 100
    .local v18, "translationScale":F
    iget v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    mul-float v14, v18, v5

    .line 101
    .local v14, "translation":F
    aget-object v6, p2, v3

    iget-wide v9, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 102
    iget-boolean v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    if-eqz v5, :cond_3

    move v11, v14

    goto :goto_2

    :cond_3
    neg-float v5, v14

    move v11, v5

    :goto_2
    iget-boolean v12, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    iget-object v13, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 101
    move-object/from16 v5, p4

    move-wide v7, v15

    move/from16 v19, v14

    move-object/from16 v14, v17

    .end local v14    # "translation":F
    .local v19, "translation":F
    invoke-interface/range {v5 .. v14}, Lcom/android/settingslib/animation/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 90
    .end local v4    # "columns":[J
    .end local v15    # "delay":J
    .end local v17    # "endRunnable":Ljava/lang/Runnable;
    .end local v18    # "translationScale":F
    .end local v19    # "translation":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "row":I
    :cond_4
    return-void

    .line 87
    :cond_5
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method

.method private startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 22
    .param p1, "properties"    # Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    .param p3, "finishListener"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;",
            "[[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    .local p2, "objects":[[Ljava/lang/Object;, "[[TT;"
    .local p4, "creator":Lcom/android/settingslib/animation/AppearAnimationCreator;, "Lcom/android/settingslib/animation/AppearAnimationCreator<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 109
    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v2, v3, :cond_0

    goto :goto_4

    .line 113
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .local v3, "row":I
    :goto_0
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 114
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v4, v4, v3

    .line 115
    .local v4, "columns":[J
    iget-object v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    if-eqz v5, :cond_1

    .line 116
    iget-object v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    iget-object v6, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v6, v6

    invoke-interface {v5, v3, v6}, Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;->getRowTranslationScale(II)F

    move-result v5

    goto :goto_1

    .line 117
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 118
    .local v5, "translationScale":F
    :goto_1
    iget v6, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    mul-float/2addr v6, v5

    .line 119
    .local v6, "translation":F
    move v7, v2

    .local v7, "col":I
    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_4

    .line 120
    aget-wide v19, v4, v7

    .line 121
    .local v19, "delay":J
    const/4 v8, 0x0

    .line 122
    .local v8, "endRunnable":Ljava/lang/Runnable;
    iget v9, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v9, v3, :cond_2

    iget v9, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v9, v7, :cond_2

    .line 123
    move-object/from16 v8, p3

    .line 125
    :cond_2
    aget-object v9, p2, v3

    aget-object v10, v9, v7

    iget-wide v13, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 126
    iget-boolean v9, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    if-eqz v9, :cond_3

    move v15, v6

    goto :goto_3

    :cond_3
    neg-float v9, v6

    move v15, v9

    :goto_3
    iget-boolean v11, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    iget-object v12, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 125
    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v17, v12

    move-wide/from16 v11, v19

    move-object/from16 v18, v8

    invoke-interface/range {v9 .. v18}, Lcom/android/settingslib/animation/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 119
    .end local v8    # "endRunnable":Ljava/lang/Runnable;
    .end local v19    # "delay":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 113
    .end local v4    # "columns":[J
    .end local v5    # "translationScale":F
    .end local v6    # "translation":F
    .end local v7    # "col":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "row":I
    :cond_5
    return-void

    .line 110
    :cond_6
    :goto_4
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 111
    return-void
.end method

.method public static startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "endTranslationY"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, v1, p5}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 231
    .local v0, "translationAnimRt":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 232
    nop

    .line 233
    .local v0, "translationAnim":Landroid/animation/Animator;
    goto :goto_0

    .line 234
    .end local v0    # "translationAnim":Landroid/animation/Animator;
    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v2, v3

    aput p5, v2, v1

    .line 234
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 237
    .restart local v0    # "translationAnim":Landroid/animation/Animator;
    :goto_0
    invoke-virtual {v0, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 239
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 240
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 241
    return-void
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 172
    mul-int/lit8 v0, p1, 0x28

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double v4, p1

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "endRunnable"    # Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 186
    move-object/from16 v9, p9

    if-eqz v8, :cond_7

    .line 187
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p7, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    .line 188
    if-eqz p7, :cond_1

    move/from16 v3, p6

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v8, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 190
    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v10, v1

    .line 191
    .local v10, "targetAlpha":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_3

    .line 192
    new-instance v1, Landroid/view/RenderNodeAnimator;

    const/16 v4, 0xb

    invoke-direct {v1, v4, v10}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 194
    .local v1, "alphaAnimRt":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, v8}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 195
    nop

    .line 196
    .local v1, "alphaAnim":Landroid/animation/Animator;
    goto :goto_3

    .line 197
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    :cond_3
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v10, v4, v5

    invoke-static {v8, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "alphaAnim":Landroid/animation/Animator;
    :goto_3
    move-object v11, v1

    .line 199
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .local v11, "alphaAnim":Landroid/animation/Animator;
    move-object/from16 v12, p8

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    move-wide/from16 v13, p4

    invoke-virtual {v11, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 201
    move-wide/from16 v6, p2

    invoke-virtual {v11, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v8, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 204
    new-instance v1, Lcom/android/settingslib/animation/AppearAnimationUtils$1;

    invoke-direct {v1, v0, v8}, Lcom/android/settingslib/animation/AppearAnimationUtils$1;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Landroid/view/View;)V

    invoke-virtual {v11, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    :cond_4
    if-eqz v9, :cond_5

    .line 212
    new-instance v1, Lcom/android/settingslib/animation/AppearAnimationUtils$2;

    invoke-direct {v1, v0, v9}, Lcom/android/settingslib/animation/AppearAnimationUtils$2;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    :cond_5
    invoke-virtual {v11}, Landroid/animation/Animator;->start()V

    .line 220
    if-eqz p7, :cond_6

    move v15, v2

    goto :goto_4

    :cond_6
    move/from16 v15, p6

    :goto_4
    move-object v1, v8

    move-wide v2, v6

    move-wide v4, v13

    move v6, v15

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .end local v10    # "targetAlpha":F
    .end local v11    # "alphaAnim":Landroid/animation/Animator;
    goto :goto_5

    .line 223
    :cond_7
    move-wide/from16 v13, p4

    move-object/from16 v12, p8

    :goto_5
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10

    .line 36
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getStartTranslation()F
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    return v0
.end method

.method public startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "objects"    # [Landroid/view/View;
    .param p2, "finishListener"    # Ljava/lang/Runnable;

    .line 69
    invoke-virtual {p0, p1, p2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 70
    return-void
.end method

.method public startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 1
    .param p2, "finishListener"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    .local p1, "objects":[Ljava/lang/Object;, "[TT;"
    .local p3, "creator":Lcom/android/settingslib/animation/AppearAnimationCreator;, "Lcom/android/settingslib/animation/AppearAnimationCreator<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getDelays([Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    .line 81
    .local v0, "properties":Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 82
    return-void
.end method

.method public startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "objects"    # [[Landroid/view/View;
    .param p2, "finishListener"    # Ljava/lang/Runnable;

    .line 65
    invoke-virtual {p0, p1, p2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 66
    return-void
.end method

.method public startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 1
    .param p2, "finishListener"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    .local p1, "objects":[[Ljava/lang/Object;, "[[TT;"
    .local p3, "creator":Lcom/android/settingslib/animation/AppearAnimationCreator;, "Lcom/android/settingslib/animation/AppearAnimationCreator<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getDelays([[Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    .line 75
    .local v0, "properties":Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 76
    return-void
.end method
