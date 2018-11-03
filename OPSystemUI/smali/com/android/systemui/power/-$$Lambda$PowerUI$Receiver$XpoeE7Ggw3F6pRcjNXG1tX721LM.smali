.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/power/PowerUI$Receiver;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerUI$Receiver;ZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    iput-boolean p2, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$2:Z

    iput p4, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$3:I

    iput p5, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    iget-boolean v1, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$1:Z

    iget-boolean v2, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$2:Z

    iget v3, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$3:I

    iget v4, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$XpoeE7Ggw3F6pRcjNXG1tX721LM;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/power/PowerUI$Receiver;->lambda$onReceive$1(Lcom/android/systemui/power/PowerUI$Receiver;ZZII)V

    return-void
.end method
