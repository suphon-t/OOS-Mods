.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeSensors$TriggerSensor$O2XJN2HKJ96bSF_1qNx6jPK-eFk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final synthetic f$1:Landroid/hardware/TriggerEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;Landroid/hardware/TriggerEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$TriggerSensor$O2XJN2HKJ96bSF_1qNx6jPK-eFk;->f$0:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iput-object p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$TriggerSensor$O2XJN2HKJ96bSF_1qNx6jPK-eFk;->f$1:Landroid/hardware/TriggerEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$TriggerSensor$O2XJN2HKJ96bSF_1qNx6jPK-eFk;->f$0:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$TriggerSensor$O2XJN2HKJ96bSF_1qNx6jPK-eFk;->f$1:Landroid/hardware/TriggerEvent;

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->lambda$onTrigger$0(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;Landroid/hardware/TriggerEvent;)V

    return-void
.end method
