.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler$1;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    .line 1326
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;->access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;->access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;->access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1332
    return-void
.end method
