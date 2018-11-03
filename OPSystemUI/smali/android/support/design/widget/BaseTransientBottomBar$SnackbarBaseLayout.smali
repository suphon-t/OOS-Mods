.class Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private onLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 618
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 621
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 622
    sget-object v0, Landroid/support/design/widget/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 623
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/widget/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    sget v1, Landroid/support/design/widget/R$styleable;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 624
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 627
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 629
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    .line 630
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 642
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 643
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 647
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 648
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 652
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 653
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 656
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 634
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 635
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 638
    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 665
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 666
    return-void
.end method

.method setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "onLayoutChangeListener"    # Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 660
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 661
    return-void
.end method
