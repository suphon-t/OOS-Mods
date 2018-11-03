.class Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/SlideKitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideAnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mEndValue:F

.field private final mFinalVisibility:I

.field private mPausedValue:F

.field private final mProp:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mTerminalValue:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/Property;FFI)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p3, "terminalValue"    # F
    .param p4, "endValue"    # F
    .param p5, "finalVisibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FFI)V"
        }
    .end annotation

    .line 268
    .local p2, "prop":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    .line 269
    iput-object p2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    .line 270
    iput-object p1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    .line 271
    iput p3, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    .line 272
    iput p4, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mEndValue:F

    .line 273
    iput p5, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 279
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 280
    .local v0, "transitionPosition":[F
    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 281
    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 282
    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    sget v3, Landroid/support/v17/leanback/R$id;->lb_slide_transition_value:I

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 283
    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v3, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v4, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    iput-boolean v2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    .line 285
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 289
    iget-boolean v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 297
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mPausedValue:F

    .line 298
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mEndValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 304
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mPausedValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    return-void
.end method
