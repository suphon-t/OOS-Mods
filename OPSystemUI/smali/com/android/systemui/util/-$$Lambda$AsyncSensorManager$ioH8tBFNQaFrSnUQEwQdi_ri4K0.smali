.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ioH8tBFNQaFrSnUQEwQdi_ri4K0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ioH8tBFNQaFrSnUQEwQdi_ri4K0;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ioH8tBFNQaFrSnUQEwQdi_ri4K0;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ioH8tBFNQaFrSnUQEwQdi_ri4K0;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ioH8tBFNQaFrSnUQEwQdi_ri4K0;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-static {v0, v1}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$unregisterDynamicSensorCallbackImpl$2(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method
