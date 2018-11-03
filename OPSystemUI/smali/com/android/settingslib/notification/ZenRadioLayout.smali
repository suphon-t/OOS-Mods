.class public Lcom/android/settingslib/notification/ZenRadioLayout;
.super Landroid/widget/LinearLayout;
.source "ZenRadioLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private findFirstClickable(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 72
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 73
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settingslib/notification/ZenRadioLayout;->findFirstClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    return-object v2

    .line 74
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findLastClickable(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 84
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 85
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settingslib/notification/ZenRadioLayout;->findLastClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    return-object v2

    .line 86
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 91
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenRadioLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .local v1, "radioGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/ZenRadioLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 44
    .local v2, "radioContent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 45
    .local v3, "size":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 48
    const/4 v4, 0x0

    .line 49
    .local v4, "hasChanges":Z
    const/4 v5, 0x0

    .line 50
    .local v5, "lastView":Landroid/view/View;
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 52
    .local v6, "radio":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 53
    .local v7, "content":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 56
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/settingslib/notification/ZenRadioLayout;->findFirstClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 57
    .local v8, "contentClick":Landroid/view/View;
    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 58
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settingslib/notification/ZenRadioLayout;->findLastClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    .end local v6    # "radio":Landroid/view/View;
    .end local v7    # "content":Landroid/view/View;
    .end local v8    # "contentClick":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_3
    if-eqz v4, :cond_4

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 68
    :cond_4
    return-void

    .line 46
    .end local v4    # "hasChanges":Z
    .end local v5    # "lastView":Landroid/view/View;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Expected matching children"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
