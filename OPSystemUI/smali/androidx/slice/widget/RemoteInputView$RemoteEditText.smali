.class public Landroidx/slice/widget/RemoteInputView$RemoteEditText;
.super Landroid/widget/EditText;
.source "RemoteInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/RemoteInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteEditText"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

.field mShowImeOnInputConnection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 306
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 308
    return-void
.end method

.method static synthetic access$202(Landroidx/slice/widget/RemoteInputView$RemoteEditText;Landroidx/slice/widget/RemoteInputView;)Landroidx/slice/widget/RemoteInputView;
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/RemoteInputView$RemoteEditText;
    .param p1, "x1"    # Landroidx/slice/widget/RemoteInputView;

    .line 299
    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

    return-object p1
.end method

.method private defocusIfNeeded(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 311
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->isTemporarilyDetachedCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 320
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

    invoke-static {v1}, Landroidx/slice/widget/RemoteInputView;->access$300(Landroidx/slice/widget/RemoteInputView;)V

    .line 323
    :cond_1
    iput-boolean v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 325
    :cond_2
    return-void

    .line 312
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->isTemporarilyDetachedCompat()Z

    .line 316
    return-void
.end method

.method private isTemporarilyDetachedCompat()Z
    .locals 2

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 329
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->isTemporarilyDetached()Z

    move-result v0

    return v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 353
    invoke-super {p0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 354
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getScrollY()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 355
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 356
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 402
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->clearComposingText()V

    .line 403
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setSelection(I)V

    .line 405
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 378
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 380
    .local v0, "inputConnection":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 383
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 387
    new-instance v2, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;

    invoke-direct {v2, p0, v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;-><init>(Landroidx/slice/widget/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v2}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->post(Ljava/lang/Runnable;)Z

    .line 397
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 345
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 346
    if-nez p1, :cond_0

    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 349
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 360
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 362
    const/4 v0, 0x1

    return v0

    .line 364
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 369
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 370
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 371
    return v0

    .line 373
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 336
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 338
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 341
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .line 428
    nop

    .line 429
    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 428
    invoke-super {p0, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 430
    return-void
.end method

.method setInnerFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .line 408
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setFocusableInTouchMode(Z)V

    .line 409
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setFocusable(Z)V

    .line 410
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setCursorVisible(Z)V

    .line 412
    if-eqz p1, :cond_0

    .line 413
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->requestFocus()Z

    .line 414
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 416
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 419
    :goto_0
    return-void
.end method
