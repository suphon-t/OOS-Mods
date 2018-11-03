.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/SensorEventListener;

.field private final synthetic f$2:Landroid/hardware/Sensor;

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$1:Landroid/hardware/SensorEventListener;

    iput-object p3, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$2:Landroid/hardware/Sensor;

    iput p4, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$3:I

    iput p5, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$5:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$1:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$2:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$3:I

    iget v4, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$4:I

    iget-object v5, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;->f$5:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$registerListenerImpl$0(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V

    return-void
.end method
