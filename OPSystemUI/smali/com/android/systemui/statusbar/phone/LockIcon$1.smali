.class Lcom/android/systemui/statusbar/phone/LockIcon$1;
.super Ljava/lang/Object;
.source "LockIcon.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 317
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 329
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "LockIcon"

    const-string/jumbo v1, "start retry anim2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080211

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0806ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 333
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 323
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 320
    return-void
.end method
