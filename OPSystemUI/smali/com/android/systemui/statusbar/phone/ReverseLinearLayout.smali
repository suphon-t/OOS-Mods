.class public Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ReverseLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;,
        Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;
    }
.end annotation


# instance fields
.field private mIsAlternativeOrder:Z

.field private mIsLayoutReverse:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewGroup;
    .param p1, "x1"    # Z

    .line 32
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private static reverseGroup(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "isLayoutReverse"    # Z

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 164
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 165
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    .line 159
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V
    .locals 4
    .param p0, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "isLayoutReverse"    # Z

    .line 107
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;

    if-eqz v0, :cond_0

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;->reverse(Z)V

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 112
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    :cond_1
    if-nez p0, :cond_2

    .line 116
    return-void

    .line 118
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    .local v0, "width":I
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    return-void
.end method

.method private updateOrder()V
    .locals 6

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 87
    .local v0, "isLayoutRtl":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsAlternativeOrder:Z

    xor-int/2addr v2, v0

    .line 89
    .local v2, "isLayoutReverse":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eq v3, v2, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->getChildCount()I

    move-result v3

    .line 92
    .local v3, "childCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v4, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->removeAllViews()V

    .line 97
    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 98
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 99
    .local v5, "child":Landroid/view/View;
    invoke-super {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    .end local v5    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 101
    .end local v1    # "i":I
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    .line 103
    .end local v3    # "childCount":I
    .end local v4    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    .line 48
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    .line 74
    return-void
.end method

.method public setAlternativeOrder(Z)V
    .locals 0
    .param p1, "alternative"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsAlternativeOrder:Z

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    .line 79
    return-void
.end method
