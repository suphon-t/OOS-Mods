.class Lcom/android/systemui/statusbar/car/CarStatusBar$1;
.super Ljava/lang/Object;
.source "CarStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/car/CarStatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 111
    invoke-static {v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->access$200(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    .line 110
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->access$102(Lcom/android/systemui/statusbar/car/CarStatusBar;Z)Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->access$300(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    .line 113
    return-void
.end method
