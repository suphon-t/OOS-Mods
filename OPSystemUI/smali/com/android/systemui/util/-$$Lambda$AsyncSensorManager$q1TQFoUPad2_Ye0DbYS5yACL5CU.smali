.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/TriggerEventListener;

.field private final synthetic f$2:Landroid/hardware/Sensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;->f$1:Landroid/hardware/TriggerEventListener;

    iput-object p3, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;->f$2:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;->f$1:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;->f$2:Landroid/hardware/Sensor;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$requestTriggerSensorImpl$3(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
