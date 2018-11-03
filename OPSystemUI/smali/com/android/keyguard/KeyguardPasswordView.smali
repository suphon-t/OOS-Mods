.class public Lcom/android/keyguard/KeyguardPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final IS_CUSTOM_FINGERPRINT:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDisappearYTranslation:I

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mHideNavigationBar:Z

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsResume:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private final mShowImeAtScreenOn:Z

.field private mSwitchImeButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->IS_CUSTOM_FINGERPRINT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const-string v0, "KeyguardPasswordView"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->TAG:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHideNavigationBar:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsResume:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    const v1, 0x7f05004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    .line 103
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isNeedToPendingIME()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->requestShowIME()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updateSwitchImeButton()V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFirstUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110341

    goto :goto_0

    :cond_0
    const v0, 0x7f110348

    .line 158
    .local v0, "stringId":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->getMessageWithCount(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 10
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .line 462
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 465
    .local v0, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    .line 467
    .local v1, "filteredImisCount":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 469
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v1, v4, :cond_0

    return v4

    .line 470
    :cond_0
    nop

    .line 471
    invoke-virtual {p1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    .line 473
    .local v5, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 475
    goto :goto_0

    .line 478
    :cond_1
    const/4 v6, 0x0

    .line 479
    .local v6, "auxCount":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 480
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 481
    add-int/lit8 v6, v6, 0x1

    .line 483
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    goto :goto_1

    .line 484
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .line 489
    .local v7, "nonAuxCount":I
    if-gtz v7, :cond_5

    if-eqz p2, :cond_4

    if-le v6, v4, :cond_4

    goto :goto_2

    .line 493
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "auxCount":I
    .end local v7    # "nonAuxCount":I
    :cond_4
    goto :goto_0

    .line 490
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v5    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "auxCount":I
    .restart local v7    # "nonAuxCount":I
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 491
    goto :goto_0

    .line 495
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "auxCount":I
    .end local v7    # "nonAuxCount":I
    :cond_6
    const/4 v2, 0x0

    if-gt v1, v4, :cond_8

    const/4 v3, 0x0

    .line 498
    invoke-virtual {p1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_7

    goto :goto_3

    :cond_7
    goto :goto_4

    .line 495
    :cond_8
    :goto_3
    move v2, v4

    :goto_4
    return v2
.end method

.method private isNeedToPendingIME()Z
    .locals 2

    .line 587
    sget-boolean v0, Lcom/android/keyguard/KeyguardPasswordView;->IS_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 589
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 590
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    return v1
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/KeyguardPasswordView;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 395
    return-void
.end method

.method private requestShowIME()V
    .locals 6

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 210
    .local v0, "isUserLocked":Z
    const/4 v2, 0x0

    .line 211
    .local v2, "prevent":Z
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 212
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v2

    .line 216
    :cond_0
    const-string v3, "KeyguardPasswordView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestShowIME: mIsResume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsResume:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isShown:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isShown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hideNavigationBar:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHideNavigationBar:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isPreventModeActive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " input Enable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 221
    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsResume:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 225
    const-string v1, "KeyguardPasswordView"

    const-string v3, "not show IME when prevent mode"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 229
    :cond_1
    const-string v3, "KeyguardPasswordView"

    const-string v4, "request IME show"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 232
    :cond_2
    return-void
.end method

.method private updateSwitchImeButton()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 298
    .local v0, "wasVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v2, v1}, Lcom/android/keyguard/KeyguardPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    .line 299
    .local v2, "shouldBeVisible":Z
    if-eq v0, v2, :cond_2

    .line 300
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 308
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    .line 309
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 310
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .line 557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onUserInput()V

    .line 560
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 547
    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .line 164
    const v0, 0x7f0a0307

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 270
    const v0, 0x7f110357

    packed-switch p1, :pswitch_data_0

    .line 282
    return v0

    .line 278
    :pswitch_0
    const v0, 0x7f11035a

    return v0

    .line 276
    :pswitch_1
    const v0, 0x7f110350

    return v0

    .line 274
    :pswitch_2
    return v0

    .line 272
    :pswitch_3
    const v0, 0x7f110351

    return v0

    .line 280
    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 581
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrongPasswordStringId()I
    .locals 4

    .line 508
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 509
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    .line 511
    .local v1, "failedAttempts":I
    rem-int/lit8 v2, v1, 0x5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 512
    const v2, 0x7f11036d

    return v2

    .line 513
    :cond_0
    rem-int/lit8 v2, v1, 0x5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 514
    const v2, 0x7f11036e

    return v2

    .line 517
    :cond_1
    const v2, 0x7f110368

    return v2
.end method

.method public isCheckingPassword()Z
    .locals 1

    .line 597
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isCheckingPassword()Z

    move-result v0

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 565
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 569
    .local v2, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_2

    .line 570
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 572
    .local v3, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    .line 576
    :cond_3
    return v0

    .line 573
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->verifyPasswordAndUnlock()V

    .line 574
    return v1
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 357
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 359
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 362
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 363
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 381
    const v0, 0x7f0a0400

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPasswordView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    const v0, 0x7f0a00af

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, "cancelBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 393
    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardPasswordView$o6rdkANQuxgpLXMWWI2lzhbd_0k;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardPasswordView$o6rdkANQuxgpLXMWWI2lzhbd_0k;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updateSwitchImeButton()V

    .line 405
    new-instance v2, Lcom/android/keyguard/KeyguardPasswordView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPasswordView$4;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/keyguard/KeyguardPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->displayDefaultSecurityMessage()V

    .line 422
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_navigation_bar_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    nop

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHideNavigationBar:Z

    .line 425
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 288
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsResume:Z

    .line 292
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 293
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 174
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsResume:Z

    .line 179
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardPasswordView;I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 3
    .param p1, "screenState"    # I

    .line 253
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onScreenStateChanged(I)V

    .line 254
    const-string v0, "KeyguardPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenStateChanged: screenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isNeedToPendingIME()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 259
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->requestShowIME()V

    .line 265
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 551
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .line 237
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onWindowFocusChanged(Z)V

    .line 238
    const-string v0, "KeyguardPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: hasWindowFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isNeedToPendingIME()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 243
    return-void

    .line 246
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->requestShowIME()V

    .line 249
    :cond_1
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "announce"    # Z

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method protected resetState()V
    .locals 4

    .line 115
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->displayDefaultSecurityMessage()V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    .line 120
    .local v0, "wasDisabled":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 123
    const-string v1, "KeyguardPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " resetState wasDisabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isNeedToPendingIME()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isNeedToPendingIME()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHideNavigationBar:Z

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    const-string v1, "KeyguardPasswordView"

    const-string v2, "reset to hide IME when not shown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mHideNavigationBar:Z

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 141
    const-string v1, "KeyguardPasswordView"

    const-string v2, "reset to hide IME when not shown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 146
    :cond_2
    if-eqz v0, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->requestShowIME()V

    .line 152
    :cond_3
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 445
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 446
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 451
    return-void
.end method

.method public startAppearAnimation()V
    .locals 3

    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setAlpha(F)V

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setTranslationY(F)V

    .line 524
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 525
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 527
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 529
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .line 533
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    int-to-float v1, v1

    .line 535
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 537
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 538
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 539
    const/4 v0, 0x1

    return v0
.end method
