.class Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 380
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;->this$0:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v1, 0x0

    const v2, 0x7f0a03ac

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v2, 0x7f0a03ab

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v2, 0x7f0a03aa

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 386
    return-void
.end method
