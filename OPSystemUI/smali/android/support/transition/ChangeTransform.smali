.class public Landroid/support/transition/ChangeTransform;
.super Landroid/support/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroid/support/transition/ChangeTransform$GhostListener;,
        Landroid/support/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const-string v0, "android:changeTransform:matrix"

    const-string v1, "android:changeTransform:transforms"

    const-string v2, "android:changeTransform:parentMatrix"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/support/transition/ChangeTransform$1;

    const-class v1, [F

    const-string v2, "nonTranslations"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 84
    new-instance v0, Landroid/support/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "translations"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 103
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 103
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 104
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 111
    sget-object v1, Landroid/support/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 112
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "reparentWithOverlay"

    invoke-static {v1, v2, v3, v0, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 114
    move-object v2, p2

    check-cast v2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "reparent"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 116
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Landroid/support/transition/ChangeTransform;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/transition/ChangeTransform;

    .line 48
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .line 48
    invoke-static {p0}, Landroid/support/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # F
    .param p8, "x8"    # F

    .line 48
    invoke-static/range {p0 .. p8}, Landroid/support/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 193
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 194
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Landroid/support/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Landroid/support/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 199
    .local v1, "transforms":Landroid/support/transition/ChangeTransform$Transforms;
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 201
    .local v2, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v2, v3

    goto :goto_1

    .line 202
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 206
    :goto_1
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-boolean v3, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    if-eqz v3, :cond_3

    .line 208
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 210
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-static {v4, v3}, Landroid/support/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 211
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 212
    iget-object v5, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:parentMatrix"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v5, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:intermediateMatrix"

    sget v7, Landroid/support/transition/R$id;->transition_transform:I

    .line 214
    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 213
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v5, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:intermediateParentMatrix"

    sget v7, Landroid/support/transition/R$id;->parent_matrix:I

    .line 216
    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 215
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v3    # "parentMatrix":Landroid/graphics/Matrix;
    .end local v4    # "parent":Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 384
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 386
    .local v0, "view":Landroid/view/View;
    iget-object v1, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 387
    .local v1, "endMatrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 388
    .local v2, "localEndMatrix":Landroid/graphics/Matrix;
    invoke-static {p1, v2}, Landroid/support/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 390
    invoke-static {v0, p1, v2}, Landroid/support/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;

    move-result-object v3

    .line 391
    .local v3, "ghostView":Landroid/support/transition/GhostViewImpl;
    if-nez v3, :cond_0

    .line 392
    return-void

    .line 395
    :cond_0
    iget-object v4, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v3, v4, v5}, Landroid/support/transition/GhostViewImpl;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 398
    move-object v4, p0

    .line 399
    .local v4, "outerTransition":Landroid/support/transition/Transition;
    :goto_0
    iget-object v5, v4, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v5, :cond_1

    .line 400
    iget-object v4, v4, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    goto :goto_0

    .line 403
    :cond_1
    new-instance v5, Landroid/support/transition/ChangeTransform$GhostListener;

    invoke-direct {v5, v0, v3}, Landroid/support/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroid/support/transition/GhostViewImpl;)V

    .line 404
    .local v5, "listener":Landroid/support/transition/ChangeTransform$GhostListener;
    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 408
    sget-boolean v6, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz v6, :cond_3

    .line 409
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v7, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v6, v7, :cond_2

    .line 410
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 412
    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 414
    :cond_3
    return-void
.end method

.method private createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 20
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "handleParentChange"    # Z

    move-object/from16 v0, p2

    .line 282
    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 283
    .local v2, "startMatrix":Landroid/graphics/Matrix;
    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 285
    .local v3, "endMatrix":Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 286
    sget-object v2, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 289
    :cond_0
    if-nez v3, :cond_1

    .line 290
    sget-object v3, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 293
    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    const/4 v4, 0x0

    return-object v4

    .line 297
    :cond_2
    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:transforms"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/support/transition/ChangeTransform$Transforms;

    .line 300
    .local v11, "transforms":Landroid/support/transition/ChangeTransform$Transforms;
    iget-object v12, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 301
    .local v12, "view":Landroid/view/View;
    invoke-static {v12}, Landroid/support/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 303
    const/16 v4, 0x9

    new-array v13, v4, [F

    .line 304
    .local v13, "startMatrixValues":[F
    invoke-virtual {v2, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 305
    new-array v14, v4, [F

    .line 306
    .local v14, "endMatrixValues":[F
    invoke-virtual {v3, v14}, Landroid/graphics/Matrix;->getValues([F)V

    .line 307
    new-instance v5, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v5, v12, v13}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    move-object v15, v5

    .line 310
    .local v15, "pathAnimatorMatrix":Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;
    sget-object v5, Landroid/support/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v6, Landroid/support/transition/FloatArrayEvaluator;

    new-array v4, v4, [F

    invoke-direct {v6, v4}, Landroid/support/transition/FloatArrayEvaluator;-><init>([F)V

    const/4 v4, 0x2

    new-array v7, v4, [[F

    const/4 v8, 0x0

    aput-object v13, v7, v8

    const/4 v9, 0x1

    aput-object v14, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 313
    .local v16, "valuesProperty":Landroid/animation/PropertyValuesHolder;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeTransform;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v5

    aget v6, v13, v4

    const/4 v7, 0x5

    aget v10, v13, v7

    aget v9, v14, v4

    aget v7, v14, v7

    invoke-virtual {v5, v6, v10, v9, v7}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v10

    .line 316
    .local v10, "path":Landroid/graphics/Path;
    sget-object v5, Landroid/support/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    invoke-static {v5, v10}, Landroid/support/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 318
    .local v18, "translationProperty":Landroid/animation/PropertyValuesHolder;
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v16, v4, v8

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 321
    .local v9, "animator":Landroid/animation/ObjectAnimator;
    move-object v7, v3

    .line 323
    .local v7, "finalEndMatrix":Landroid/graphics/Matrix;
    new-instance v17, Landroid/support/transition/ChangeTransform$3;

    move-object/from16 v4, v17

    move-object/from16 v5, p0

    move/from16 v6, p3

    move-object v8, v12

    move-object v0, v9

    move-object v9, v11

    .end local v9    # "animator":Landroid/animation/ObjectAnimator;
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v19, v10

    move-object v10, v15

    .end local v10    # "path":Landroid/graphics/Path;
    .local v19, "path":Landroid/graphics/Path;
    invoke-direct/range {v4 .. v10}, Landroid/support/transition/ChangeTransform$3;-><init>(Landroid/support/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/support/transition/ChangeTransform$Transforms;Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 364
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 365
    invoke-static {v0, v4}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 366
    return-object v0
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/ViewGroup;
    .param p2, "endParent"    # Landroid/view/ViewGroup;

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "parentsMatch":Z
    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Landroid/support/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0, p1, v3}, Landroid/support/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v1

    .line 375
    .local v1, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v1, :cond_4

    .line 376
    iget-object v4, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_1

    move v2, v3

    nop

    :cond_1
    move v0, v2

    .end local v1    # "endValues":Landroid/support/transition/TransitionValues;
    goto :goto_1

    .line 372
    :cond_2
    :goto_0
    if-ne p1, p2, :cond_3

    move v2, v3

    nop

    :cond_3
    move v0, v2

    .line 379
    :cond_4
    :goto_1
    return v0
.end method

.method private static setIdentityTransforms(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .line 436
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 437
    return-void
.end method

.method private setMatricesForParent(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V
    .locals 5
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 417
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 418
    .local v0, "endParentMatrix":Landroid/graphics/Matrix;
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v2, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 420
    iget-object v1, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 421
    .local v1, "toLocal":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 422
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 424
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 425
    .local v2, "startLocal":Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 426
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v3

    .line 427
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_0
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:parentMatrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 431
    .local v3, "startParentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 432
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 433
    return-void
.end method

.method private static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    .line 442
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 443
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 444
    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 445
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 446
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 447
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 448
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 449
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    .line 450
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 234
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 235
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 222
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 223
    sget-boolean v0, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 230
    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 240
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 242
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 246
    :cond_0
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 247
    .local v0, "startParent":Landroid/view/ViewGroup;
    iget-object v1, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 248
    .local v1, "endParent":Landroid/view/ViewGroup;
    iget-boolean v2, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Landroid/support/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 250
    .local v2, "handleParentChange":Z
    :goto_0
    iget-object v3, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:intermediateMatrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 251
    .local v3, "startMatrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_2

    .line 252
    iget-object v4, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_2
    iget-object v4, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:intermediateParentMatrix"

    .line 256
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    .line 257
    .local v4, "startParentMatrix":Landroid/graphics/Matrix;
    if-eqz v4, :cond_3

    .line 258
    iget-object v5, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:parentMatrix"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_3
    if-eqz v2, :cond_4

    .line 263
    invoke-direct {p0, p2, p3}, Landroid/support/transition/ChangeTransform;->setMatricesForParent(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 267
    :cond_4
    invoke-direct {p0, p2, p3, v2}, Landroid/support/transition/ChangeTransform;->createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 270
    .local v5, "transformAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    iget-boolean v6, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v6, :cond_5

    .line 271
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    goto :goto_1

    .line 272
    :cond_5
    sget-boolean v6, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v6, :cond_6

    .line 274
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 277
    :cond_6
    :goto_1
    return-object v5

    .line 243
    .end local v0    # "startParent":Landroid/view/ViewGroup;
    .end local v1    # "endParent":Landroid/view/ViewGroup;
    .end local v2    # "handleParentChange":Z
    .end local v3    # "startMatrix":Landroid/graphics/Matrix;
    .end local v4    # "startParentMatrix":Landroid/graphics/Matrix;
    .end local v5    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 189
    sget-object v0, Landroid/support/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
