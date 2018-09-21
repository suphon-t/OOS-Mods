.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field private final synthetic f$1:Z

.field private final synthetic f$2:F

.field private final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;ZFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-boolean p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;->f$1:Z

    iput p3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;->f$2:F

    iput p4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;->f$3:F

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-boolean v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;->f$1:Z

    iget v2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;->f$2:F

    iget v3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;->f$3:F

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onSensor$0(Lcom/android/systemui/doze/DozeTriggers;ZFFI)V

    return-void
.end method
