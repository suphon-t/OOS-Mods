.class public final synthetic Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/classifier/FalsingManager;

.field private final synthetic f$1:Landroid/hardware/Sensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;->f$0:Lcom/android/systemui/classifier/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;->f$1:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;->f$0:Lcom/android/systemui/classifier/FalsingManager;

    iget-object v1, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;->f$1:Landroid/hardware/Sensor;

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingManager;->lambda$registerSensors$1(Lcom/android/systemui/classifier/FalsingManager;Landroid/hardware/Sensor;)V

    return-void
.end method
