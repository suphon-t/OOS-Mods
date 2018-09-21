.class public Lcom/android/systemui/shared/recents/utilities/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAWABLE_RECT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECTF_EVALUATOR:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/Utilities$1;

    const-string v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 65
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/Utilities$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "drawableBounds"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    .line 78
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->RECTF_EVALUATOR:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    .line 79
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public static arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/util/ArraySet<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "setOut":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-object p1
.end method

.method public static cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;

    .line 210
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    .line 212
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 214
    :cond_0
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 123
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 130
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static clamp01(F)F
    .locals 2
    .param p0, "value"    # F

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static computeContrastBetweenColors(II)F
    .locals 17
    .param p0, "bg"    # I
    .param p1, "fg"    # I

    .line 175
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 176
    .local v0, "bgR":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 177
    .local v2, "bgG":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 178
    .local v3, "bgB":F
    const v4, 0x3d20e411    # 0.03928f

    cmpg-float v5, v0, v4

    const-wide v6, 0x4003333340000000L    # 2.4000000953674316

    const v8, 0x3f870a3d    # 1.055f

    const v9, 0x3d6147ae    # 0.055f

    const v10, 0x414eb852    # 12.92f

    if-gez v5, :cond_0

    div-float v5, v0, v10

    goto :goto_0

    :cond_0
    add-float v5, v0, v9

    div-float/2addr v5, v8

    float-to-double v11, v5

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v5, v11

    :goto_0
    move v0, v5

    .line 179
    cmpg-float v5, v2, v4

    if-gez v5, :cond_1

    div-float v5, v2, v10

    goto :goto_1

    :cond_1
    add-float v5, v2, v9

    div-float/2addr v5, v8

    float-to-double v11, v5

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v5, v11

    :goto_1
    move v2, v5

    .line 180
    cmpg-float v5, v3, v4

    if-gez v5, :cond_2

    div-float v5, v3, v10

    goto :goto_2

    :cond_2
    add-float v5, v3, v9

    div-float/2addr v5, v8

    float-to-double v11, v5

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v5, v11

    :goto_2
    move v3, v5

    .line 181
    const v5, 0x3e59b3d0    # 0.2126f

    mul-float v11, v5, v0

    const v12, 0x3f371759    # 0.7152f

    mul-float v13, v12, v2

    add-float/2addr v11, v13

    const v13, 0x3d93dd98    # 0.0722f

    mul-float v14, v13, v3

    add-float/2addr v11, v14

    .line 183
    .local v11, "bgL":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v1

    .line 184
    .local v14, "fgR":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v1

    .line 185
    .local v15, "fgG":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v1

    .line 186
    .local v13, "fgB":F
    cmpg-float v1, v14, v4

    if-gez v1, :cond_3

    div-float v1, v14, v10

    move/from16 v16, v13

    goto :goto_3

    :cond_3
    add-float v1, v14, v9

    div-float/2addr v1, v8

    move/from16 v16, v13

    float-to-double v12, v1

    .end local v13    # "fgB":F
    .local v16, "fgB":F
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v1, v12

    .line 187
    .end local v14    # "fgR":F
    .local v1, "fgR":F
    :goto_3
    cmpg-float v12, v15, v4

    if-gez v12, :cond_4

    div-float v12, v15, v10

    goto :goto_4

    :cond_4
    add-float v12, v15, v9

    div-float/2addr v12, v8

    float-to-double v12, v12

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    .line 188
    .end local v15    # "fgG":F
    .local v12, "fgG":F
    :goto_4
    cmpg-float v4, v16, v4

    if-gez v4, :cond_5

    div-float v13, v16, v10

    goto :goto_5

    :cond_5
    add-float v13, v16, v9

    div-float/2addr v13, v8

    float-to-double v8, v13

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v13, v6

    :goto_5
    move v4, v13

    .line 189
    .end local v16    # "fgB":F
    .local v4, "fgB":F
    mul-float/2addr v5, v1

    const v6, 0x3f371759    # 0.7152f

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    const v6, 0x3d93dd98    # 0.0722f

    mul-float v13, v6, v4

    add-float/2addr v5, v13

    .line 191
    .local v5, "fgL":F
    const v6, 0x3d4ccccd    # 0.05f

    add-float v7, v5, v6

    add-float/2addr v6, v11

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    return v6
.end method

.method public static dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2
    .param p0, "r"    # Landroid/graphics/Rect;

    .line 324
    if-nez p0, :cond_0

    .line 325
    const-string v0, "N:0,0-0,0"

    return-object v0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 87
    .local p1, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 88
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 92
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static findViewStubById(Landroid/app/Activity;I)Landroid/view/ViewStub;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "stubId"    # I

    .line 252
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public static findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "stubId"    # I

    .line 245
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public static getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getColorWithOverlay(IIF)I
    .locals 5
    .param p0, "baseColor"    # I
    .param p1, "overlayColor"    # I
    .param p2, "overlayAlpha"    # F

    .line 196
    nop

    .line 197
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p2

    .line 198
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 199
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float v3, v1, p2

    .line 200
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 201
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v1, p2

    .line 202
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 196
    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static isDescendentAccessibilityFocused(Landroid/view/View;)Z
    .locals 6
    .param p0, "v"    # Landroid/view/View;

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 275
    return v1

    .line 278
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 279
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 280
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 281
    .local v3, "childCount":I
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 282
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    return v1

    .line 281
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public static mapRange(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 147
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static removeAnimationListenersRecursive(Landroid/animation/Animator;)V
    .locals 3
    .param p0, "animator"    # Landroid/animation/Animator;

    .line 220
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 221
    move-object v0, p0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 222
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    .line 222
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 226
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 227
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/RectF;F)V
    .locals 4
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scale"    # F

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 163
    .local v0, "cx":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 164
    .local v1, "cy":F
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 165
    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 166
    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 167
    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 168
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 169
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 171
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    :cond_0
    return-void
.end method

.method public static setViewFrameFromTranslation(Landroid/view/View;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 233
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 234
    .local v0, "taskViewRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 236
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 237
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 239
    return-void
.end method

.method public static unmapRange(FFF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 156
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method
