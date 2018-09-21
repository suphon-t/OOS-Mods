.class Lcom/android/systemui/statusbar/stack/ViewState$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/ViewState;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .line 582
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ViewState$7;->this$0:Lcom/android/systemui/statusbar/stack/ViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ViewState$7;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$7;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->setIsClickedHeadsUpNotification(Landroid/view/View;Z)V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$7;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0a042b

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$7;->val$child:Landroid/view/View;

    const v2, 0x7f0a042a

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$7;->val$child:Landroid/view/View;

    const v2, 0x7f0a0429

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$7;->this$0:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/ViewState$7;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    .line 590
    return-void
.end method
