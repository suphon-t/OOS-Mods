.class Landroidx/car/moderator/SpeedBumpController$1;
.super Ljava/lang/Object;
.source "SpeedBumpController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/moderator/SpeedBumpController;->showLockOutMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/moderator/SpeedBumpController;


# direct methods
.method constructor <init>(Landroidx/car/moderator/SpeedBumpController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/moderator/SpeedBumpController;

    .line 199
    iput-object p1, p0, Landroidx/car/moderator/SpeedBumpController$1;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$32(Landroidx/car/moderator/SpeedBumpController;)V
    .locals 0
    .param p0, "rec$"    # Landroidx/car/moderator/SpeedBumpController;

    .line 209
    invoke-static {p0}, Landroidx/car/moderator/SpeedBumpController;->access$300(Landroidx/car/moderator/SpeedBumpController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 209
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$1;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v0}, Landroidx/car/moderator/SpeedBumpController;->access$200(Landroidx/car/moderator/SpeedBumpController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController$1;->this$0:Landroidx/car/moderator/SpeedBumpController;

    new-instance v2, Landroidx/car/moderator/-$$Lambda$SpeedBumpController$1$JWqfApEE4LaLtMDQ0Yg16o_M7TE;

    invoke-direct {v2, v1}, Landroidx/car/moderator/-$$Lambda$SpeedBumpController$1$JWqfApEE4LaLtMDQ0Yg16o_M7TE;-><init>(Landroidx/car/moderator/SpeedBumpController;)V

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController$1;->this$0:Landroidx/car/moderator/SpeedBumpController;

    .line 210
    invoke-static {v1}, Landroidx/car/moderator/SpeedBumpController;->access$100(Landroidx/car/moderator/SpeedBumpController;)I

    move-result v1

    int-to-long v3, v1

    .line 209
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 214
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 202
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$1;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v0}, Landroidx/car/moderator/SpeedBumpController;->access$000(Landroidx/car/moderator/SpeedBumpController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    return-void
.end method
