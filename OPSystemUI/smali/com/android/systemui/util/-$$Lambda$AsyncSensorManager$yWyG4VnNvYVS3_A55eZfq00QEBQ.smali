.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$yWyG4VnNvYVS3_A55eZfq00QEBQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/SensorAdditionalInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$yWyG4VnNvYVS3_A55eZfq00QEBQ;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$yWyG4VnNvYVS3_A55eZfq00QEBQ;->f$1:Landroid/hardware/SensorAdditionalInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$yWyG4VnNvYVS3_A55eZfq00QEBQ;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$yWyG4VnNvYVS3_A55eZfq00QEBQ;->f$1:Landroid/hardware/SensorAdditionalInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$setOperationParameterImpl$5(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V

    return-void
.end method
