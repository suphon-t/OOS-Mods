.class public Lcom/android/systemui/AutoReinflateContainer;
.super Landroid/widget/FrameLayout;
.source "AutoReinflateContainer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/AutoReinflateContainer$InflateListener;
    }
.end annotation


# instance fields
.field private final mInflateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/AutoReinflateContainer$InflateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/android/systemui/R$styleable;->AutoReinflateContainer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 52
    return-void

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AutoReinflateContainer must contain a layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public inflateLayout()V
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->removeAllViews()V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayoutImpl()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 74
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/AutoReinflateContainer$InflateListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/AutoReinflateContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/AutoReinflateContainer$InflateListener;->onInflated(Landroid/view/View;)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected inflateLayoutImpl()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 57
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 87
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 97
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 92
    return-void
.end method
