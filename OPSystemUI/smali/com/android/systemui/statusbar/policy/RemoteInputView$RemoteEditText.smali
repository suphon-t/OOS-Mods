.class public Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
.super Landroid/widget/EditText;
.source "RemoteInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RemoteInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteEditText"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field mShowImeOnInputConnection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 494
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 496
    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 487
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
    .param p1, "x1"    # Z

    .line 487
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    return-void
.end method

.method private defocusIfNeeded(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$500(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChangingPosition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$500(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    .line 508
    :cond_2
    return-void

    .line 510
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v1, :cond_4

    .line 513
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$600(Lcom/android/systemui/statusbar/policy/RemoteInputView;Z)V

    .line 515
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 517
    :cond_5
    return-void
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 538
    invoke-super {p0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 539
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 540
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mScrollY:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBottom:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 541
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$700(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 582
    .local v0, "flyingOut":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/EditText;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 610
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->clearComposingText()V

    .line 611
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setSelection(I)V

    .line 613
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 587
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 589
    .local v0, "inputConnection":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 591
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 595
    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->post(Ljava/lang/Runnable;)Z

    .line 605
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 530
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 531
    if-nez p1, :cond_0

    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 534
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 550
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 552
    const/4 v0, 0x1

    return v0

    .line 554
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 569
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 570
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 571
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 573
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 559
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 560
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 561
    return v0

    .line 563
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 521
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 526
    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestScrollTo()Z

    move-result v0

    return v0
.end method

.method setInnerFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setFocusableInTouchMode(Z)V

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setFocusable(Z)V

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setCursorVisible(Z)V

    .line 620
    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->requestFocus()Z

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 624
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 627
    :goto_0
    return-void
.end method
