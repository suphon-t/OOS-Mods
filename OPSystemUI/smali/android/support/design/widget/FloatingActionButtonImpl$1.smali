.class Landroid/support/design/widget/FloatingActionButtonImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/FloatingActionButtonImpl;

    .line 347
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iput-boolean p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$fromUser:Z

    iput-object p3, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->cancelled:Z

    .line 362
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 366
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    .line 367
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 369
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->cancelled:Z

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$fromUser:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iget-boolean v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$fromUser:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 371
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v0}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 375
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 352
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$fromUser:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 354
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    .line 355
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iput-object p1, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 356
    iput-boolean v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->cancelled:Z

    .line 357
    return-void
.end method
