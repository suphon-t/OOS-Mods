.class Lcom/android/systemui/statusbar/NotificationInfo$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationInfo;->swapContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationInfo;

.field final synthetic val$confirmation:Landroid/view/ViewGroup;

.field final synthetic val$prompt:Landroid/view/View;

.field final synthetic val$showPrompt:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationInfo;Landroid/view/View;ZLandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationInfo;

    .line 402
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/NotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->val$prompt:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->val$showPrompt:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->val$confirmation:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 403
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->cancelled:Z

    .line 408
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 412
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->cancelled:Z

    if-nez v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->val$prompt:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->val$showPrompt:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->val$confirmation:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo$1;->val$showPrompt:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 416
    :cond_2
    return-void
.end method
