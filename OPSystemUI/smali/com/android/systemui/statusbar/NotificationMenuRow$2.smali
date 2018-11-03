.class Lcom/android/systemui/statusbar/NotificationMenuRow$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationMenuRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;->fadeInMenu(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .line 588
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$700(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V

    .line 598
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$802(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$900(Lcom/android/systemui/statusbar/NotificationMenuRow;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$602(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z

    .line 604
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$802(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z

    .line 592
    return-void
.end method
