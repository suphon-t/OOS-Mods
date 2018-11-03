.class abstract Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShadowAnimatorImpl"
.end annotation


# instance fields
.field private shadowSizeEnd:F

.field private shadowSizeStart:F

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

.field private validValues:Z


# direct methods
.method private constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V
    .locals 0

    .line 609
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;Landroid/support/design/widget/FloatingActionButtonImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/widget/FloatingActionButtonImpl;
    .param p2, "x1"    # Landroid/support/design/widget/FloatingActionButtonImpl$1;

    .line 609
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    return-void
.end method


# virtual methods
.method protected abstract getTargetShadowSize()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 629
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    .line 631
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 617
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getShadowSize()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    .line 619
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->getTargetShadowSize()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    .line 623
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    iget v3, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    sub-float/2addr v2, v3

    .line 624
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 623
    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 625
    return-void
.end method
