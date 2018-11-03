.class public Lcom/android/keyguard/KeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# instance fields
.field private mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttempts:I

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mShowDefaultMessage:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSlotId:I

.field private mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    .line 63
    new-instance v2, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$1;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 65
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 71
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSlotId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSlotId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardSimPukView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPin()Z
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 459
    .local v0, "length":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 461
    const/4 v1, 0x1

    return v1

    .line 463
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkPuk()Z
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 451
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPukPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .line 290
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11034c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "displayMessage":Ljava/lang/String;
    goto :goto_2

    .line 292
    .end local v2    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_2

    .line 293
    if-eqz p2, :cond_1

    const v2, 0x7f0f0005

    goto :goto_0

    .line 294
    :cond_1
    const v2, 0x7f0f0008

    .line 295
    .local v2, "msgId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3, v2, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "displayMessage":Ljava/lang/String;
    goto :goto_2

    .line 298
    .end local v2    # "displayMessage":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    const v2, 0x7f11035c

    goto :goto_1

    .line 299
    :cond_3
    const v2, 0x7f11034a

    .line 300
    .local v2, "msgId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "displayMessage":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110360

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 304
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 306
    :cond_4
    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayMessage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-object v2
.end method

.method private getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 434
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 436
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 437
    const v0, 0x7f11042f

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d9

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 441
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    const v2, 0x7f110363

    .line 420
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private updateSim()V
    .locals 4

    .line 471
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_0

    .line 476
    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin verifyPasswordAndUnlock , mSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPukView$3;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 529
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->start()V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .line 325
    const v0, 0x7f0a033a

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 340
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 349
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 353
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 355
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 330
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 335
    :cond_0
    const v0, 0x7f0a01ec

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    .line 336
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 368
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 315
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 0

    .line 541
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->next()V

    .line 536
    return-void
.end method
