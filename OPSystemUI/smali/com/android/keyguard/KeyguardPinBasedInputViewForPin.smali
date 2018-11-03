.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mOkButton:Landroid/view/View;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 126
    :cond_0
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1
    .param p1, "number"    # I

    .line 129
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 156
    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 153
    goto :goto_0

    .line 149
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 150
    goto :goto_0

    .line 146
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 147
    goto :goto_0

    .line 143
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 144
    goto :goto_0

    .line 140
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 141
    goto :goto_0

    .line 137
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 138
    goto :goto_0

    .line 134
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 135
    goto :goto_0

    .line 131
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 132
    nop

    .line 161
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 106
    const v0, 0x7f110353

    packed-switch p1, :pswitch_data_0

    .line 118
    return v0

    .line 114
    :pswitch_0
    const v0, 0x7f110354

    return v0

    .line 112
    :pswitch_1
    const v0, 0x7f11034a

    return v0

    .line 110
    :pswitch_2
    return v0

    .line 108
    :pswitch_3
    const v0, 0x7f11034d

    return v0

    .line 116
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

    .line 276
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setSelected(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setUserActivityListener(Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoCheckPinEnabled()Z

    move-result v0

    .line 198
    .local v0, "isAutoEnabled":Z
    if-nez v0, :cond_0

    .line 199
    const v1, 0x7f0a01c4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 215
    :cond_0
    const v1, 0x7f0a00f3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    .line 216
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$5;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextViewForPin;->setTextChangeListener(Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;)V

    .line 251
    const v1, 0x7f0a01ba

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    .line 252
    const v1, 0x7f0a01bb

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    .line 253
    const v1, 0x7f0a01bc

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    .line 254
    const v1, 0x7f0a01bd

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    .line 255
    const v1, 0x7f0a01be

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    .line 256
    const v1, 0x7f0a01bf

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    .line 257
    const v1, 0x7f0a01c0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    .line 258
    const v1, 0x7f0a01c1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    .line 259
    const v1, 0x7f0a01c2

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    .line 260
    const v1, 0x7f0a01c3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus()Z

    .line 263
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 264
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 268
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 84
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 86
    return v1

    .line 87
    :cond_0
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 89
    return v1

    .line 91
    :cond_1
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    const/16 v0, 0x10

    if-gt p1, v0, :cond_2

    .line 92
    add-int/lit8 v0, p1, -0x7

    .line 93
    .local v0, "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    .line 94
    return v1

    .line 96
    .end local v0    # "number":I
    :cond_2
    const/16 v0, 0x90

    if-lt p1, v0, :cond_3

    const/16 v0, 0x99

    if-gt p1, v0, :cond_3

    .line 97
    add-int/lit16 v0, p1, -0x90

    .line 98
    .restart local v0    # "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    .line 99
    return v1

    .line 101
    .end local v0    # "number":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus()Z

    .line 57
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 58
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "announce"    # Z

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->reset(ZZ)V

    .line 166
    return-void
.end method

.method protected resetState()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    .line 68
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    .line 80
    return-void
.end method
