.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/Sensor;

.field private final synthetic f$2:Landroid/hardware/SensorEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;->f$1:Landroid/hardware/Sensor;

    iput-object p3, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;->f$2:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;->f$1:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;->f$2:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$unregisterListenerImpl$6(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    return-void
.end method
