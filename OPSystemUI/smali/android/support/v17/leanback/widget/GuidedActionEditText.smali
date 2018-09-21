.class public Landroid/support/v17/leanback/widget/GuidedActionEditText;
.super Landroid/widget/EditText;
.source "GuidedActionEditText.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport;
.implements Landroid/support/v17/leanback/widget/ImeKeyMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionEditText$NoPaddingDrawable;
    }
.end annotation


# instance fields
.field private mAutofillListener:Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;

.field private mKeyListener:Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;

.field private final mNoPaddingDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSavedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mSavedBackground:Landroid/graphics/drawable/Drawable;

    .line 83
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionEditText$NoPaddingDrawable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionEditText$NoPaddingDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mNoPaddingDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mNoPaddingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 1
    .param p1, "values"    # Landroid/view/autofill/AutofillValue;

    .line 139
    invoke-super {p0, p1}, Landroid/widget/EditText;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 140
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mAutofillListener:Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mAutofillListener:Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;->onAutofill(Landroid/view/View;)V

    .line 143
    :cond_0
    return-void
.end method

.method public getAutofillType()I
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mSavedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mNoPaddingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :goto_0
    if-nez p1, :cond_1

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionEditText;->setFocusable(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 106
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 107
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-class v0, Landroid/widget/TextView;

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "result":Z
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mKeyListener:Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionEditText;->mKeyListener:Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;

    invoke-interface {v1, p0, p1, p2}, Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;->onKeyPreIme(Landroid/widget/EditText;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 98
    :cond_0
    if-nez v0, :cond_1

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 101
    :cond_1
    return v0
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .line 151
    nop

    .line 152
    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 151
    invoke-super {p0, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 153
    return-void
.end method
