.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 567
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1002(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 573
    return-void
.end method
