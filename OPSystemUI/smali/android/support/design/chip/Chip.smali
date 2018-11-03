.class public Landroid/support/design/chip/Chip;
.super Landroid/support/v7/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Landroid/support/design/chip/ChipDrawable$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/Chip$ChipTouchHelper;
    }
.end annotation


# static fields
.field private static final SELECTED_STATE:[I


# instance fields
.field private chipDrawable:Landroid/support/design/chip/ChipDrawable;

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private focusedVirtualView:I

.field private onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private final touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/chip/Chip;->SELECTED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 126
    sget v0, Landroid/support/design/chip/R$attr;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    .line 132
    sget v0, Landroid/support/design/chip/R$style;->Widget_MaterialComponents_Chip_Action:I

    .line 133
    invoke-static {p1, p2, p3, v0}, Landroid/support/design/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;

    move-result-object v0

    .line 135
    .local v0, "drawable":Landroid/support/design/chip/ChipDrawable;
    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->setChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 137
    new-instance v1, Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-direct {v1, p0, p0}, Landroid/support/design/chip/Chip$ChipTouchHelper;-><init>(Landroid/support/design/chip/Chip;Landroid/support/design/chip/Chip;)V

    iput-object v1, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    .line 138
    iget-object v1, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 139
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 141
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->initOutlineProvider()V

    .line 142
    iget-boolean v1, p0, Landroid/support/design/chip/Chip;->deferredCheckedValue:Z

    invoke-virtual {p0, v1}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/chip/Chip;)Landroid/support/design/chip/ChipDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/chip/Chip;

    .line 97
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/chip/Chip;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/design/chip/Chip;

    .line 97
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->hasCloseIcon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/chip/Chip;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/chip/Chip;

    .line 97
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/chip/Chip;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/chip/Chip;

    .line 97
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private applyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 0
    .param p1, "chipDrawable"    # Landroid/support/design/chip/ChipDrawable;

    .line 202
    invoke-virtual {p1, p0}, Landroid/support/design/chip/ChipDrawable;->setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V

    .line 203
    return-void
.end method

.method private createCloseIconDrawableState()[I
    .locals 4

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    add-int/lit8 v0, v0, 0x1

    .line 493
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eqz v1, :cond_1

    .line 494
    add-int/lit8 v0, v0, 0x1

    .line 496
    :cond_1
    iget-boolean v1, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eqz v1, :cond_2

    .line 497
    add-int/lit8 v0, v0, 0x1

    .line 499
    :cond_2
    iget-boolean v1, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v1, :cond_3

    .line 500
    add-int/lit8 v0, v0, 0x1

    .line 502
    :cond_3
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 503
    add-int/lit8 v0, v0, 0x1

    .line 506
    :cond_4
    new-array v1, v0, [I

    .line 507
    .local v1, "stateSet":[I
    const/4 v2, 0x0

    .line 509
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 510
    const v3, 0x101009e

    aput v3, v1, v2

    .line 511
    add-int/lit8 v2, v2, 0x1

    .line 513
    :cond_5
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eqz v3, :cond_6

    .line 514
    const v3, 0x101009c

    aput v3, v1, v2

    .line 515
    add-int/lit8 v2, v2, 0x1

    .line 517
    :cond_6
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eqz v3, :cond_7

    .line 518
    const v3, 0x1010367

    aput v3, v1, v2

    .line 519
    add-int/lit8 v2, v2, 0x1

    .line 521
    :cond_7
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v3, :cond_8

    .line 522
    const v3, 0x10100a7

    aput v3, v1, v2

    .line 523
    add-int/lit8 v2, v2, 0x1

    .line 525
    :cond_8
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 526
    const v3, 0x10100a1

    aput v3, v1, v2

    .line 527
    add-int/lit8 v2, v2, 0x1

    .line 529
    :cond_9
    return-object v1
.end method

.method private ensureFocus()V
    .locals 2

    .line 426
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 427
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 429
    :cond_0
    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 2

    .line 537
    iget-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 539
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    iget-object v1, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 544
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 6

    .line 548
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 549
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 550
    iget-object v1, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    return-object v1
.end method

.method private hasCloseIcon()Z
    .locals 1

    .line 533
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initOutlineProvider()V
    .locals 2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 147
    new-instance v0, Landroid/support/design/chip/Chip$1;

    invoke-direct {v0, p0}, Landroid/support/design/chip/Chip$1;-><init>(Landroid/support/design/chip/Chip;)V

    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 160
    :cond_0
    return-void
.end method

.method private moveFocus(Z)Z
    .locals 3
    .param p1, "positive"    # Z

    .line 409
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->ensureFocus()V

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "focusChanged":Z
    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 412
    iget v2, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-ne v2, v1, :cond_1

    .line 413
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 414
    const/4 v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    iget v2, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v2, :cond_1

    .line 418
    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 419
    const/4 v0, 0x1

    .line 422
    :cond_1
    :goto_0
    return v0
.end method

.method private setCloseIconFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .line 467
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eq v0, p1, :cond_0

    .line 468
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    .line 469
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 471
    :cond_0
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .locals 1
    .param p1, "hovered"    # Z

    .line 460
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eq v0, p1, :cond_0

    .line 461
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    .line 462
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 464
    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .line 453
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eq v0, p1, :cond_0

    .line 454
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    .line 455
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 457
    :cond_0
    return-void
.end method

.method private setFocusedVirtualView(I)V
    .locals 1
    .param p1, "virtualView"    # I

    .line 441
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-eq v0, p1, :cond_1

    .line 442
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v0, :cond_0

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconFocused(Z)V

    .line 445
    :cond_0
    iput p1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    .line 446
    if-nez p1, :cond_1

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconFocused(Z)V

    .line 450
    :cond_1
    return-void
.end method

.method private unapplyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 1
    .param p1, "chipDrawable"    # Landroid/support/design/chip/ChipDrawable;

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/chip/ChipDrawable;->setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 330
    iget-object v0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/Chip$ChipTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 475
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->isCloseIconStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0}, Landroid/support/design/chip/Chip;->createCloseIconDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v0

    .line 483
    :cond_0
    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 486
    :cond_1
    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 433
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 438
    :goto_0
    return-void
.end method

.method public onChipDrawableSizeChange()V
    .locals 2

    .line 216
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->requestLayout()V

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidateOutline()V

    .line 220
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 207
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 208
    .local v0, "state":[I
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Landroid/support/design/chip/Chip;->SELECTED_STATE:[I

    invoke-static {v0, v1}, Landroid/support/design/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 211
    :cond_0
    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 335
    if-eqz p1, :cond_0

    .line 337
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0

    .line 339
    :cond_0
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 341
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 343
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 344
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 315
    .local v0, "action":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setCloseIconHovered(Z)V

    .line 321
    goto :goto_0

    .line 317
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setCloseIconHovered(Z)V

    .line 318
    nop

    .line 325
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "focusChanged":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 359
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 360
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->moveFocus(Z)Z

    move-result v0

    goto :goto_1

    .line 354
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 355
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->moveFocus(Z)Z

    move-result v0

    goto :goto_1

    .line 365
    :cond_0
    :pswitch_2
    iget v1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    packed-switch v1, :pswitch_data_1

    .line 374
    goto :goto_1

    .line 370
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    .line 371
    return v3

    .line 367
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performClick()Z

    .line 368
    return v3

    .line 378
    :cond_1
    const/4 v1, 0x0

    .line 379
    .local v1, "focusChangeDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    const/4 v1, 0x2

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    const/4 v1, 0x1

    .line 384
    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    .line 385
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 387
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, p0

    .line 389
    .local v4, "nextFocus":Landroid/view/View;
    :cond_4
    invoke-virtual {v4, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 390
    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v2, :cond_4

    .line 391
    :cond_5
    if-eqz v4, :cond_6

    .line 392
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 393
    return v3

    .line 395
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v4    # "nextFocus":Landroid/view/View;
    :cond_6
    nop

    .line 400
    .end local v1    # "focusChangeDirection":I
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 401
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 402
    return v3

    .line 404
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 556
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    .line 559
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 281
    .local v1, "action":I
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    .line 282
    .local v2, "eventInCloseIcon":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 290
    :pswitch_0
    iget-boolean v5, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v5, :cond_2

    .line 291
    if-nez v2, :cond_0

    .line 292
    invoke-direct {p0, v4}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 294
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 298
    :pswitch_1
    iget-boolean v5, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v5, :cond_1

    .line 299
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    .line 300
    const/4 v0, 0x1

    .line 304
    :cond_1
    :pswitch_2
    invoke-direct {p0, v4}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 305
    goto :goto_0

    .line 284
    :pswitch_3
    if-eqz v2, :cond_2

    .line 285
    invoke-direct {p0, v3}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 286
    const/4 v0, 0x1

    .line 309
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    nop

    :cond_4
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performCloseIconClick()Z
    .locals 4

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->playSoundEffect(I)V

    .line 264
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 266
    const/4 v1, 0x1

    .local v1, "result":Z
    goto :goto_0

    .line 268
    .end local v1    # "result":Z
    :cond_0
    move v1, v0

    .line 271
    .restart local v1    # "result":Z
    :goto_0
    iget-object v2, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/support/design/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)Z

    .line 273
    return v1
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .line 224
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-nez v0, :cond_0

    .line 226
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->deferredCheckedValue:Z

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v0

    .line 229
    .local v0, "wasChecked":Z
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 231
    if-eq v0, p1, :cond_1

    .line 232
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v1, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 237
    .end local v0    # "wasChecked":Z
    :cond_1
    :goto_0
    return-void
.end method

.method public setChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/support/design/chip/ChipDrawable;

    .line 173
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eq v0, p1, :cond_1

    .line 174
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->unapplyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 175
    iput-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 176
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->applyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 178
    sget-boolean v0, Landroid/support/design/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 182
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 185
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 187
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 188
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 190
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_1
    :goto_0
    return-void
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 244
    iput-object p1, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 245
    return-void
.end method
