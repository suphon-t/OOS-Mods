.class public Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "FingerprintDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAuthenticatedSuccess:Z

.field private mDialogShowing:Z

.field private mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field private mFpSensorPressing:Z

.field private mHandler:Landroid/os/Handler;

.field private mOnViewPressing:Z

.field private mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mTransparentIconShowing:Z

.field private mTransparentIconView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 96
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Lcom/android/internal/os/SomeArgs;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintEnroll()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticatedFail()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleClearMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAcquire(II)V

    return-void
.end method

.method private getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 297
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x901

    const v4, 0x1000108

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 303
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 304
    const-string v1, "FingerprintTransparentIcon"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 306
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070494

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 307
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070495

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 308
    return-object v0
.end method

.method private handleButtonNegative()V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    .line 508
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void

    .line 512
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling negative button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 517
    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    .line 521
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void

    .line 525
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling positive button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 530
    return-void
.end method

.method private handleClearMessage()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetMessage()V

    .line 534
    return-void
.end method

.method private handleFingerprintAcquire(II)V
    .locals 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 351
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 353
    .local v0, "isInterActive":Z
    const-string v1, "FingerprintDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFingerprintAcquire: acquireInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", onViewPressing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", vendorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", interactive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dialogShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v3, :cond_0

    .line 360
    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 361
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    goto :goto_0

    .line 362
    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-eqz v1, :cond_2

    .line 364
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 366
    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 368
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 371
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 372
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 374
    :cond_2
    :goto_0
    return-void
.end method

.method private handleFingerprintAuthenticated()V
    .locals 4

    .line 413
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    .line 422
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 422
    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 425
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 426
    return-void
.end method

.method private handleFingerprintAuthenticatedFail()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    .line 383
    return-void
.end method

.method private handleFingerprintEnroll()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 378
    return-void
.end method

.method private handleFingerprintError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 440
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_2

    .line 443
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    return-void

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showErrorMessage(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private handleFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 429
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showHelpMessage(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 4
    .param p1, "userCanceled"    # Z

    .line 456
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHideDialog, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_1

    .line 460
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog already dismissed, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 467
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isDefault()Z

    move-result v0

    if-nez v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 472
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    if-nez v2, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 476
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "handleHideDialog: don\'t hide window since keyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void

    .line 484
    .end local v0    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_2
    if-eqz p1, :cond_3

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintDialogImpl"

    const-string v3, "RemoteException when hiding dialog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 492
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    .line 495
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->startDismiss(Z)V

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-nez v0, :cond_4

    .line 500
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 501
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 504
    :cond_4
    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 8
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 248
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShowDialog, isAnimatingAway: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 249
    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->forceRemove()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_2

    .line 254
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 255
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 261
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 267
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 270
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 271
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "key_fingerprint_package_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "authenticatedPkg":Ljava/lang/String;
    const-string v3, "FingerprintDialogImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authenticatedPkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setOwnerString(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 275
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 279
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 280
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    .line 284
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-nez v4, :cond_3

    .line 285
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 286
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    .line 291
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    .line 292
    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    .line 537
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 538
    return-void
.end method


# virtual methods
.method public hideFingerprintDialog()V
    .locals 3

    .line 240
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "hideFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    return-void
.end method

.method public onFingerprintAcquired(II)V
    .locals 2
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 204
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 2

    .line 222
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    return-void
.end method

.method public onFingerprintAuthenticatedFail()V
    .locals 2

    .line 215
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticatedFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return-void
.end method

.method public onFingerprintEnrollResult()V
    .locals 2

    .line 209
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 228
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 190
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "showFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 196
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 197
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public start()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 150
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setTransparentIconView(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method public updateTransparentIconLayoutParams(Z)V
    .locals 8
    .param p1, "expand"    # Z

    .line 313
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTransparentIconLayoutParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 323
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    .line 324
    .local v1, "orientation":I
    if-eqz p1, :cond_1

    .line 325
    const/4 v2, -0x1

    .line 326
    .local v2, "w":I
    const/4 v3, -0x1

    .line 327
    .local v3, "h":I
    const/4 v4, 0x0

    .line 328
    .local v4, "x":I
    const/4 v5, 0x0

    .line 329
    .local v5, "y":I
    const/4 v1, 0x1

    goto :goto_0

    .line 331
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    const/4 v2, -0x2

    .line 332
    .restart local v2    # "w":I
    const/4 v3, -0x2

    .line 333
    .restart local v3    # "h":I
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070494

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 334
    .restart local v4    # "x":I
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070495

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 335
    .restart local v5    # "y":I
    const/4 v1, -0x1

    .line 338
    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 339
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 340
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 341
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 342
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 344
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v6, v7, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    return-void
.end method
