.class public final synthetic Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;->f$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iput p2, p0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;->f$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget v1, p0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;->f$1:I

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->lambda$setDisplayPressMode$5(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    return-void
.end method
