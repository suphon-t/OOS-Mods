.class public Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;
.super Landroid/widget/RelativeLayout;
.source "KeyboardShortcutAppItemLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 47
    const v0, 0x7f0a01c6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .local v0, "shortcutIcon":Landroid/widget/ImageView;
    const v1, 0x7f0a01c8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, "shortcutKeyword":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 50
    .local v2, "totalMeasuredWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutAppItemLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 51
    .local v3, "totalPadding":I
    sub-int v4, v2, v3

    .line 52
    .local v4, "availableWidth":I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    .line 55
    :cond_0
    int-to-double v5, v4

    const-wide v7, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v5, v7

    .line 56
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    .line 55
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 58
    .end local v0    # "shortcutIcon":Landroid/widget/ImageView;
    .end local v1    # "shortcutKeyword":Landroid/widget/TextView;
    .end local v2    # "totalMeasuredWidth":I
    .end local v3    # "totalPadding":I
    .end local v4    # "availableWidth":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 59
    return-void
.end method
