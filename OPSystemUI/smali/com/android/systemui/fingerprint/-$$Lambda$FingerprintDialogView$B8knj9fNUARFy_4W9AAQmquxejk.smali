.class public final synthetic Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;->f$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;->f$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->lambda$setDismissesDialog$2(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
