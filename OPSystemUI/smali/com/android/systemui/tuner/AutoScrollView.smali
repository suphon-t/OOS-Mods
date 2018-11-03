.class public Lcom/android/systemui/tuner/AutoScrollView;
.super Landroid/widget/ScrollView;
.source "AutoScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 32
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 35
    .local v0, "y":I
    invoke-virtual {p0}, Lcom/android/systemui/tuner/AutoScrollView;->getHeight()I

    move-result v2

    .line 36
    .local v2, "height":I
    int-to-float v3, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 37
    .local v3, "scrollPadding":I
    if-ge v0, v3, :cond_1

    .line 38
    sub-int v4, v0, v3

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/tuner/AutoScrollView;->scrollBy(II)V

    goto :goto_0

    .line 39
    :cond_1
    sub-int v4, v2, v3

    if-le v0, v4, :cond_2

    .line 40
    sub-int v4, v0, v2

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/tuner/AutoScrollView;->scrollBy(II)V

    .line 44
    .end local v0    # "y":I
    .end local v2    # "height":I
    .end local v3    # "scrollPadding":I
    :cond_2
    :goto_0
    return v1
.end method
