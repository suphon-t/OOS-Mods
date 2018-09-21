.class public Lcom/android/systemui/recents/views/TaskViewTransform;
.super Ljava/lang/Object;
.source "TaskViewTransform.java"


# static fields
.field public static final LTRB:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alpha:F

.field public dimAlpha:F

.field public rect:Landroid/graphics/RectF;

.field public scale:F

.field public translationZ:F

.field public viewOutlineAlpha:F

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform$1;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "leftTopRightBottom"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 55
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 56
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 57
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 58
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public static reset(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2
    .param p0, "v"    # Lcom/android/systemui/recents/views/TaskView;

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->setClipBottom(I)V

    .line 196
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->setLeftTopRightBottom(IIII)V

    .line 197
    return-void
.end method


# virtual methods
.method public applyToTaskView(Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V
    .locals 8
    .param p1, "v"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .param p4, "allowShadows"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/systemui/shared/recents/utilities/AnimationProps;",
            "Z)V"
        }
    .end annotation

    .line 140
    .local p2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 148
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 150
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 155
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 156
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->setLeftTopRightBottom(IIII)V

    goto/16 :goto_0

    .line 160
    :cond_4
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 161
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v0, [F

    .line 162
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v5

    aput v5, v4, v2

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    aput v5, v4, v1

    .line 161
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 163
    .local v3, "anim":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x3

    invoke-virtual {p3, v4, v3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 166
    new-array v3, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v0, [F

    .line 167
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    aput v6, v5, v2

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    aput v6, v5, v1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v0, [F

    .line 168
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    aput v6, v5, v2

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    aput v6, v5, v1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v1

    .line 166
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 169
    .restart local v3    # "anim":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x5

    invoke-virtual {p3, v4, v3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 172
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v0, [F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v5

    aput v5, v4, v2

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    aput v5, v4, v1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 173
    .restart local v3    # "anim":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x4

    invoke-virtual {p3, v4, v3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 176
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 177
    .local v3, "fromViewRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 178
    .local v4, "toViewRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 179
    new-array v5, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Lcom/android/systemui/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/shared/recents/utilities/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    new-array v0, v0, [Landroid/graphics/Rect;

    aput-object v3, v0, v2

    aput-object v4, v0, v1

    .line 180
    invoke-static {v6, v7, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v5, v2

    .line 179
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 182
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/4 v1, 0x6

    invoke-virtual {p3, v1, v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "fromViewRect":Landroid/graphics/Rect;
    .end local v4    # "toViewRect":Landroid/graphics/Rect;
    :cond_8
    :goto_0
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 2
    .param p1, "other"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 82
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 83
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 84
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 85
    iget-boolean v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 86
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 87
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 89
    return-void
.end method

.method public fillIn(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 5
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .line 69
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 71
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 75
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    return-void
.end method

.method public hasAlphaChangedFrom(F)Z
    .locals 1
    .param p1, "v"    # F

    .line 118
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRectChangedFrom(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 130
    :goto_1
    return v0
.end method

.method public hasScaleChangedFrom(F)Z
    .locals 1
    .param p1, "v"    # F

    .line 122
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTranslationZChangedFrom(F)Z
    .locals 1
    .param p1, "v"    # F

    .line 126
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSame(Lcom/android/systemui/recents/views/TaskViewTransform;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 95
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 100
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 108
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 109
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 110
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 111
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " V: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
