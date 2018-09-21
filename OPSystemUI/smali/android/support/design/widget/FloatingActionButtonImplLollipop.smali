.class Landroid/support/design/widget/FloatingActionButtonImplLollipop;
.super Landroid/support/design/widget/FloatingActionButtonImpl;
.source "FloatingActionButtonImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;
    }
.end annotation


# instance fields
.field private insetDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 0
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 49
    return-void
.end method

.method private createElevationAnimator(FF)Landroid/animation/Animator;
    .locals 8
    .param p1, "elevation"    # F
    .param p2, "translationZ"    # F

    .line 150
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 151
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const-string v2, "elevation"

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v3, [F

    aput p2, v3, v5

    .line 153
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 154
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 155
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    return-object v0
.end method


# virtual methods
.method public getElevation()F
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getElevation()F

    move-result v0

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 223
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v0

    .line 225
    .local v0, "radius":F
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->getElevation()F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->pressedTranslationZ:F

    add-float/2addr v2, v3

    .line 226
    .local v2, "maxShadowSize":F
    nop

    .line 229
    invoke-static {v2, v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v3

    float-to-double v3, v3

    .line 228
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 230
    .local v3, "hPadding":I
    nop

    .line 233
    invoke-static {v2, v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v1

    float-to-double v4, v1

    .line 232
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 234
    .local v1, "vPadding":I
    invoke-virtual {p1, v3, v1, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    .end local v0    # "radius":F
    .end local v1    # "vPadding":I
    .end local v2    # "maxShadowSize":F
    .end local v3    # "hPadding":I
    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 238
    :goto_0
    return-void
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    .line 204
    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 1

    .line 213
    new-instance v0, Landroid/support/design/widget/CircularBorderDrawableLollipop;

    invoke-direct {v0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;-><init>()V

    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 218
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;-><init>()V

    return-object v0
.end method

.method onDrawableStateChanged([I)V
    .locals 3
    .param p1, "state"    # [I

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    .line 184
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->elevation:F

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setElevation(F)V

    .line 186
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->pressedTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_1

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_1

    .line 189
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->hoveredFocusedTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setElevation(F)V

    .line 195
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    .line 199
    :cond_4
    :goto_1
    return-void
.end method

.method onElevationsChanged(FFF)V
    .locals 11
    .param p1, "elevation"    # F
    .param p2, "hoveredFocusedTranslationZ"    # F
    .param p3, "pressedTranslationZ"    # F

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->refreshDrawableState()V

    goto/16 :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 105
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->PRESSED_ENABLED_STATE_SET:[I

    .line 106
    invoke-direct {p0, p1, p3}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 107
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 110
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 113
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->HOVERED_ENABLED_STATE_SET:[I

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 118
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 119
    .local v1, "set":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const-string v4, "elevation"

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput p1, v6, v7

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    const-wide/16 v8, 0x64

    if-lt v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-gt v3, v4, :cond_1

    .line 126
    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v10, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 127
    invoke-virtual {v10}, Landroid/support/design/widget/VisibilityAwareImageButton;->getTranslationZ()F

    move-result v10

    aput v10, v6, v7

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 126
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    .line 131
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 130
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-array v3, v7, [Landroid/animation/Animator;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 134
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 138
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->EMPTY_STATE_SET:[I

    invoke-direct {p0, v6, v6}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 140
    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 143
    .end local v0    # "stateListAnimator":Landroid/animation/StateListAnimator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->updatePadding()V

    .line 146
    :cond_2
    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 171
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->insetDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 175
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->insetDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :goto_0
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 5
    .param p1, "backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p2, "backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "rippleColor"    # Landroid/content/res/ColorStateList;
    .param p4, "borderWidth"    # I

    .line 58
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 65
    :cond_0
    const/4 v0, 0x0

    if-lez p4, :cond_1

    .line 66
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 67
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v1, "rippleContent":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 69
    .end local v1    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 70
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    .restart local v1    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    .line 75
    invoke-static {p3}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v2}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method
