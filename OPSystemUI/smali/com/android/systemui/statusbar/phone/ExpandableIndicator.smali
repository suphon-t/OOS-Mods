.class public Lcom/android/systemui/statusbar/phone/ExpandableIndicator;
.super Landroid/widget/ImageView;
.source "ExpandableIndicator.java"


# instance fields
.field private mExpanded:Z

.field private mIsDefaultDirection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    .line 30
    return-void
.end method

.method private getContentDescription(Z)Ljava/lang/String;
    .locals 2
    .param p1, "expanded"    # Z

    .line 69
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mContext:Landroid/content/Context;

    const v1, 0x7f1100b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0
.end method

.method private getDrawableResourceId(Z)I
    .locals 3
    .param p1, "expanded"    # Z

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    const v1, 0x7f0803e5

    const v2, 0x7f0803e2

    if-eqz v0, :cond_1

    .line 60
    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 61
    :cond_0
    nop

    .line 60
    :goto_0
    return v1

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    nop

    .line 63
    move v1, v2

    :goto_1
    return v1
.end method

.method private updateIndicatorDrawable()V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getDrawableResourceId(Z)I

    move-result v0

    .line 75
    .local v0, "res":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setImageResource(I)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->updateIndicatorDrawable()V

    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 41
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getDrawableResourceId(Z)I

    move-result v0

    .line 44
    .local v0, "res":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 46
    .local v1, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 48
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
