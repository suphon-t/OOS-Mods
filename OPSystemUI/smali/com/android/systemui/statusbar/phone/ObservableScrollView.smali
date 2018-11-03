.class public Lcom/android/systemui/statusbar/phone/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
    }
.end annotation


# instance fields
.field private mBlockFlinging:Z

.field private mHandlingTouchEvent:Z

.field private mLastOverscrollAmount:I

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

.field private mTouchCancelled:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 41
    return-void
.end method

.method private getMaxScrollY()I
    .locals 6

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, "child":Landroid/view/View;
    nop

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 63
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v0, :cond_0

    .line 93
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 94
    return v2

    .line 96
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    goto :goto_0

    .line 97
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    if-eqz v0, :cond_2

    .line 98
    return v2

    .line 99
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v0, :cond_3

    .line 100
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 101
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 102
    invoke-super {p0, v0}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 104
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 105
    return v2

    .line 107
    .end local v0    # "cancel":Landroid/view/MotionEvent;
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    if-nez v0, :cond_0

    .line 134
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 85
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 86
    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;->onOverscrolled(FFI)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;->onScrollChanged()V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 75
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 76
    return v0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 2
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 122
    add-int v0, p4, p2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    .line 123
    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method
