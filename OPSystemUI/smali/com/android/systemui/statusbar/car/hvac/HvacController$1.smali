.class Lcom/android/systemui/statusbar/car/hvac/HvacController$1;
.super Ljava/lang/Object;
.source "HvacController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/hvac/HvacController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/hvac/HvacController;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$000(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$200(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/Car;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$102(Lcom/android/systemui/statusbar/car/hvac/HvacController;Landroid/car/hardware/hvac/CarHvacManager;)Landroid/car/hardware/hvac/CarHvacManager;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$100(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$300(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->registerCallback(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$400(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HvacController"

    const-string v2, "Failed to correctly connect to HVAC"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$500(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V

    .line 89
    return-void
.end method
