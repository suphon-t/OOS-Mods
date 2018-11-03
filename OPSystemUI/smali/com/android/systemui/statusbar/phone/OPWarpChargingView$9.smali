.class Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;
.super Ljava/lang/Object;
.source "OPWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->preloadAnimationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 364
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$602(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$702(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$800(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->startAnimation()V

    .line 372
    :cond_0
    return-void
.end method
