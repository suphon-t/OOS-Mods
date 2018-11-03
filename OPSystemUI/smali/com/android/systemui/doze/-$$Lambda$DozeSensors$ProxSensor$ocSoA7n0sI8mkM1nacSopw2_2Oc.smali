.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeSensors$ProxSensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;->f$0:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;->f$0:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->lambda$setRequested$0(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    return-void
.end method
