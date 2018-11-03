.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

.field private final synthetic f$2:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iput-object p3, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;->f$2:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iget-object v2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;->f$2:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$registerDynamicSensorCallbackImpl$1(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method
