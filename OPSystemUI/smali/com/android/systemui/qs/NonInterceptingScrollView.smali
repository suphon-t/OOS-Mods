.class public Lcom/android/systemui/qs/NonInterceptingScrollView;
.super Landroid/widget/ScrollView;
.source "NonInterceptingScrollView.java"


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
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 34
    .local v0, "action":I
    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 41
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
