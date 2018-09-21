.class Lcom/android/systemui/qs/QuickStatusBarHeader$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickStatusBarHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;->hideLongPressTooltip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field final synthetic val$shouldShowStatusText:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 571
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$3;->val$shouldShowStatusText:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$3;->val$shouldShowStatusText:Z

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    .line 580
    :cond_0
    return-void
.end method
