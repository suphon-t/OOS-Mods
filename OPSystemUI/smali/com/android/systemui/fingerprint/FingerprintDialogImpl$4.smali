.class Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;
.super Landroid/database/ContentObserver;
.source "FingerprintDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 551
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 554
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quickpay_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2502(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z

    .line 556
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "QuickLaunch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op_quickpay_enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$2500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    return-void
.end method
