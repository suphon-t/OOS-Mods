.class Landroidx/car/moderator/SpeedBumpController$2;
.super Ljava/lang/Object;
.source "SpeedBumpController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/moderator/SpeedBumpController;->hideLockOutMessage()V
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

    .line 233
    iput-object p1, p0, Landroidx/car/moderator/SpeedBumpController$2;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 239
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$2;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v0}, Landroidx/car/moderator/SpeedBumpController;->access$000(Landroidx/car/moderator/SpeedBumpController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$2;->this$0:Landroidx/car/moderator/SpeedBumpController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/car/moderator/SpeedBumpController;->access$402(Landroidx/car/moderator/SpeedBumpController;Z)Z

    .line 241
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 244
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 235
    return-void
.end method
