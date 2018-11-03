.class Lcom/android/systemui/statusbar/phone/CarModeHintView$2;
.super Ljava/lang/Object;
.source "CarModeHintView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CarModeHintView;->getShowAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarModeHintView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/CarModeHintView;

    .line 196
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 212
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->setAlpha(F)V

    .line 208
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 217
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 199
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->access$102(Lcom/android/systemui/statusbar/phone/CarModeHintView;Z)Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->setAlpha(F)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/CarModeHintView;->setVisibility(I)V

    .line 203
    return-void
.end method
