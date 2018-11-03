.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$hOBqImh7g4o_iKhiP9d1qETIOWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$hOBqImh7g4o_iKhiP9d1qETIOWo;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$hOBqImh7g4o_iKhiP9d1qETIOWo;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$hOBqImh7g4o_iKhiP9d1qETIOWo;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$hOBqImh7g4o_iKhiP9d1qETIOWo;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->lambda$requestPulse$1(Lcom/android/systemui/doze/DozeTriggers;II)V

    return-void
.end method
