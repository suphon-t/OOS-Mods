.class public final synthetic Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/classifier/FalsingManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$0:Lcom/android/systemui/classifier/FalsingManager;

    iput p2, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$1:I

    iput p3, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$4:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$0:Lcom/android/systemui/classifier/FalsingManager;

    iget v1, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$1:I

    iget v2, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;->f$4:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/classifier/FalsingManager;->lambda$isFalseTouch$2(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
