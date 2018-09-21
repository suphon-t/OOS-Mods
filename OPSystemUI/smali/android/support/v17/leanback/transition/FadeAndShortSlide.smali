.class public Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.super Landroid/transition/Visibility;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
    }
.end annotation


# static fields
.field static final sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mDistance:F

.field private mFade:Landroid/transition/Visibility;

.field private mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field final sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 81
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 95
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 109
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 125
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 132
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    const v0, 0x800003

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "slideEdge"    # I

    .line 159
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 54
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    .line 55
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    .line 139
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;-><init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 160
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setSlideEdge(I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    .line 55
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    .line 139
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;-><init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 165
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbSlide:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbSlide_lb_slideEdge:I

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 167
    .local v1, "edge":I
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setSlideEdge(I)V

    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 178
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 179
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 180
    .local v1, "position":[I
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 181
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 289
    invoke-super {p0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 193
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 194
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 195
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 196
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 186
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 187
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 188
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 189
    return-void
.end method

.method public clone()Landroid/transition/Transition;
    .locals 2

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "clone":Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    invoke-super {p0}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    .line 319
    iget-object v1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v1}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/Visibility;

    iput-object v1, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    .line 320
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method getHorizontalDistance(Landroid/view/ViewGroup;)F
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 74
    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    :goto_0
    return v0
.end method

.method getVerticalDistance(Landroid/view/ViewGroup;)F
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 78
    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    :goto_0
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 226
    move-object/from16 v13, p4

    const/4 v0, 0x0

    if-nez v13, :cond_0

    .line 227
    return-object v0

    .line 229
    :cond_0
    if-ne v11, v12, :cond_1

    .line 231
    return-object v0

    .line 233
    :cond_1
    iget-object v0, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [I

    .line 234
    .local v14, "position":[I
    const/4 v0, 0x0

    aget v15, v14, v0

    .line 235
    .local v15, "left":I
    const/4 v0, 0x1

    aget v16, v14, v0

    .line 236
    .local v16, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v17

    .line 237
    .local v17, "endX":F
    iget-object v0, v10, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    invoke-virtual {v0, v10, v11, v12, v14}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v18

    .line 238
    .local v18, "startX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v19

    .line 239
    .local v19, "endY":F
    iget-object v0, v10, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    invoke-virtual {v0, v10, v11, v12, v14}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v20

    .line 240
    .local v20, "startY":F
    sget-object v8, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, v12

    move-object v1, v13

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v18

    move/from16 v5, v20

    move/from16 v6, v17

    move/from16 v7, v19

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Landroid/support/v17/leanback/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    .line 242
    .local v0, "slideAnimator":Landroid/animation/Animator;
    iget-object v1, v10, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    move-object/from16 v2, p3

    invoke-virtual {v1, v11, v12, v2, v13}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v1

    .line 243
    .local v1, "fadeAnimator":Landroid/animation/Animator;
    if-nez v0, :cond_2

    .line 244
    return-object v1

    .line 245
    :cond_2
    if-nez v1, :cond_3

    .line 246
    return-object v0

    .line 248
    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 249
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 251
    return-object v3
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 257
    const/4 v0, 0x0

    if-nez v13, :cond_0

    .line 258
    return-object v0

    .line 260
    :cond_0
    if-ne v11, v12, :cond_1

    .line 262
    return-object v0

    .line 264
    :cond_1
    iget-object v0, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [I

    .line 265
    .local v14, "position":[I
    const/4 v0, 0x0

    aget v15, v14, v0

    .line 266
    .local v15, "left":I
    const/4 v0, 0x1

    aget v16, v14, v0

    .line 267
    .local v16, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v17

    .line 268
    .local v17, "startX":F
    iget-object v0, v10, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    invoke-virtual {v0, v10, v11, v12, v14}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v18

    .line 269
    .local v18, "endX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v19

    .line 270
    .local v19, "startY":F
    iget-object v0, v10, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    invoke-virtual {v0, v10, v11, v12, v14}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v20

    .line 271
    .local v20, "endY":F
    sget-object v8, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, v12

    move-object v1, v13

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v6, v18

    move/from16 v7, v20

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Landroid/support/v17/leanback/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    .line 274
    .local v0, "slideAnimator":Landroid/animation/Animator;
    iget-object v1, v10, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    move-object/from16 v2, p4

    invoke-virtual {v1, v11, v12, v13, v2}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v1

    .line 275
    .local v1, "fadeAnimator":Landroid/animation/Animator;
    if-nez v0, :cond_2

    .line 276
    return-object v1

    .line 277
    :cond_2
    if-nez v1, :cond_3

    .line 278
    return-object v0

    .line 280
    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 281
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 283
    return-object v3
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 294
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 295
    invoke-super {p0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 1
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .line 173
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 174
    invoke-super {p0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 175
    return-void
.end method

.method public setSlideEdge(I)V
    .locals 2
    .param p1, "slideEdge"    # I

    .line 199
    const/16 v0, 0x30

    if-eq p1, v0, :cond_5

    const/16 v0, 0x50

    if-eq p1, v0, :cond_4

    const/16 v0, 0x70

    if-eq p1, v0, :cond_3

    const v0, 0x800003

    if-eq p1, v0, :cond_2

    const v0, 0x800005

    if-eq p1, v0, :cond_1

    const v0, 0x800007

    if-ne p1, v0, :cond_0

    .line 207
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 208
    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 205
    goto :goto_0

    .line 201
    :cond_2
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 202
    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 217
    goto :goto_0

    .line 213
    :cond_4
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 214
    goto :goto_0

    .line 210
    :cond_5
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 211
    nop

    .line 221
    :goto_0
    return-void
.end method
