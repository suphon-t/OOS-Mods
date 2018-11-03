.class Lcom/android/systemui/statusbar/phone/PanelView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$clearAllExpandHack:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .line 906
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->val$clearAllExpandHack:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/util/BoostFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/util/BoostFramework;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 914
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->mCancelled:Z

    .line 915
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/util/BoostFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/util/BoostFramework;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 922
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->val$clearAllExpandHack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->mCancelled:Z

    if-nez v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$200(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V

    .line 926
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->mCancelled:Z

    if-nez v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 930
    return-void
.end method
