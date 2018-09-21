.class final Lcom/android/systemui/power/PowerUI$ThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$ThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p2, "x1"    # Lcom/android/systemui/power/PowerUI$1;

    .line 685
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$ThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method


# virtual methods
.method public notifyThrottling(ZLandroid/os/Temperature;)V
    .locals 2
    .param p1, "isThrottling"    # Z
    .param p2, "temp"    # Landroid/os/Temperature;

    .line 690
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$ThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$ThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$1800(Lcom/android/systemui/power/PowerUI;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$ThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    .line 692
    return-void
.end method
