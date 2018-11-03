.class Lcom/android/systemui/statusbar/phone/OPWarpChargingView$8;
.super Ljava/lang/Object;
.source "OPWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->relaseAsset()V
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

    .line 333
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$8;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$8;->this$0:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->access$500(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    .line 337
    return-void
.end method
